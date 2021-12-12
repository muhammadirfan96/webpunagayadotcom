<?php 
require 'functions.php';

if (isset($_POST["register"])) {
	if (registrasi($_POST) > 0 ) {
		echo "<script>
				alert('user baru berhasil ditambahkan');
				document.location.href = 'login.php';
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
    <link rel="icon" href="img/tittle.png">
    <title>halaman registrasi user</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
    <script src="bootstrap/js/jquery-3.2.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/loginn.css">
	
</head>
<body>
	<div class="container">
		<div class="atas row justify-content-center mt-4">
			<div class="col-md-6 col-sm-11 rounded-top d-flex">
				<h2 class="text-light py-3">Registrasi Pegawai</h2>
			</div>				
		</div>
		<div class="bawah row justify-content-center">
			<div class="col-md-6 col-sm-11 rounded-bottom">
				<form action="" method="post">
					<div class="text-start my-2">
						<label class="form-label" for="username">Username</label>
						<div class="input-group mb-2">					
							<span class="input-group-text" id="basic-addon1"><img src="img/worker.png" width="20px">
						  	</span>
						  	<input type="text" class="form-control form-control-sm" placeholder="max 50 karakter" aria-label="Username" aria-describedby="basic-addon1" name="username" id="username" autocomplete="off" required>
						</div>
						<label class="form-label" for="namaPegawai">Nama Pegawai</label>
						<div class="input-group mb-2">					
							<span class="input-group-text" id="basic-addon1"><img src="img/worker.png" width="20px"></span>
						  	<input type="text" class="form-control form-control-sm" placeholder="max 30 karakter" aria-label="Username" aria-describedby="basic-addon1" name="namaUser" id="namaPegawai" autocomplete="off" required>
						</div>
						<label class="form-label" for="nip">NIP</label>
						<div class="input-group mb-2">					
							<span class="input-group-text" id="basic-addon1"><img src="img/pencil.png" width="20px"></span>
						  	<input type="text" class="form-control form-control-sm" placeholder="masukkan NIP anda" aria-label="Username" aria-describedby="basic-addon1" name="nip" id="nip" autocomplete="off" required>
						</div>

						<label class="form-label" for="email">email</label>
						<div class="input-group mb-2">					
							<span class="input-group-text" id="basic-addon1">@</span>
						  	<input type="email" class="form-control form-control-sm" placeholder="masukkan email anda" aria-label="Username" aria-describedby="basic-addon1" name="email" id="email" autocomplete="off">
						</div>

						<label class="form-label" for="namaAtasan">Nama Atasan</label>
						<div class="input-group mb-2">
							<span class="input-group-text" id="namaAtasan"><img src="img/man.png" width="20px"></i></span>
							<select class="form-select form-select-sm" id="namaAtasan" name="namaAtasan" required>
								<option selected="" disabled="">pilih nama atasan...</option>
								<option value="asharri rizal">asharri rizal</option>
								<option value="muhamad imam ismail">muhamad imam ismail</option>
								<option value="dwi aji saputro">dwi aji saputro</option>
								<option value="yoga fajar nugroho">yoga fajar nugroho</option>
							</select>
						</div>

						<label class="form-label" for="password">Password</label>
						<div class="input-group mb-2">					
							<span class="input-group-text" id="basic-addon1"><img src="img/lock.png" width="20px"></i>
						  	</span>
						  	<input type="password" class="form-control form-control-sm" placeholder="masukkan password" aria-label="Username" aria-describedby="basic-addon1" name="password" id="password" required>
						</div>
						<label class="form-label" for="password2">Konfirmasi Password</label>
						<div class="input-group mb-2">			
							<span class="input-group-text" id="basic-addon1"><img src="img/lock.png" width="20px"></i>
						  	</span>
						  	<input type="password" class="form-control form-control-sm" placeholder="konfirmasi password" aria-label="Username" aria-describedby="basic-addon1" name="password2" id="password2" required>
						</div>									
						<p class="text-end"><button class="btn btn-sm" type="submit" name="register">Registrasi</button></p>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>