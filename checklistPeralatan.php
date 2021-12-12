<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}

require 'functions.php';

// cek tombosubmit sudh d tekan atau belum
 if ( isset($_POST["save"]) ) {

 	$_SESSION["namaPeralatan"] = $_GET["namaPeralatan"];
// cek apaka data berhasil ditambahkan atau tidak
	if (simpan($_POST) > 0 ) {
		echo("
				<script>
					alert('data berhasil ditambahkan');
					document.location.href = 'cetakHasilChecklist.php?from=user';					
				</script>
			");
	} else {
		echo("
				<script>
					alert('data gagal ditambahkan');
					document.location.href = 'pilih.php';
				</script>				
			");
	}
}

$namaPeralatan = $_GET["namaPeralatan"];
$pertanyaan = query("SELECT pertanyaan FROM daftar_pertanyaan WHERE untuk = '$namaPeralatan'");

?>

<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" href="img/tittle.png">
		<title>checklist <?= $_GET["namaPeralatan"]; ?></title>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
		<script src="bootstrap/js/jquery-3.2.1.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
	</head>

<body>
	<div class="container-fluid-md">
		<div class="row text-center text-light">
			<div class="col text-capitalize">
				<h2 class="py-3" style="margin-bottom:0px;background-color:#100b70;border-bottom:3px solid #fc8b05;">Checklist <?= $_GET["namaPeralatan"]; ?></h2>
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
				<form action="" method="post">

					<?php $i = 1; ?>
					<?php foreach ($pertanyaan as $row) : ?>

					<p><?= $row["pertanyaan"]; ?></p>
					<div class="form-check">
						<input class="form-check-input"  type="radio" name="flexRadioDefault<?=$i;?>" value="ya" id="flexRadioDefault<?=$i;?>" required>
						<label class="form-check-label" for="flexRadioDefault<?=$i;?>">Ya</label>
					</div>
					<div class="form-check">
						<input class="form-check-input"  type="radio" name="flexRadioDefault<?=$i;?>" value="tidak" id="flexRadioDefault<?=$i;?>a">
						<label class="form-check-label"  for= "flexRadioDefault<?=$i;?>a" >Tidak</label>
					</div>
					<div class="form-grup">
						<textarea name="textarea<?=$i;?>" class="form-control" id="floatingTextarea"></textarea>
					</div>

					<br>
					<?php $i++; ?>
					<?php endforeach; ?>
					<div class="form-check">
						<b>CATATAN</b>
						<textarea name="catatan" placeholder="masukkan catatan maksimal 50 karakter" class="form-control" id="floatingTextarea"></textarea>
					</div>
					<br><br>

					<div class="position-relative">
						<!-- <a class="btn btn-secondary btn-sm" href="cetak.php" role="button" target="_blank">Print</a> -->
						<div class="position-absolute top-0 end-0">
							<button class="btn btn-success btn-sm" type="submit" name="save">Save & Download</button>
						</div>
					</div>
					<br><br><br><br>

				</form>
			</div>
		</div>		
	</div>
</body>
</nav>
</html>
