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

$tools3 = [
	"air compressor instrument & service a",
	"air compressor instrument & service b",
    "air compressor instrument & service c",
    "air compressor conveying a",
    "air compressor conveying b",
    "air compressor conveying c",
    "AC central equipment 1 a",
    "AC central equipment 1 b",
    "AC central equipment 2 a",
    "AC central equipment 2 b",
    "AC central ccr a",
    "AC central ccr b"
];

?>

<form action="" method="post">
    <div class="table-responsive mb-3">
        <table class="table table-hover table-border">
            <thead class="table-success text-capitalize align-middle">
                <tr>
                    <th>common</th>
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
                <?php foreach ($tools3 as $tool) : ?>
                    <tr>
                        <td><?=$tool?></td>
                        <?php for ($i=1; $i <= $hari; $i++) : ?>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="common[<?=$i.$j?>]" value="ya">
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
            <button class="btn btn-success btn-sm" type="submit" name="savecommon">Save</button>
        </div>
    </div><br><br>
</form>