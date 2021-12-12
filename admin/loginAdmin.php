<?php 
session_start();

if (isset($_SESSION["loginAdmin"])) {
	header("Location: admin.php");
}

require '../functions.php';

// $admin = query("SELECT * FROM admin");

// $jumlahBaris = query ("SELECT COUNT(id) FROM admin");
// $jumlahAdmin = $jumlahBaris[0]["COUNT(id)"];

// for ($i=0; $i < $jumlahAdmin ; $i++) { 
// 	if (in_array($_SESSION["username"], $admin[$i])) {
// 		// set session
// 		$_SESSION["loginAdmin"] = true;
// 		$_SESSION["usernameAdmin"] = $_SESSION["username"];
// 		header("Location: admin.php");
// 		exit;
// 	} else {
// 		echo("
// 				<script>
// 					alert('anda bukan admin');
// 					document.location.href = '../index.php';
// 				</script>			
// 			");
// 	}
// }




$username = $_SESSION["username"];

$hasil =  mysqli_query($db, "SELECT * FROM admin WHERE username = '$username'" );

// cek username
if (mysqli_num_rows($hasil) === 1) {
	$row = mysqli_fetch_assoc($hasil);
	// set session
	$_SESSION["loginAdmin"] = true;
	$_SESSION["usernameAdmin"] = $row["username"];
	header("Location: admin.php");
	exit;
} else {
	echo("
			<script>
				alert('anda bukan admin');
				document.location.href = '../index.php';
			</script>			
		");
}
