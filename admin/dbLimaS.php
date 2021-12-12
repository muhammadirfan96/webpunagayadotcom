<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}
if (!isset($_SESSION["loginAdmin"])) {
	header("Location: loginAdmin.php");
	exit;
}
require '../functions.php';

//session untuk menghapus
$_SESSION["namaTable"] = "limas";
$_SESSION["namaTable2"] = "nilailimas";
unset($_SESSION["namaTable3"]);
$_SESSION["link"] = "dbLimaS";

$limaS = query("SELECT * FROM limas");
$nilaiLimaS = query("SELECT * FROM nilailimas");

?>

<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="../img/tittle.png">
	<title>database hasil 5s</title>
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
	<script src="../bootstrap/js/jquery-3.2.1.js"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="../css/dbsrcm.css">
</head>

<body>
	<div class="jumbotron">
		<div class="container-fluid-md">
			<div class="row text-center text-light">
				<div class="col ">
					<h2 class="py-3" style="margin-bottom: 0px;">Database Hasil 5S</h2>
				</div>
			</div>
			<div class="row mb-3">
				<div class="col">
					<p class="py-2" style="background-color: #04dffc; text-indent: 5%;"><a class="text-decoration-none text-dark" href="admin.php"><i class="bi-house-fill fs-4 "> </i>Admin</a></p>
				</div>
			</div>
		</div>

		<div class="container mb-3">
			<div class="row">
				<div class="col">
					<form action="" method="post">
						<input type="text" name="keyword" size="40" autofocus="" placeholder="masukkan keyword pencarian..." autocomplete="off" id="keyword">
					</form>
					<i style="font-size: 12px; color: red;">* Pencarian berdasarkan kolom diinput oleh, tanggal atau nama peralatan</i>
					<br><br>
					<div class="d-grid gap-2 d-md-block">
						<button class="btn btn-primary show" type="button">tampilkan</button>
						<button class="btn btn-success hide" type="button">sembunyikan</button>
					</div>
				</div>
			</div>
		</div>

		<div class="container mb-3">
			<div class="row">
				<div class="col">

					<div id="container" class="tabel">

						<h4 class="text-center">Database 5S</h4>

						<div class="table-responsive mb-3">
							<table class="table table-hover">
								<thead class="table-success text-center align-middle">
									<tr>
										<th scope="col">No</th>
										<th scope="col">Aksi</th>
										<th scope="col">Nama Peralatan</th>
										<th scope="col">Tanggal</th>
										<th scope="col">Diinput Oleh</th>
										<th scope="col">Area</th>
										<th scope="col">Saran / Kendala</th>
									</tr>
								</thead>
								<?php $i = 1; ?>
								<?php foreach ($limaS as $row) : ?>

									<!-- <tbody> -->
									<tr>
										<th scope="row"><?= $i; ?></th>
										<td>
											<a href="../cetakLimaS.php?id=<?= $row["id"]; ?>&from=db5s">Cetak</a>
											<a href="hapus.php?id=<?= $row["id"]; ?>&tb=multi" onclick="return confirm('yakin?')">hapus</a>
										</td>
										<td><?= $row["namaPeralatan"]; ?></td>
										<td><?= $row["tanggal"]; ?></td>
										<td><?= $row["diinput_oleh"]; ?></td>
										<td><?= $row["area"]; ?></td>
										<td><?= $row["saran"]; ?></td>
									</tr>
									<!-- </tbody> -->
									<?php $i++; ?>
								<?php endforeach; ?>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../js/tampilkan.js"></script>
	<script src="../js/ajaxLimaS.js"></script>

</body>

</html>