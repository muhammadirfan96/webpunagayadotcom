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

$toolsAlba = [
    "compressor conveying A + drayer",
    "compressor conveying B + drayer",
    "compressor conveying C + drayer",
    "mcc area cwp",
    "CO2 room",
    "switch gear 6 kv A #1",
    "switch gear 6 kv A #2",
    "switch gear 6 kv B #1",
    "switch gear 6 kv B #2",
    "switch gear room common #1",
    "switch gear room common #2",
    "electronic equipment room #1",
    "electronic equipment room #2",
    "ccr",
    "sampling room #1",
    "sampling room #2",
    "compressor instrument A",
    "compressor instrument B + drayer",
    "compressor instrument C + drayer",
    "DC & UPS room #1",
    "DC & UPS room #2",
    "battery room",
    "plant comunication room",
    "main trafo & trafo PS room #1",
    "main trafo & trafo PS room #2",
    "trafo PS room #1",
    "trafo PS room #2",
    "outlet room",
    "compressor generator",
    "EDG",
    "panel EDG",
    "EDG & battery room pltg Alsthom",
    "panel pltg (elcon)",
    "mesin Alsthom (turbin & generator)",
    "switch gear room 400 v #1",
    "switch gear room 400 v #2"
];

?>

<form action="" method="post">
    <div class="table-responsive mb-3">
        <table class="table table-hover table-border">
            <thead class="table-success text-capitalize align-middle">
                <tr>
                    <th>alba</th>
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
                <?php $j=9999;?>
                <?php foreach ($toolsAlba as $tool) : ?>
                    <tr>
                        <td><?=$tool?></td>
                        <?php for ($i=1; $i <= $hari; $i++) : ?>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="limasAlba[<?=$i.$j?>]" value="ya">
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
            <button class="btn btn-success btn-sm" type="submit" name="saveLimasAlba">Save</button>
        </div>
    </div><br><br>
</form>