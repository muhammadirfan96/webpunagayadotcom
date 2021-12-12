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
$_SESSION["namaTable"] = "srcm";
$_SESSION["link"] = "dbsrcm";

$srcm = query("SELECT * FROM srcm");

?>

<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="../img/tittle.png">
	<title>Database SR</title>
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
					<h2 class="py-3" style="margin-bottom: 0px;">Database SR</h2>
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
						<!-- <button type="submit" name="cari" id="tombol-cari">cari</button> -->
					</form>
					<i style="font-size: 12px; color: red;">* Pencarian berdasarkan kolom diinput oleh, tanggal, nomor SR atau area</i>
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
						<div class="table-responsive">
							<table class="table table-hover">
								<thead class="table-success text-center text-capitalize align-middle">
									<tr>
										<th scope="col">no</th>
										<th scope="col">aksi</th>
										<th scope="col">ket</th>
										<th scope="col">diinput oleh</th>
										<th scope="col">nomor SR</th>
										<th scope="col">tanggal</th>
										<th scope="col">unit</th>
										<th scope="col">area</th>
										<th scope="col">nama peralatan</th>
										<th scope="col">KKS</th>
										<th scope="col">uraian gangguan 1</th>
										<th scope="col">uraian gangguan 2</th>
										<th scope="col">normal operasi 1</th>
										<th scope="col">normal operasi 2</th>
										<th scope="col">gejala 1</th>
										<th scope="col">gejala 2</th>
										<th scope="col">prioritas</th>
										<th scope="col">akibat kerusakan 1</th>
										<th scope="col">akibat kerusakan 2</th>
										<th scope="col">kemungkinan dampak1</th>
										<th scope="col">kemungkinan dampak2</th>
										<th scope="col">tindakan sementara 1</th>
										<th scope="col">tindakan sementara 2</th>
										<th scope="col">tindakan sementara 3</th>
									</tr>
								</thead>

								<?php $i = 1; ?>
								<?php foreach ($srcm as $row) : ?>
									<tr>
										<th scope="row"><?= $i; ?></th>
										<td>
											<a href="../cetakSrCm.php?id=<?= $row["id"]; ?>&cetak=dbsrcm">cetak</a><br>
											<hr style="color: black; margin: 3px;">
											<a href="hapus.php?id=<?= $row["id"]; ?>" onclick="return confirm('yakin?')">hapus</a>
										</td>
										<td><?= $row["ket"]; ?></td>
										<td><?= $row["diinput_oleh"]; ?></td>
										<td><?= $row["nomorSr"] ?></td>
										<td><?= $row["tanggal"] ?></td>
										<td><?= $row["unit"]; ?></td>
										<td><?= $row["area"]; ?></td>
										<td><?= $row["namaPeralatan"]; ?></td>
										<td><?= $row["kks"]; ?></td>
										<td><?= $row["uraianGangguan1"]; ?></td>
										<td><?= $row["uraianGangguan2"]; ?></td>
										<td><?= $row["normalOperasi1"]; ?></td>
										<td><?= $row["normalOperasi2"]; ?></td>
										<td><?= $row["gejala1"]; ?></td>
										<td><?= $row["gejala2"]; ?></td>
										<td><?= $row["prioritas"]; ?></td>
										<td><?= $row["akibatKerusakan1"]; ?></td>
										<td><?= $row["akibatKerusakan2"]; ?></td>
										<td><?= $row["kemungkinanDampak1"]; ?></td>
										<td><?= $row["kemungkinanDampak2"]; ?></td>
										<td><?= $row["tindakanSementara1"]; ?></td>
										<td><?= $row["tindakanSementara2"]; ?></td>
										<td><?= $row["tindakanSementara3"]; ?></td>
									</tr>
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
	<script src="../js/ajaxsrcm.js"></script>
</body>

</html>