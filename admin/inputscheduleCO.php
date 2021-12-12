<?php

require '../functions.php';

$bln30 = ["04", "06", "09", "11"];
$bln = date('m');
if (in_array($bln, $bln30)) {
	$hari = 30;
} elseif ($bln == "02") {
	$thn = date('Y');
	if ($thn % 4 === 0) {
		$hari = 29;
	} else {
		$hari = 28;
	}
} else {
	$hari = 31;
}

$tools = [
	"cwp c booster pump a",
	"cwp c booster pump b",
	"cwp d booster pump a",
	"cwp d booster pump b",
	"ccwp 1a",
	"ccwp 1b",
	"cep 1a",
	"cep 1b",
	"vacuum pump 1a",
	"vacuum pump 1b",
	"bfp 1a",
	"bfp 1b",
	"bfp 1c",
	"eh oil pump 1a",
	"eh oil pump 1b",
	"gland seal fan 1a",
	"gland seal fan 1b",
	"hpff 1a",
	"hpff 1b",
	"hpff 1c",
	"oge fan 1a",
	"oge fan 1b",
	"cooling fan 1a",
	"cooling fan 1b",
	"ball cleaning #1"
];

if (isset($_POST["savesatu"])) {

	if (inputschedulesatu($_POST["unitsatu"]) > 0) {

		echo ("
				<script>
					alert('schedule unit satu berhasil ditambahkan');
					document.location.href = 'admin.php';
				</script>
			");
	} else {
		echo ("
				<script>
					alert('schedule gagal ditambahkan');
					document.location.href = 'inputschedule.php';
				</script>				
			");
	}
}

if (isset($_POST["savedua"])) {

	if (inputscheduledua($_POST["unitdua"]) > 0) {

		echo ("
				<script>
					alert('schedule unit dua berhasil ditambahkan');
					document.location.href = 'admin.php';
				</script>
			");
	} else {
		echo ("
				<script>
					alert('schedule gagal ditambahkan');
					document.location.href = 'inputschedule.php';
				</script>				
			");
	}
}

if (isset($_POST["savecommon"])) {

	if (inputschedulecommon($_POST["common"]) > 0) {

		echo ("
				<script>
					alert('schedule common berhasil ditambahkan');
					document.location.href = 'admin.php';
				</script>
			");
	} else {
		echo ("
				<script>
					alert('schedule gagal ditambahkan');
					document.location.href = 'inputschedule.php';
				</script>				
			");
	}
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="../img/tittle.png">
	<title>input shedule C.O.</title>
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
	<script src="../js/jquery-3.6.0.min.js"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container-fluid-md">
		<div class="row text-center text-light">
			<div class="col text-capitalize">
				<h2 class="py-3" style="margin-bottom:0px;background-color:#100b70;border-bottom:3px solid #fc8b05;">input schedule C.O.</h2>
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
			<div class="col">
				<div class="btn-group mb-3" role="group" aria-label="Basic mixed styles example">
					<button id="unit1" type="button" class="btn btn-danger">unit 1</button>
					<button id="unit2" type="button" class="btn btn-warning">unit 2</button>
					<button id="common" type="button" class="btn btn-success">common</button>
				</div>

				<div id="tabel">
					<form action="" method="post">
						<div class="table-responsive mb-3">
							<table class="table table-hover table-border">
								<thead class="table-success text-capitalize align-middle">
									<tr>
										<th>unit 1</th>
										<th colspan="<?= $hari ?>" class="text-center"><?= date('F Y') ?></th>
									</tr>
									<tr>
										<th class="text-center">nama peralatan</th>
										<?php for ($i = 1; $i <= $hari; $i++) : ?>
											<th><?= $i; ?></th>
										<?php endfor ?>
									</tr>
								</thead>
								<tbody>
									<?php $j = 99; ?>
									<?php foreach ($tools as $tool) : ?>
										<tr>
											<td><?= $tool ?></td>
											<?php for ($i = 1; $i <= $hari; $i++) : ?>
												<td>
													<div class="form-check">
														<input class="form-check-input" type="checkbox" name="unitsatu[<?= $i . $j ?>]" value="ya">
													</div>
												</td>
											<?php endfor ?>
										</tr>
										<?php $j++ ?>
									<?php endforeach ?>
								</tbody>
							</table>
						</div>
						<div class="position-relative">
							<div class="position-absolute top-0 end-0">
								<button class="btn btn-success btn-sm" type="submit" name="savesatu">Save</button>
							</div>
						</div><br><br>
					</form>
				</div>
			</div>
		</div>
		<script src="../js/jqueryinputscheduleco.js"></script>
</body>

</html>