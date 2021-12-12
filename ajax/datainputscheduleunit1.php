<?php
require '../functions.php';

$bln30 = ["04", "06", "09", "11"];
$bln = date('m');
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

$tools = [
    "cwp c booster pump a",
    "cwp c booster pump b",
    "cwp d booster pump a",
    "cwp d booster pump b",
    "ccwp 1a",
    "ccwp 1b",
    "cep 1a",
    "cep 1b",
    "vacuum pump 1a",
    "vacuum pump 1b",
    "bfp 1a",
    "bfp 1b",
    "bfp 1c",
    "eh oil pump 1a",
    "eh oil pump 1b",
    "gland seal fan 1a",
    "gland seal fan 1b",
    "hpff 1a",
    "hpff 1b",
    "hpff 1c",
    "oge fan 1a",
    "oge fan 1b",
    "cooling fan 1a",
    "cooling fan 1b",
    "ball cleaning #1"
];

?>

<form action="" method="post">
    <div class="table-responsive mb-3">
        <table class="table table-hover table-border">
            <thead class="table-success text-capitalize align-middle">
                <tr>
                    <th>unit 1</th>
                    <th colspan="<?= $hari ?>" class="text-center"><?= date('F Y') ?></th>
                </tr>
                <tr>
                    <th class="text-center">nama peralatan</th>
                    <?php for ($i = 1; $i <= $hari; $i++) : ?>
                        <th><?= $i; ?></th>
                    <?php endfor ?>
                </tr>
            </thead>
            <tbody>
                <?php $j = 99; ?>
                <?php foreach ($tools as $tool) : ?>
                    <tr>
                        <td><?= $tool ?></td>
                        <?php for ($i = 1; $i <= $hari; $i++) : ?>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="unitsatu[<?= $i . $j ?>]" value="ya">
                                </div>
                            </td>
                        <?php endfor ?>
                    </tr>
                    <?php $j++ ?>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
    <div class="position-relative">
        <div class="position-absolute top-0 end-0">
            <button class="btn btn-success btn-sm" type="submit" name="savesatu">Save</button>
        </div>
    </div><br><br>
</form>