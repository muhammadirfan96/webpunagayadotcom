<?php 
session_start();
// $_SESSION = [];
unset($_SESSION["loginAdmin"]);
// unset($_SESSION["login"]);
// session_destroy();

// setcookie('id', '', time() - 3600);
// setcookie('uname', '', time() - 3600);

header("Location: ../index.php");
exit;

?>