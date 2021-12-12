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
$_SESSION["namaTable"] = "admin";
$_SESSION["link"] = "dbadmin";

$admin = query("SELECT * FROM admin");

?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="../img/tittle.png">
    <title>database admin</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
    <script src="../bootstrap/js/jquery-3.2.1.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
</head> 
<body>	
	<div class="container-fluid-md">
		<div class="row text-center text-light">
			<div class="col text-capitalize">
				<h2 class="py-3" style="margin-bottom:0px;background-color:#100b70;border-bottom:3px solid #fc8b05;">database admin</h2>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col">
				<p class="py-2 text-darken" style="background-color:#04dffc;text-indent:5%;"><i class="bi-house-fill fs-4 "></i> <a class="text-decoration-none" href="admin.php" style="color:black;">Admin</a></p>
			</div>
		</div>		
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col table-responsive">
				<p><a href="tambahAdmin.php">klik di sini</a> untuk menambahkan admin baru</p>
				<table class="table table-hover">
					<thead class="table-success text-start text-capitalize align-middle">
						<tr>
							<th scope="col">no</th>
							<th scope="col">aksi</th>
							<th scope="col">username</th>
						</tr>
					</thead>	

					<?php $i = 1; ?>	
					<?php foreach ($admin as $row) : ?>
					<tr>
						<th scope="row"><?= $i; ?></th>
						<td>
							<a href="hapus.php?id=<?= $row["id"];?>" onclick="return confirm('yakin?')">hapus</a>
						</td>
						<td><?= $row["username"]; ?></td>
					</tr>
					<?php $i++; ?>
					<?php endforeach; ?>
				</table>
			</div>
		</div>
	</div>	
</body>
</html>
