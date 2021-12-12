<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}

if(!isset($_SESSION["loginAdmin"])) {
	header("Location: ../index.php");
	exit;
}

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
    <style type="text/css">
    	#sebagai {
    		position: fixed;
    		top: 10px;
    		left: 5px;
    		background-color: white;
    		font-size: 12px;
    		border-radius: 5px;
			color: red;
			padding: 0 5px 0 5px;
    	}
    </style>
</head>
<body>
	<div id="sebagai">
		<i>* Anda login sebagai <?=$_SESSION["usernameAdmin"]?></i>
	</div>

	<div class="container-fluid-md">
		<div class="row text-center text-light">
			<div class="col text-capitalize">
				<h2 class="py-3" style="margin-bottom:0px;background-color:#100b70;border-bottom:3px solid #fc8b05;">admin</h2>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col">
				<p class="py-2 text-darken" style="background-color:#04dffc;text-indent:5%;"><i class="bi-house-fill fs-4 "></i> <a class="text-decoration-none" href="logout.php" style="color:black;">Home</a></p>
			</div>
		</div>
	</div>

	<div class="container text-center">
		<div class="row ">
			<div class="col-md-4 ">
				<div class="d-grid gap-2 d-md-block ">
					<a class="btn btn-success mb-2 " href="dbdaftarPertanyaan.php" role="button">Daftar Pertanyaan</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="d-grid gap-2 d-md-block">
					<a class="btn btn-warning mb-2" href="dbadmin.php" role="button">Database Admin</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="d-grid gap-2 d-md-block">
					<a class="btn btn-primary mb-2" href="dbusers.php" role="button">Database Users</a>
				</div>
			</div>	
		</div>

		<!-- akhir row 1 -->

		<!-- row 2 -->

		<div class="row ">
			<div class="col-md-4 ">
				<div class="d-grid gap-2 d-md-block ">
					<a class="btn btn-danger mb-2" href="dbsrcm.php" role="button">Database SR</a>
				</div>
			</div>	

			<div class="col-md-4 ">
				<div class="d-grid gap-3 d-md-block">	
					<a class="btn btn-info mb-2" href="dbHasilChecklist.php" role="button">Database Checklist</a>
				</div>
			</div>

			<div class="col-md-4 ">
				<div class="d-grid gap-3 d-md-block">	
					<a class="btn btn-secondary mb-2" href="dbLimaS.php" role="button">Database 5S</a>
				</div>
			</div>
		</div>

		<!-- row 3 -->
		<div class="row ">
			<div class="col-md-4 ">
				<div class="d-grid gap-2 d-md-block ">
					<a class="btn btn-info mb-2" href="inputscheduleCO.php" role="button">Input Schedule C.O.</a>
				</div>
			</div>

			<div class="col-md-4 ">
				<div class="d-grid gap-2 d-md-block ">
					<a class="btn btn-danger mb-2" href="inputschedule5S.php" role="button">Input Schedule 5S</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>