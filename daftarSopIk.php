<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}

$boiler = ["sootblower", "slagcooler", "primary air fan", "secondary air fan", "induced draft fan", "high primary fluidized fan", "hydro test", "supply oil pump", "coal feeder", "tombol discharge valve slagcooler", "filling steam drum", "boiler auxilliary", "lower burner", "furnace purging", "pengoperasian lime stone", "feeding material bed"];

$turbin = ["rubber ball cleaning", "travelling screen dan screen wash pump", "feed water pump", "HP oil pump", "condensate extrantion pump", "C.O. supply system pendingin bantu", "circulating water pump", "DC oil pump", "CCS", "AC oil pump", "close circulating water pump", "jacking oil pump", "turning gear", "vacum pump", "sea water pretreatment", "uap perapat poros turbin", "drain pit pump", "digital electric hydraulic", "CWP connecting valve", "operasi 3 CWP", "emergency MOV debris filter", "runback", "C.O. EH oil pump", "filter system", "C.O. CWP Dengan Operasi 3 CWP", "pengatur beban"];

$alba = ["emergency pengoperasian transporter", "conveying air compressor", "fast cut common PS", "supply tegangan UAT unit 2 ke unit 1", "warming up EDG", "operasi manual EDG", "pengetesan manual EDG", "IN rack OUT switchgear 400 V", "IN rack OUT switchgear 6 KV", "rack IN switchgear 400 V", "rack IN switchgear 6 KV", "AC central", "fire fighting system"];

$startUp = ["start up boiler hot state", "start up boiler warm state", "start up boiler cold state", "start up turbin extremely hot state", "start up turbin hot state", "start up turbin warm state", "start up turbin cold state", "syncron"];

$shutDown = ["shut down boiler", "shut down turbin", "lepas syncron"];

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="img/tittle.png">
    <title>daftar sop & ik peralatan</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
    <script src="bootstrap/js/jquery-3.2.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid-md">
		<div class="row text-center text-light">
			<div class="col text-capitalize">
				<h2 class="py-3" style="margin-bottom:0px;background-color:#100b70;border-bottom:3px solid #fc8b05;">daftar SOP IK</h2>
			</div>	
		</div>
		<div class="row mb-3">
			<div class="col">
				<p class="py-2 text-darken" style="background-color:#04dffc;text-indent:5%;"><i class="bi-house-fill fs-4 "></i> <a class="text-decoration-none" href="index.php" style="color:black;">Home</a></p>
			</div>
		</div>		
	</div>
	
	<div class="container text-center text-capitalize">
		<div class="row">
			<div class="col-md-4">
				<div class="d-grid gap-2 d-md-block ">
					<button class="btn btn-success mb-2" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
						SOP & IK Peralatan Boiler
					</button>

					<div class="collapse" id="collapseExample">
						<ul class="list-group text-start">
							<?php foreach ($boiler as $row) : ?>
								<li class="list-group-item"><a class="text-decoration-none" href="https://drive.google.com/drive/folders/1Ri6UnOa206v_HF7LhovdIGanya3yzqHj?usp=sharing" target="_blank"><?=$row; ?></a></li>
							<?php endforeach ?>
						</ul>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="d-grid gap-2 d-md-block">
					<button class="btn btn-warning mb-2" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
						SOP & IK Peralatan Turbin
					</button>

					<div class="collapse" id="collapseExample2"> 
						<ul class="list-group text-start">
							<?php foreach ($turbin as $row) : ?>
								<li class="list-group-item"><a class="text-decoration-none" href="https://drive.google.com/drive/folders/1i9XLQx_WecqSBz26Hzx54nb_VqSMzHmq?usp=sharing" target="_blank"><?=$row; ?></a></li>
							<?php endforeach ?>
						</ul>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="d-grid gap-2 d-md-block">
					<button class="btn btn-primary mb-2" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample3" aria-expanded="false" aria-controls="collapseExample">
						SOP & IK Peralatan Alat Bantu
					</button>

					<div class="collapse" id="collapseExample3"> 
						<ul class="list-group text-start">
							<?php foreach ($alba as $row) : ?>
								<li class="list-group-item"><a class="text-decoration-none" href="https://drive.google.com/drive/folders/1P5ZZjGXmFCFO8bmHGAMwHe0xDdfan2FH?usp=sharing" target="_blank"><?=$row; ?></a></li>
							<?php endforeach ?>
						</ul>
					</div>
				</div>
			</div>	
		</div>

		<!-- akhir row 1 -->

		<!-- row 2 -->

		<div class="row ">
			<div class="col-md-4 ">
				<div class="d-grid gap-2 d-md-block ">
					<button class="btn btn-danger mb-2" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample4" aria-expanded="false" aria-controls="collapseExample">
						SOP & IK Start Up
					</button>
					<div class="collapse" id="collapseExample4"> 
						<ul class="list-group text-start">
							<?php foreach ($startUp as $row) : ?>
								<li class="list-group-item"><a class="text-decoration-none" href="https://drive.google.com/drive/folders/1sKkrZu4jjiIwVa7oluaVYGKN47IgJDIy?usp=sharing" target="_blank"><?=$row; ?></a></li>
							<?php endforeach ?>
						</ul>
					</div>
				</div>
			</div>

			<div class="col-md-4 ">
				<div class="d-grid gap-3 d-md-block">	
					<button class="btn btn-info mb-2" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample5" aria-expanded="false" aria-controls="collapseExample">
						SOP & IK Shut Down
					</button>
					<div class="collapse" id="collapseExample5">
						<ul class="list-group text-start">
							<?php foreach ($shutDown as $row) : ?>
								<li class="list-group-item"><a class="text-decoration-none" href="https://drive.google.com/drive/folders/18IBMwXVj5vIsY-C38LgdcKJmUsN1xO0s?usp=sharing" target="_blank"><?=$row; ?></a></li>
							<?php endforeach ?>
						</ul>
					</div>
				</div>
			</div>		
		</div>
	</div>
</body>
</html>