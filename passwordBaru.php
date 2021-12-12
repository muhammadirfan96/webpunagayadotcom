<?php
session_start();

require 'functions.php';

if (isset($_POST["kirim"])) {
	// gantiPassword($_POST);
	if (gantiPassword($_POST) > 0) {
		echo("
				<script>
					alert('password berhasil di ubah');
					document.location.href = 'login.php';
				</script>	
			");
	} else {
		echo("
				<script>
					alert('password gagal di ubah');
					document.location.href = 'lupaPassword.php';
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
				<h2 class="text-light py-3">Password Anda</h2>
			</div>			
		</div>
		<div class="bawah row justify-content-center">
			<div class="col-md-6 col-sm-11 rounded-bottom">

                <form action="" method="post">
                    <div class="text-start my-2">
						<label class="form-label" for="password">Password</label>
						<div class="input-group mb-2">					
							<span class="input-group-text" id="basic-addon1"><img src="img/lock.png" width="20px"></i>
							</span>
							<input type="password" class="form-control" placeholder="masukkan password" aria-label="Username" aria-describedby="basic-addon1" name="password" id="password" required>
						</div>
						<label class="form-label" for="password2">Konfirmasi Password</label>
						<div class="input-group mb-2">			
							<span class="input-group-text" id="basic-addon1"><img src="img/lock.png" width="20px"></i>
							</span>
							<input type="password" class="form-control" placeholder="konfirmasi password" aria-label="Username" aria-describedby="basic-addon1" name="password2" id="password2" required>
						</div>
                    </div>
                    <p class="text-end"><button class="btn" type="submit" name="kirim">Submit!</button></p>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>