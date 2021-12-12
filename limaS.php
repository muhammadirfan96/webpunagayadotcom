<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}

require 'functions.php';

// cek tombol submit sudh ditekan atau belum
if ( isset($_POST["save"]) ) {
	// cek apaka data berhasil ditambahkan atau tidak

	if (tambahLimaS($_POST) > 0 ) {
		echo("
				<script>
					alert('data 5S berhasil ditambahkan');
					document.location.href = 'cetakLimaS.php?from=5s';
				</script>

			");
	} else {
		echo("
				<script>
					alert('data 5S gagal ditambahkan');
					document.location.href = '';
				</script>				

			");
	}

}

$pertanyaan = query("SELECT pertanyaan FROM daftar_pertanyaan WHERE untuk = '5s' ");

?>

<!doctype html>
<html lang="en">
<head>	
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="img/tittle.png">
    <title>srcm</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
    <script src="bootstrap/js/jquery-3.2.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid-md">
		<div class="row text-center text-light">
			<div class="col text-capitalize">
				<h2 class="py-3" style="margin-bottom:0px;background-color:#100b70;border-bottom:3px solid #fc8b05;">buat laporan 5S</h2>
			</div>	
		</div>
		<div class="row mb-3">
			<div class="col">
				<p class="py-2 text-darken" style="background-color:#04dffc;text-indent:5%;"><i class="bi-house-fill fs-4 "></i> <a class="text-decoration-none" href="index.php" style="color:black;">Home</a></p>
			</div>
		</div>			
	</div>

	<div class="container">
		<div class="row">
			<div class="col">
				<form action="" method="post" enctype="multipart/form-data">
					
					<label class="fw-bold"><b>Nama Peralatan</b></label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1" name="namaPeralatan">
					</div>
					
					<label class="fw-bold"><b>Waktu</b></label><br>
					<div class="input-group mb-3">
						<input type="datetime-local" class="form-control" aria-label="Username" aria-describedby="basic-addon1" name="tanggal">
					</div>
					
					<label class="fw-bold"><b>Area</b></label><br>
					<div class="input-group mb-3">
						<input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1" name="area">
					</div>

					<label class="fw-bold">Keterangan:</label>
					<div class="border rounded px-3 py-3 mb-3" style="font-size: 10px;">
						<p>1 = Belum memulai kegiatan 5S, tidak ada usaha sama sekali</p>
						<p>2 = Sudah memulai kegiatan 5S, tetapi ada banyak perbaikan major <i>(perbaikan perlu beberapa hari)</i></p>
						<p>3 = Cukup baik, hanya perlu beberapa improvement minor <i>(bisa langsung saat itu memperbaiki kondisi)</i></p>
						<p>4 = sudah baik, hanya perlu sedikit improvement</p>
						<p>5 = Sudah sangat baik, terus pertahankan kondisi seperti ini</p>
					</div>

					<?php $i = 1; ?>
					<?php foreach ($pertanyaan as $row) : ?>

					<div class="mb-3 border py-3 rounded text-center">
						<label><?= $row["pertanyaan"]; ?></label><br>
						<input class="form-check-input mx-2" type="radio" name="nilai<?=$i;?>" value="1">
						<input class="form-check-input mx-2" type="radio" name="nilai<?=$i;?>" value="2">
						<input class="form-check-input mx-2" type="radio" name="nilai<?=$i;?>" value="3">
						<input class="form-check-input mx-2" type="radio" name="nilai<?=$i;?>" value="4">
						<input class="form-check-input mx-2" type="radio" name="nilai<?=$i;?>" value="5">
					</div>

					<br>
					<?php $i++; ?>
					<?php endforeach; ?>

					<label class="fw-bold"><b>Catatan</b></label><br>
					<div class="input-group mb-3">
						<textarea type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1" name="saran"></textarea>
					</div>
					
					<label class="fw-bold">Sebelum 5S</label>
					<input class="form-control mb-3" type="file" name="evidence1">
					
					<label class="fw-bold">Setelah 5S</label>
					<input class="form-control" type="file" name="evidence2">

					<div class="mb-3">
						<i style="color: red; font-size: 10px;">format file yang di dukung .jpg, .jpeg, atau .png dan Max 1 MB</i>
					</div>

					<div class="position-relative">
						<div class="position-absolute top-0 end-0">
							<button class="btn btn-success btn-sm" type="submit" name="save">Save & Download</button>
						</div>
					</div>
					<br><br><br>
				</form>					
			</div>
		</div>
	</div>
</body>
</html>