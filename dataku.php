<?php
session_start();
require 'functions.php';
$username = $_SESSION["username"];
$data = query("SELECT * FROM users WHERE username = '$username'");

if (empty($data[0]["ttdUser"])) {
    $ttdUser = "pencil.png";
}else {
    $ttdUser = $data[0]["ttdUser"];
}
if (empty($data[0]["ttdAtasan"])) {
    $ttdAtasan = "pencil.png";
}else {
    $ttdAtasan = $data[0]["ttdAtasan"];
}

if (empty($data[0]["fotoUser"])) {
    $fotoUser = "tittle.png" ;
} else {
    $fotoUser = $data[0]["fotoUser"];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="img/tittle.png">
    <title>data saya</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
    <script src="bootstrap/js/jquery-3.2.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/datakuu.css">
</head>
<body>
    <div class="container text-capitalize mt-3">
        <div class="row justify-content-center mx-2">
            <div class="logo col-md-3 col-sm-11 text-center">
                <img class="rounded-circle border border-light border-3 mx-3 my-3" src="imgUpload/<?= $fotoUser; ?>" width="130px;" height="130px;">
            </div>

            <div class="data col-md-7 col-sm-11">
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td>username</td>
                            <td><?= $data[0]["username"] ?></td>
                        </tr>
                        <tr>
                            <td>nama</td>
                            <td><?= $data[0]["namaUser"] ?></td>
                        </tr>
                        <tr>
                            <td>NIP</td>
                            <td><?= $data[0]["nipUser"] ?></td>
                        </tr>
                        <tr>
                            <td>shift</td>
                            <td><?= $data[0]["shift"] ?></td>
                        </tr>
                        <tr>
                            <td>email</td>
                            <td><?= $data[0]["email"] ?></td>
                        </tr>
                        <tr>
                            <td>nama atasan</td>
                            <td><?= $data[0]["namaAtasan"] ?></td>
                        </tr>
                        <tr>
                            <td>NIP atasan</td>
                            <td><?= $data[0]["nipAtasan"] ?></td>
                        </tr>
                        <tr>
                            <td>ttd</td>
                            <td>
                                <img class="rounded" src="imgUpload/<?= $ttdUser; ?>" width="40px;" height="40px;">
                            <td>
                        </tr>
                        <tr>
                            <td>ttd atasan</td>
                            <td>
                                <img class="rounded" src="imgUpload/<?= $ttdAtasan; ?>" width="40px;" height="40px;">
                            <td>
                        </tr>
                    </tbody>
                </table>
                <br><br>
                <div class="position-relative">
                    <!-- <a href="index.php" class="btn btn-sm position-absolute bottom-0 start-0" role="button">home</a> -->
                    <a href="ubahDataUser.php" class="btn btn-sm position-absolute bottom-0 end-0" role="button">ubah data</a>
                </div>
            </div>
        </div>  
    </div>
</body>
</html>