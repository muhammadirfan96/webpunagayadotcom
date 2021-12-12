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

$toolsBoiler = [
	"oil burner cooling fan #1",
	"oil burner cooling fan #2",
	"coal feeder 1a",
	"coal feeder 2a",
	"coal feeder 1b",
	"coal feeder 2b",
	"coal feeder 1c",
	"coal feeder 2c",
	"coal feeder 1d",
	"coal feeder 2d",
	"coal feeder 1e",
	"coal feeder 2e",
	"coal feeder 1f",
	"coal feeder 2f",
	"idf 1a",
	"idf 2a",
	"idf 1b",
	"idf 2b",
	"cooling fan 1a",
	"cooling fan 2a",
	"cooling fan 1b",
	"cooling fan 2b",
	"valve drain + sampling #1",
	"valve drain + sampling #2",
	"feeding mat bed #1",
	"feeding mat bed #2",
	"sootblower C1,C2,C3,C4 #1",
	"sootblower C1,C2,C3,C4 #2",
	"sootblower C5,C6,C7,C8 #1",
	"sootblower C5,C6,C7,C8 #2",
	"sootblower B1,B2,B3,B4 #1",
	"sootblower B1,B2,B3,B4 #2",
	"sootblower B5,B6,B7,B8 #1",
	"sootblower B5,B6,B7,B8 #2",
	"sootblower B9,B10,B1,B12 #1",
	"sootblower B9,B10,B1,B12 #2",
	"sootblower B13,B14,B15,B16 #1",
	"sootblower B13,B14,B15,B16 #2",
	"sootblower B17,B18,B19,B20 #1",
	"sootblower B17,B18,B19,B20 #2",
	"sootblower B21,B21,B23,B24 #1",
	"sootblower B21,B21,B23,B24 #2",
	"sootblower B25,B26,B27,B28 #1",
	"sootblower B25,B26,B27,B28 #2",
	"paf 1a",
	"paf 2a",
	"paf 1b",
	"paf 2b",
	"saf 1a",
	"saf 2a",
	"saf 1b",
	"saf 2b",
	"hpff 1a",
	"hpff 2a",
	"hpff 1b",
	"hpff 2b",
	"hpff 1c",
	"hpff 2c",
	"motor bottom ash cooler 1a",
	"motor bottom ash cooler 2a",
	"motor bottom ash cooler 1b",
	"motor bottom ash cooler 2b",
	"MOV to slagcooler #1",
	"MOV to slagcooler #2",
	"lower burner 1a",
	"lower burner 2a",
	"lower burner 1b",
	"lower burner 2b",
	"lower burner 1c",
	"lower burner 2c",
	"lower burner 1d",
	"lower burner 2d"
];

?>

<form action="" method="post">
    <div class="table-responsive mb-3">
        <table class="table table-hover table-border">
            <thead class="table-success text-capitalize align-middle">
                <tr>
                    <th>boiler</th>
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
                <?php $j=99;?>
                <?php foreach ($toolsBoiler as $tool) : ?>
                    <tr>
                        <td><?=$tool?></td>
                        <?php for ($i=1; $i <= $hari; $i++) : ?>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="limasBoiler[<?=$i.$j?>]" value="ya">
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
            <button class="btn btn-success btn-sm" type="submit" name="saveLimasBoiler">Save</button>
        </div>
    </div><br><br>
</form>