<?php

require 'functions.php';
require 'view5S.php';
require 'viewCO.php';

$coUnit1 = [
    "$cwpc",
    "$cwpd",
    "$ccwp1",
    "$cep1",
    "$vacuum1",
    "$bfp1",
    "$ehoilpump1",
    "$glandsealfan1",
    "$hpff1",
    "$ogefan1",
    "$coolingfan1",
    "$ballcleaning1"
];

$coUnit2 = [
    "$cwpa",
    "$cwpb",
    "$ccwp2",
    "$cep2",
    "$vacuum2",
    "$bfp2",
    "$ehoilpump2",
    "$glandsealfan2",
    "$hpff2",
    "$ogefan2",
    "$coolingfan2",
    "$ballcleaning2"
];

$coCommon = [
    "$compressorinstrumentservice",
    "$compressorconveying",
    "$ACcentralequipment1",
    "$ACcentralequipment2",
    "$ACcentralccr",
    "$warmingUpEdg",
    "$warmingUpAuxBoiler"
];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="img/tittle.png">
    <title>schedule</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/icons/icons-1.4.0/font/bootstrap-icons.css">
    <script src="bootstrap/js/jquery-3.2.1.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container-fluid-md">
        <div class="row text-center text-light">
            <div class="col text-capitalize">
                <h2 class="py-3" style="margin-bottom:0px;background-color:#100b70;border-bottom:3px solid #fc8b05;">schedule</h2>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col">
                <p class="py-2 text-darken" style="background-color:#04dffc;text-indent:5%;"><i class="bi-house-fill fs-4 "></i> <a class="text-decoration-none" href="index.php" style="color:black;">Home</a></p>
            </div>
        </div>
    </div>

    <div class="container">
        <p class=" text-danger fw-bold"><?= date('d-m-Y') ?></p>
        <div class="row">
            <div class="col-md mb-3">
                <div class="card">
                    <div class="card-header" style="background-color:#b7d5ac;">
                        5S boiler
                    </div>
                    <div class="card-body">
                        <?= $limasBoiler ?>
                    </div>
                </div>
            </div>
            <div class="col-md mb-3">
                <div class="card">
                    <div class="card-header" style="background-color:#b7d5ac;">
                        5S turbin
                    </div>
                    <div class="card-body">
                        <?= $limasTurbin ?>
                    </div>
                </div>
            </div>
            <div class="col-md mb-3">
                <div class="card">
                    <div class="card-header" style="background-color:#b7d5ac;">
                        5S alba
                    </div>
                    <div class="card-body">
                        <?= $limasAlba ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md mb-3 mb-3">
                <div class="card">
                    <div class="card-header" style="background-color:#b7d5ac;">
                        Routine unit 1
                    </div>
                    <div class="card-body">
                        <?php for ($i = 0; $i < count($coUnit1); $i++) : ?>
                            <?php if (!empty($coUnit1[$i])) : ?>
                                <?= $coUnit1[$i] ?><br>
                            <?php endif ?>
                        <?php endfor ?>
                    </div>
                </div>
            </div>
            <div class="col-md mb-3">
                <div class="card">
                    <div class="card-header" style="background-color:#b7d5ac;">
                        Routine unit 2
                    </div>
                    <div class="card-body">
                        <?php for ($i = 0; $i < count($coUnit2); $i++) : ?>
                            <?php if (!empty($coUnit2[$i])) : ?>
                                <?= $coUnit2[$i] ?><br>
                            <?php endif ?>
                        <?php endfor ?>
                    </div>
                </div>
            </div>
            <div class="col-md mb-3">
                <div class="card">
                    <div class="card-header" style="background-color:#b7d5ac;">
                        Routine common
                    </div>
                    <div class="card-body">
                        <?php for ($i = 0; $i < count($coCommon); $i++) : ?>
                            <?php if (!empty($coCommon[$i])) : ?>
                                <?= $coCommon[$i] ?><br>
                            <?php endif ?>
                        <?php endfor ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>