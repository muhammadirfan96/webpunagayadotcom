<?php
session_start();
require 'functions.php';
if (isset($_POST["kirim"])) {
    // cek apakah konfirmasi kode yang di kirimkan
    if ($_POST["inputkode"] === $_SESSION["kode"]) {
        echo("
				<script>
					document.location.href = 'passwordBaru.php';
				</script>
			");
	} else {
		echo("
				<script>
					alert('kode yang anda masukkan tidak sesuai');
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
    <link rel="icon" href="img/tittle.png">
    <title>webpunagaya</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
    <script src="bootstrap/js/jquery-3.2.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/loginn.css">
</head>
<body>
    <div class="container">
		<div class="atas row justify-content-center mt-4">
			<div class="col-md-6 col-sm-11 rounded-top ">
				<h2 class="text-light py-3">Kode anda</h2>
			</div>			
		</div>
		<div class="bawah row justify-content-center">
			<div class="col-md-6 col-sm-11 rounded-bottom">

                <form action="" method="post">
                    <div class="text-start my-2">                      
                        <label class="form-label" for="kode">Kode</label>
                        <div class="input-group mb-3">					
                            <span class="input-group-text" id="basic-addon1"><img src="img/lock.png" width="20px"></span>
                            <input type="text" class="form-control" placeholder="masukkan kode konfirmasi" aria-label="Username" aria-describedby="basic-addon1" name="inputkode" id="kode" autocomplete="off">
                        </div>                      
                    </div>
                    <p class="text-end"><button class="btn" type="submit" name="kirim">Submit!</button></p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>