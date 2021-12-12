<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}

require_once __DIR__ . '/mpdf/vendor/autoload.php';

require 'functions.php';

$mpdf = new \Mpdf\Mpdf();

if ($_GET["from"] == "user") {
	$sddata = query("SELECT * FROM sddata ORDER BY id DESC LIMIT 1");
	$sdwaktu = query("SELECT * FROM sdwaktu ORDER BY id DESC LIMIT 1");
	$sdjawaban = query("SELECT * FROM sdjawaban ORDER BY id DESC LIMIT 1");
	$sdket = query("SELECT * FROM sdket ORDER BY id DESC LIMIT 1");
	$sdgangguan = query("SELECT * FROM sdgangguan ORDER BY id DESC LIMIT 1");
} elseif ($_GET["from"] == "db") {
	$id = $_GET["id"];
	$sddata = query("SELECT * FROM sddata  WHERE id = '$id'");
	$sdwaktu = query("SELECT * FROM sdwaktu  WHERE id = '$id'");
	$sdjawaban = query("SELECT * FROM sdjawaban  WHERE id = '$id'");
	$sdket = query("SELECT * FROM sdket  WHERE id = '$id'");
	$sdgangguan = query("SELECT * FROM sdgangguan  WHERE id = '$id'");
}

// $namaPegawai = $checklist[0]["diinput_oleh"];
// $pegawai = query("SELECT * FROM users WHERE namaUser = '$namaPegawai' ");

$pertanyaan1 = query("SELECT pertanyaan FROM daftar_pertanyaan WHERE untuk = 'persiapan shutdown'");
$pertanyaan2 = query("SELECT pertanyaan FROM daftar_pertanyaan WHERE untuk = 'pelaksanaan shutdown'");

$jumlahBaris1 = query ("SELECT COUNT(untuk) FROM daftar_pertanyaan WHERE untuk = 'persiapan shutdown' ");
$jumlahBaris2 = query ("SELECT COUNT(untuk) FROM daftar_pertanyaan WHERE untuk = 'pelaksanaan shutdown' ");

$jumlahBarisUntuk = $jumlahBaris1[0]["COUNT(untuk)"];
$jumlahBarisUntuk = $jumlahBaris2[0]["COUNT(untuk)"];

$jwb = [];
for ($i=0; $i < $jumlahBarisUntuk ; $i++) {
	
	if ($sdjawaban[0]["jawaban$i"] == "ya") {

		$baris = ["&#9745","&#9744"];
		array_push($jwb, $baris);

	}elseif ($sdjawaban[0]["jawaban$i"] == "tidak") {

		$baris = ["&#9744","&#9745"];
		array_push($jwb, $baris);
	}

}

$header = '<div class="header"><table border="1" cellpadding="5" cellspacing="0">
		<tr>
			<td rowspan="4"><img src="img/upk.jpg" width="150px"></td>
			<th class="asset">enterprise asset management</th>
			<td class="right">No. Formulir</td>
			<td class="left">: FM-OPRBLR-004-001</td>
		</tr>

		<tr>
			<th rowspan="3">form checklist '.$checklist[0]["namaPeralatan"].'</th>
			<td class="right">No. Revisi</td>
			<td class="left">: 1</td>
		</tr>

		<tr>
			<td class="right">Tanggal</td>
			<td class="left">: 2 MEI 2018</td>
		</tr>

		<tr>
			<td class="right">Halaman</td>
			<td class="left">: </td>
		</tr>
	</table></div>';

$html = '<!DOCTYPE html>
<html>
<head>
    <title>Form Cheklist</title>
    <link rel="stylesheet" href="css/cetak.css">
</head>
<body>
	<div class="table">

	<table width="100%" border="1" cellpadding="5" cellspacing="0" >
		<tr>
			<th rowspan="2">No</th>
			<th rowspan="2">Pertanyaan</th>
			<th colspan="2">Jawaban</th>
			<th rowspan="2" width="25%">Komentar</th>
		</tr>
		<tr>
			<th>Yes</th>
			<th>No</th>
		</tr>';

		for ($i=1; $i <= $jumlahBarisUntuk; $i++) { 
		
		$html .= '<tr>
			<td>'.$i.'</td>
			<td>'. $pertanyaan[$i-1]["pertanyaan"] .'</td>
			<td style="font-size:30px;">'.$jwb[$i-1][0].'</td>
			<td style="font-size:30px;">'.$jwb[$i-1][1].'</td>
			<td>'.$komen[0]["komen$i"].'</td>
		</tr>';

		}

	$html .= '</table>
	</div>
	<br>
		<b>CATATAN :</b> '.$checklist[0]["catatan"].'<br><br>
		<div class="table">

		<table>
			<tr>
				<td>
					<table border="0" cellpadding="10" cellspacing="0">
						<tr>
							<td colspan="2">Jeneponto, '. $checklist[0]["tanggal"] . '</td>
						</tr>
						<tr>
							<td class="ttd">
								<div>
									<p>Supervisor Operasi Shift '.$pegawai[0]["shift"].'</p><br><br><br><br>
									<p>' . $pegawai[0]["namaAtasan"] . '</p>
									<hr style="width:60%; color:black; margin:1px;">
									<p>' . $pegawai[0]["nipAtasan"] . '</p>
								</div>
							</td>
							<td class="ttd">
								<div>
									<p>Operator Shift '.$pegawai[0]["shift"].'</p><br><br><br><br>
									<p>' . $pegawai[0]["namaUser"] . ' </p>
									<hr style="width:60%; color:black; margin:1px;">
									<p>' . $pegawai[0]["nipUser"] . '</p>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</div>
</body>
</html>';

$mpdf->setAutoTopMargin = 'stretch';
$mpdf->SetHTMLHeader($header);
$mpdf->shrink_tables_to_fit = 1;
$mpdf->WriteHTML($html);
$mpdf->Output($checklist[0]["id"] . ' checklist ' .$checklist[0]["namaPeralatan"]. '-' .$pegawai[0]["namaUser"].'.pdf', "D");

?>