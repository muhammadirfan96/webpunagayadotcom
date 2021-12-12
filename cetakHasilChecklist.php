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
	$checklist = query("SELECT * FROM checklist ORDER BY id DESC LIMIT 1");
	$jawaban = query("SELECT * FROM jawaban ORDER BY id DESC LIMIT 1");
	$komen = query("SELECT * FROM komen ORDER BY id DESC LIMIT 1");
} elseif ($_GET["from"] == "db") {
	$id = $_GET["id"];
	$checklist = query("SELECT * FROM checklist WHERE id = '$id'");
	$jawaban = query("SELECT * FROM jawaban WHERE id = '$id'");
	$komen = query("SELECT * FROM komen WHERE id = '$id'");
}

// ambil data pegawai
$diinput_oleh = $checklist[0]["diinput_oleh"];
//$pegawai = query("SELECT * FROM users WHERE namaUser = '$diinput_oleh' ")[0];
$pegawai = user($diinput_oleh);

if(empty($pegawai["ttdAtasan"])) {
	$ttdAtasan = '<br><br><br><br>';
} else {
	$ttdAtasan = '<img src="imgUpload/'.$pegawai["ttdAtasan"].'" width="70px" height="70px">';
}

if(empty($pegawai["ttdUser"])) {
	$ttdUser = '<br><br><br><br>';
} else {
	$ttdUser = '<img src="imgUpload/'.$pegawai["ttdUser"].'" width="70px" height="70px">';
}

$namaPeralatan = $checklist[0]["namaPeralatan"];
$pertanyaan = query("SELECT pertanyaan FROM daftar_pertanyaan WHERE untuk = '$namaPeralatan'");

require 'nomorFormulir.php';

$jumlahBaris = query ("SELECT COUNT(untuk) FROM daftar_pertanyaan WHERE untuk = '$namaPeralatan' ");

$jumlahBarisUntuk = $jumlahBaris[0]["COUNT(untuk)"];


$jwb = [];
for ($i=1; $i <= $jumlahBarisUntuk ; $i++) {
	
	if ($jawaban[0]["jawaban$i"] == "ya") {

		$baris = ["&#9745","&#9744"];
		array_push($jwb, $baris);

	}elseif ($jawaban[0]["jawaban$i"] == "tidak") {

		$baris = ["&#9744","&#9745"];
		array_push($jwb, $baris);
	}

}

$header = '<div class="header"><table border="1" cellpadding="5" cellspacing="0">
		<tr>
			<td rowspan="4"><img src="img/upk.jpg" width="150px"></td>
			<th class="asset">enterprise asset management</th>
			<td class="right">No. Formulir</td>
			<td class="left">: '.$nomorFormulir.'</td>
		</tr>

		<tr>
			<th rowspan="3">form checklist '.$checklist[0]["namaPeralatan"].'</th>
			<td class="right">Revisi</td>
			<td class="left">: '.$revisi.'</td>
		</tr>

		<tr>
			<td class="right">Tanggal</td>
			<td class="left">: '.$tanggal.'</td>
		</tr>

		<tr>
			<td class="right">Halaman</td>
			<td class="left">: '.'{PAGENO}'.'</td>
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
									<p>Supervisor Operasi Shift '.$pegawai["shift"].'</p>
									<div>'.
										$ttdAtasan
									.'</div>
									<p>' . $pegawai["namaAtasan"] . '</p>
									<hr style="width:60%; color:black; margin:1px;">
									<p>' . $pegawai["nipAtasan"] . '</p>
								</div>
							</td>
							<td class="ttd">
								<div>
									<p>Operator Shift '.$pegawai["shift"].'</p>
									<div>'.
										$ttdUser
									.'</div>
									<p>' . $pegawai["namaUser"] . ' </p>
									<hr style="width:60%; color:black; margin:1px;">
									<p>' . $pegawai["nipUser"] . '</p>
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
$mpdf->setHeader('{PAGENO}');
$mpdf->setAutoTopMargin = 'stretch';
$mpdf->SetHTMLHeader($header);
$mpdf->shrink_tables_to_fit = 1;
$mpdf->WriteHTML($html);
$mpdf->Output($checklist[0]["id"] . ' checklist ' .$checklist[0]["namaPeralatan"]. '-' .$pegawai["namaUser"].'.pdf', "D");

?>


