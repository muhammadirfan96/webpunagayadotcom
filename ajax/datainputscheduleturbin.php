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

$toolsTurbin = [
	"ball pump A + panel #1",
    "ball pump A + panel #2",
    "ball pump B + panel #1",
    "ball pump B + panel #2",
    "bfp 1a",
    "bfp 2a",
    "bfp 1b",
    "bfp 2b",
    "bfp 1c",
    "bfp 2c",
    "vacuum chamber pump a #1",
    "vacuum chamber pump a #2",
    "vacuum chamber pump b #1",
    "vacuum chamber pump b #2",
    "vacuum pump a #1",
    "vacuum pump a #2",
    "vacuum pump b #1",
    "vacuum pump b #2",
    "hp pump #1",
    "hp pump #2",
    "he lube oil a #1",
    "he lube oil a #2",
    "he lube oil b #1",
    "he lube oil b #2",
    "jo pump a #1",
    "jo pump a #2",
    "jo pump b #1",
    "jo pump b #2",
    "ac oil pump",
    "dc oil pump",
    "gland seal fan #1",
    "gland seal fan #2",
    "oge fan #1",
    "oge fan #2",
    "turning gear #1",
    "turning gear #2",
    "lp heater drain pump a #1",
    "lp heater drain pump a #2",
    "lp heater drain pump b #1",
    "lp heater drain pump b #2",
    "lp heater 7 #1",
    "lp heater 7 #2",
    "lp heater 6 #1",
    "lp heater 6 #2",
    "lp heater 5 #1",
    "lp heater 5 #2",
    "lp heater 4 #1",
    "lp heater 4 #2",
    "hp heater a #1",
    "hp heater a #2",
    "hp heater b #1",
    "hp heater b #2",
    "gland steam condensor #1",
    "gland steam condensor #2",
    "valve daearator #1",
    "valve daearator #2",
    "plat he ccw a #1",
    "plat he ccw a #2",
    "plat he ccw b #1",
    "plat he ccw b #2",
    "cep a #1",
    "cep a #2",
    "cep b #1",
    "cep b #2",
    "cwp a #1",
    "cwp a #2",
    "cwp b #1",
    "cwp b #2",
    "travelling screen a #1",
    "travelling screen a #2",
    "travelling screen b #1",
    "travelling screen b #2",
    "travelling screen c #1",
    "travelling screen c #2",
    "travelling screen d #1",
    "travelling screen d #2",
    "lube oil a #1",
    "lube oil a #2",
    "lube oil b #1",
    "lube oil b #2",
    "auxilliary steam deader #1",
    "auxilliary steam deader #2",
    "eh oil a #1",
    "eh oil a #2",
    "eh oil b #1",
    "eh oil b #2",
    "booster pump a #1",
    "booster pump a #2",
    "booster pump b #1",
    "booster pump b #2",
    "booster pump c #1",
    "booster pump c #2",
    "booster pump d #1",
    "booster pump d #2",
    "valve debris a #1",
    "valve debris a #2",
    "valve debris b #1",
    "valve debris b #2",
    "he ccwp a #1",
    "he ccwp a #2",
    "he ccwp b #1",
    "he ccwp b #2",
    "cccwp a #1",
    "cccwp a #2",
    "cccwp b #1",
    "cccwp b #2"
];

?>

<form action="" method="post">
    <div class="table-responsive mb-3">
        <table class="table table-hover table-border">
            <thead class="table-success text-capitalize align-middle">
                <tr>
                    <th>turbin</th>
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
                <?php foreach ($toolsTurbin as $tool) : ?>
                    <tr>
                        <td><?=$tool?></td>
                        <?php for ($i=1; $i <= $hari; $i++) : ?>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="limasTurbin[<?=$i.$j?>]" value="ya">
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
            <button class="btn btn-success btn-sm" type="submit" name="saveLimasTurbin">Save</button>
        </div>
    </div><br><br>
</form>