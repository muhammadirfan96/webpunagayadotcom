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
$_SESSION["namaTable"] = "users";
$_SESSION["link"] = "dbusers";

$users = query("SELECT * FROM users");

?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="../img/tittle.png">
    <title>database user</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
    <script src="../bootstrap/js/jquery-3.2.1.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid-md">
		<div class="row text-center text-light">
			<div class="col text-capitalize">
				<h2 class="py-3" style="margin-bottom:0px;background-color:#100b70;border-bottom:3px solid #fc8b05;">database user</h2>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col">
				<p class="py-2 text-darken" style="background-color:#04dffc;text-indent:5%;"><i class="bi-house-fill fs-4 "></i> <a class="text-decoration-none" href="admin.php" style="color:black;">Home</a></p>
			</div>
		</div>		
	</div>
	<div class="container mb-3">
		<div class="row">
			<div class="col table-responsive">
				<p><a href="../registrasi.php">klik di sini</a> untuk menambahkan user baru</p>
				<table class="table table-hover">
					<thead class="table-info text-center align-middle">
						<tr>
							<th scope="col">No</th>
							<th scope="col">Aksi</th>
							<th scope="col">Shift</th>
							<th scope="col">Username</th>
							<th scope="col">NIP Pegawai</th>
							<th scope="col">Nama Pegawai</th>
							<th scope="col">NIP Atasan</th>
							<th scope="col">Nama Atasan</th>
							<th scope="col">TTD</th>
							<th scope="col">TTD Atasan</th>
							<th scope="col">Foto</th>
						</tr>
					</thead>
					<?php $i = 1; ?>	
					<?php foreach ($users as $row) : ?>
					<tr>
						<td scope="row"><?= $i; ?></td>
						<td>
							<a href="hapus.php?id=<?= $row["id"];?>" onclick="return confirm('yakin?')">hapus</a>
						</td>
						<td><?= $row["shift"]; ?></td>
						<td><?= $row["username"]; ?></td>
						<td><?= $row["nipUser"]; ?></td>
						<td><?= $row["namaUser"]; ?></td>
						<td><?= $row["nipAtasan"]; ?></td>
						<td><?= $row["namaAtasan"]; ?></td>
						<td>
							<img src="../imgUpload/<?= $row["ttdUser"]; ?>" width="100px;" height="60px;">
						</td>
						<td>
							<img src="../imgUpload/<?= $row["ttdAtasan"]; ?>" width="100px;" height="60px;">
						</td>
						<td>
							<img src="../imgUpload/<?= $row["fotoUser"]; ?>" width="100px;" height="60px;">
						</td>
						
					</tr>
					<?php $i++; ?>
					<?php endforeach; ?>
				</table>
			</div>
		</div>
	</div>
</body>
</html>

