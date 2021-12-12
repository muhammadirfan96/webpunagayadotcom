<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}

require_once __DIR__ . '/mpdf/vendor/autoload.php';

require 'functions.php';
$mpdf = new \Mpdf\Mpdf();

if ( $_GET["from"] == "db5s") {
	$id = $_GET["id"];
	$limaS = query("SELECT * FROM limas WHERE id = '$id'");
	$nilaiLimaS = query("SELECT * FROM nilailimas WHERE id = '$id'");

} elseif ($_GET["from"] == "5s") {
	$limaS = query("SELECT * FROM limas ORDER BY id DESC LIMIT 1");
	$nilaiLimaS = query("SELECT * FROM nilailimas ORDER BY id DESC LIMIT 1");
}
$daftarHari = ['Sunday' => 'Minggu', 'Monday' => 'Senin', 'Tuesday' => 'Selasa', 'Wednesday' => 'Rabu', 'Thursday' => 'Kamis', 'Friday' => 'Jumat', 'Saturday' => 'Sabtu'];

$pertanyaan = query("SELECT pertanyaan FROM daftar_pertanyaan WHERE untuk = '5s'");

// ambil data pegawai
$diinput_oleh = $limaS[0]["diinput_oleh"];
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

$checkItem = ["Makanan", "Komponen/Peralatan", "Order/Dokumen", "Pengumuman", "Pengendalian Visual", "Garis Pembagi", "Label Rak", "Jig/Peralatan", "B3", "Akses Darurat", "Lantai", "Mesin/Peralatan", "Tempat Sampah", "Peralatan Kebersihan", "Jadwal Kebersihan", "Pengisian Logsheet/Patrol Check/Logbook", "Berpakaian", "Kondisi Lingkungan", "Visual Display", "Safety Patrol", "Peraturan Perusahaan", "Berpakaian", "Hub. Antar Manusia", "Pemisahan Sampah", "Penilaian Umum"];

$header = '<div class="header">
	<table class="left" width="100%" border="1" cellpadding="2" cellspacing="0">
		<tr>
			<td rowspan="3"><img src="img/uikl.jpg" width="300px"></td>
			<td width="19%">No. Dokumen :</td>
			<td width="18%">FR-PT-SPG-OPS-019-011</td>
		</tr>
		<tr>
			<td>Revisi :</td>
			<td>00</td>
		</tr>
		<tr>
			<td>tanggal berlaku :</td>
			<td>2 Mei 2018</td>
		</tr>
	</table>
</div>';

$html = '<!DOCTYPE html>
<html>
<head>
    <title>Form Cheklist</title>
    <link rel="stylesheet" href="css/limaS.css">
