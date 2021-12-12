<?php
require '../functions.php';

$bln30 = ["04", "06", "09", "11"];
$bln=date('m');
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

$tools2 = [
	"cwp a booster pump a",
	"cwp a booster pump b",
	"cwp b booster pump a",
	"cwp b booster pump b",
	"ccwp 2a",
	"ccwp 2b",
	"cep 2a",
	"cep 2b",
	"vacuum pump 2a",
	"vacuum pump 2b",
	"bfp 2a",
	"bfp 2b",
	"bfp 2c",
	"eh oil pump 2a",
	"eh oil pump 2b",
	"gland seal fan 2a",
	"gland seal fan 2b",
	"hpff 2a",
	"hpff 2b",
	"hpff 2c",
	"oge fan 2a",
	"oge fan 2b",
	"cooling fan 2a",
	"cooling fan 2b"
];

?>

<form action="" method="post">
    <div class="table-responsive mb-3">
        <table class="table table-hover table-border">
            <thead class="table-success text-capitalize align-middle">
                <tr>
                    <th>unit 2</th>
                    <th colspan="<?=$hari?>" class="text-center"><?=date('F Y')?></th>
                </tr>
                <tr>
                    <th class="text-center">nama peralatan</th>
                    <?php for ($i=1; $i <= $hari; $i++) : ?>
                        <th><?=$i;?></th>
                    <?php endfor ?>
                </tr>
            </thead>
            <tbody>
                <?php $j=999;?>
                <?php foreach ($tools2 as $tool) : ?>
                    <tr>
                        <td><?=$tool?></td>
                        <?php for ($i=1; $i <= $hari; $i++) : ?>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="unitdua[<?=$i.$j?>]" value="ya">
                                </div>
                            </td>
                        <?php endfor ?>
                    </tr>
                <?php $j++?>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
    <div class="position-relative">
        <div class="position-absolute top-0 end-0">
            <button class="btn btn-success btn-sm" type="submit" name="savedua">Save</button>
        </div>
    </div><br><br>
</form>