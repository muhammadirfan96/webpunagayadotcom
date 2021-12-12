<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}
if(!isset($_SESSION["loginAdmin"])) {
	header("Location: loginAdmin.php");
	exit;
}
require '../functions.php';

//session untuk menghapus
$_SESSION["namaTable"] = "checklist";
$_SESSION["namaTable2"] = "jawaban";
$_SESSION["namaTable3"] = "komen";
$_SESSION["link"] = "dbHasilChecklist";

$checklist = query("SELECT * FROM checklist");
$jawaban = query("SELECT * FROM jawaban");
$komen = query("SELECT * FROM komen");

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="../img/tittle.png">
    <title>database hasil checklist</title>
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
					<h2 class="py-3" style="margin-bottom: 0px;">Database Hasil Checklist</h2>
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
						<input type="text" name="keyword" size="40" autofocus="" placeholder="masukkan keyword pencarian..." autocomplete="off" id="keyword" >
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
						
						<h4 class="text-center">Database Checklist</h4>

						<div class="table-responsive mb-3">	
							<table class="table table-hover">
								<thead class="table-success text-center align-middle">
									<tr>
										<th scope="col">No</th>
										<th scope="col">Aksi</th>
										<th scope="col">Nama Peralatan</th>
										<th scope="col">Tanggal</th>
										<th scope="col">Diinput Oleh</th>
										<th scope="col">Catatan</th>
									</tr>
								</thead>
								<?php $i = 1; ?>
								<?php foreach ($checklist as $row) : ?>

								<!-- <tbody> -->
									<tr>
										<th scope="row"><?= $i; ?></th>
										<td>
											<a href="../cetakHasilChecklist.php?id=<?= $row["id"]; ?>&from=db">Cetak</a>
											<a href="hapus.php?id=<?= $row["id"];?>&tb=multi" onclick="return confirm('yakin?')">hapus</a>
										</td>
										<td><?=$row["namaPeralatan"]; ?></td>
										<td><?=$row["tanggal"]; ?></td>
										<td><?=$row["diinput_oleh"]; ?></td>
										<td><?=$row["catatan"]; ?></td>
									</tr>
								<!-- </tbody> -->
								<?php $i++; ?>
								<?php endforeach; ?>
							</table>
						</div>

						<h4 class="text-center">Database Jawaban</h4>

						<div class="table-responsive mb-3">

							<table class="table table-hover">
								<thead class="table-danger text-center align-middle">
									<tr>
										<th scope="col">No</th>
										<th scope="col">Nama Peralatan</th>
										<?php for ($i=1; $i <= 29; $i++) : ?>
											<th scope="col">Jawaban <?= $i ?></th>
										<?php endfor; ?>
									</tr>
								</thead>	
								<!-- <tbody> -->
									<?php $i = 1; ?>
									<?php foreach ($jawaban as $row) : ?>
									<tr>
										<th scope="row"><?= $i; ?></th>
										<td><?= $row["namaPeralatan"] ?></td>
										<?php for ($j=1; $j <= 29; $j++) : ?>
											<td><?= $row["jawaban$j"] ?></td>
										<?php endfor; ?>
									</tr>
								<!-- </tbody> -->	
								<?php $i++; ?>
								<?php endforeach; ?>
							</table>
						</div>

						<h4 class="text-center">Database Komen</h4>
						<div class="table-responsive mb-3">
							<table class="table table-hover">
								<thead class="table-primary text-center align-middle">
									<tr>
										<th scope="col">No</th>
										<th scope="col">Nama Peralatan</th>
										<?php for ($i=1; $i <= 29; $i++) : ?>
											<th scope="col">Komen <?= $i ?></th>
										<?php endfor; ?>
									</tr>
								</thead>
								<!-- <tbody> -->
									<?php $i = 1; ?>
									<?php foreach ($komen as $row) : ?>
									<tr>
										<th scope="row"><?= $i; ?></th>
										<td><?= $row["namaPeralatan"] ?></td>
										<?php for ($j=1; $j <= 29; $j++) : ?>
											<td><?= $row["komen$j"] ?></td>
										<?php endfor; ?>
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
	<script src="../js/ajaxchecklist.js"></script>

</body>
</html>