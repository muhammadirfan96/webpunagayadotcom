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

$daftar_pertanyaan = query("SELECT * FROM daftar_pertanyaan");

?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="../img/tittle.png">
    <title>database daftar pertanyaan</title>
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
					<h2 class="py-3" style="margin-bottom: 0px;">Database Daftar Pertanyaan</h2>
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
				<div class="col table-responsive">
					<table class="table table-hover">
						<thead class="table-success text-center align-middle">
							<tr>
								<th scope="col">NO</th>
						 		<th scope="col">Nama Peralatan</th>
								<th scope="col">Pertanyaan</th>
							</tr>
						</thead>

						<?php $i = 1; ?>	
						<?php foreach ($daftar_pertanyaan as $row) : ?>
						<!-- <tbody>	 -->
							<tr>
								<th scope="row"><?= $i; ?></th>
								<td><?= $row["untuk"]; ?></td>
								<td><?= $row["pertanyaan"]; ?></td>
							</tr>
						<!-- </tbody> -->
						<?php $i++; ?>
						<?php endforeach; ?>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