</head>
<body>
	<br>
	<p class="center bold size12 my0">PELAKSANAAN 5S</p>

	<table border="1" cellpadding="2" cellspacing="0" >		
		<tr>
			<td class="bold biru" colspan="6">INFORMASI</td>
		</tr>
		<tr>
			<td class="bold biruMuda" colspan="2">Satuan Kerja<br><br>OPERASI</td>
			<td class="bold biruMuda besar" colspan="2">NAMA PELAKSANA<br><br>'.$pegawai["namaUser"].'</td>
			<td class="bold biruMuda">Area / Lokasi Kerja<br><br>'.$limaS[0]["area"].'</td>
			<td class="bold biruMuda" width="120px">WAKTU<br><br>'.$limaS[0]["tanggal"].'</td>
		</tr>
		<tr>
			<td class="bold biru" colspan="6">PENDAHULUAN</td>
		</tr>
		<tr>
			<td class="bold biruMuda" colspan="2">Tujuan</td>
			<td colspan="4">Menjadi kegiatan rutin operator yang membudaya, terjadwal dan termonitoring</td>
		</tr>
		<tr>
			<td class="bold biruMuda" colspan="2">Sasaran</td>
			<td colspan="4">Membersihkan debu, tetesan oli, dan membuang sampah yang ada di sekitar peralatan '.$limaS[0]["namaPeralatan"].'</td>
		</tr>
		<tr>
			<td class="bold biru" colspan="6">PENILAIAN</td>
		</tr>
		<tr>
			<td class="bold biruMuda" width="30px" text-rotate="90" rowspan="2">LEVEL</td>
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
			<td>5</td>
		</tr>
		<tr>
			<td>Belum memulai kegiatan 5S, tidak ada usaha sama sekali.</td>
			<td>Sudah memulai kegiatan 5S, tetapi ada banyak perbaikan major <i>(perbaikan perlu beberapa hari)</i></td>
			<td>Cukup baik, hanya perlu beberapa improvement minor <i>(bisa langsung saat itu memperbaiki kondisi)</i></td>
			<td>sudah baik, hnaya perlu sedikit improvement</td>
			<td>Sudah sangat baik, terus pertahankan kondisi seperti ini</td>
		</tr>
		<tr>
			<td class="bold orangeMuda" colspan="2">URAIAN</td>
			<td class="bold orangeMuda">CHECK ITEM</td>
			<td class="bold orangeMuda" colspan="2">DESKRIPSI</td>
			<td class="bold orangeMuda">NILAI 1 - 5</td>
		</tr>
		<tr>
			<td class="bold biruMuda" text-rotate="90" rowspan="5">PELAKSANAAN 5S</td>
			<td class="biruMuda">STEP 1: Seiri, Ringkasi<br>Merupakan kegiatan memilih dan membuang barang atau file yang tidak diperlukan lagi</td>
			
			<td class="orangeMuda" rowspan="5" colspan="4">

				<table width="100%" border="1" cellpadding="1" cellspacing="0">';
					for ($i=1; $i <= 25; $i++) { 
					
					$html .= '<tr>
						<td class="left white" width="127px">'.$checkItem[$i-1].'</td>
						<td class="left white">'.$pertanyaan[$i-1]["pertanyaan"].'</td>
						<td width="116px" class="white">'.$nilaiLimaS[0]["nilai$i"].'</td>
					</tr>';

					}

		$html .= '</table>

			</td>
		</tr>
		<tr>
			<td class="biruMuda">STEP 2: Seiton, Rapih<br>Merupakan kegiatan merapihkan semua barang dan file</td>
		</tr>
		<tr>
			<td class="biruMuda">STEP 3: Seiso, Resik<br>Merupakan kegiatan membersihkan tempat kerja, ruangan kerja, dan lingkungan kerja secara rutin</td>
		</tr>
		<tr>
			<td class="biruMuda">STEP 4: Seiketsu, Rawat<br>Merupakan kegiatan perawatan atau maintenance terhadap kegiatan Seiri, Seiton, dan Seiso</td>
		</tr>
		<tr>
			<td class="biruMuda">STEP 5: Shitsuke, Rajin<br>Merupakan suatu kebiasaan dan pemeliharaan program 5S yang sudah berjalan</td>
		</tr>
		<tr>
			<td class="bold biruMuda" text-rotate="90" rowspan="2">DOKUMENTASI</td>
			<td class="bold orangeMuda" colspan="2">KONDISI SEBELUM</td>
			<td class="bold orangeMuda" colspan="3">KONDISI SETELAH</td>
		</tr>
		<tr>
			<td colspan="2"><img src="imgUpload/'.$limaS[0]["fotoSebelum"].' " width="120px" max-height="90px"></td>
			<td colspan="3"><img src="imgUpload/'.$limaS[0]["fotoSetelah"].' " width="140px" max-height="90px"></td>
		</tr>
		<tr>
			<td class="bold biruMuda" text-rotate="90">CATATAN</td>
			<td class="left" colspan="5">'.$limaS[0]["saran"].'</td>
		</tr>			
	</table>
	<table class="size12" width="100%" border="0" cellpadding="10" cellspacing="0">
		<tr>
			<td class="left" colspan="2">Jeneponto, '. date('d-m-Y',strtotime($limaS[0]["tanggal"])) . '</td>
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
</body>
</html>';

// $mpdf->setAutoTopMargin = 'stretch';
$mpdf->SetHTMLHeader($header);
$mpdf->shrink_tables_to_fit = 1;
$mpdf->WriteHTML($html);
$mpdf->Output($limaS[0]["id"].'.5S '.$limaS[0]["namaPeralatan"].' '.$pegawai["namaUser"].'.pdf', "I");

?>

