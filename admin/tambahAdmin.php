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

if (isset($_POST["registerAdmin"])) {
	# code...
	if (registrasiAdmin($_POST) > 0 ) {
		# code...
		echo "<script>
				alert('admin baru berhasil ditambahkan');
				document.location.href = 'dbadmin.php';
			</script>";
	} else {
		echo mysqli_error($db);
	}
}

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="../img/tittle.png">
    <title>registrasi admin</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
    <script src="../bootstrap/js/jquery-3.2.1.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="../css/loginn.css">

</head>
<body>
	<div class="container">
		<div class="atas row justify-content-center mt-4">
			<div class="col-md-6 col-sm-11 rounded-top d-flex">
				<h2 class="text-light py-3">Registrasi Admin</h2>
			</div>				
		</div>

		<div class="bawah row justify-content-center">
			<div class="col-md-6 col-sm-11 rounded-bottom">
				<form action="" method="post">
					<div class="text-start my-2">
						<label class="form-label" for="username">Username</label>
						<div class="input-group mb-2">					
							<span class="input-group-text" id="basic-addon1"><img src="../img/worker.png" width="20px">
						  	</span>
						  	<input type="text" class="form-control" placeholder="max 50 karakter" aria-label="Username" aria-describedby="basic-addon1" name="usernameAdmin" id="username" required>
						</div>
						<p class="text-end"><button class="btn" type="submit" name="registerAdmin">Registrasi</button></p>
					</div>
				</form>
			</div>
		</div>
	</div>	
</body>
</html>