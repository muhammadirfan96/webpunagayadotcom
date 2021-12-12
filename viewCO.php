<?php

$hariIni = date('Y-m-d');
$kemarin = date('Y-m-d', strtotime("-1 day", strtotime($hariIni)));

// UNIT SATU
$hariIniUnit1 = query("SELECT * FROM schedulesatu WHERE tanggal = '$hariIni'")[0];
$kemarinUnit1 = query("SELECT * FROM schedulesatu WHERE tanggal = '$kemarin'")[0];

//cwp c booster pump
if ($hariIniUnit1["cwpcboosterpumpa"] !== $kemarinUnit1["cwpcboosterpumpa"] || $hariIniUnit1["cwpcboosterpumpb"] !== $kemarinUnit1["cwpcboosterpumpb"]) {
    $cwpc = "change over";
    if (!empty($hariIniUnit1["cwpcboosterpumpa"])) {
        $cwpc .= " CWP C BOOSTER PUMP B ke A";
    } else {
        $cwpc .= " CWP C BOOSTER PUMP A ke B";
    }
} else {
    $cwpc = "";
}

//cwp d booster pump
if ($hariIniUnit1["cwpdboosterpumpa"] !== $kemarinUnit1["cwpdboosterpumpa"] || $hariIniUnit1["cwpdboosterpumpb"] !== $kemarinUnit1["cwpdboosterpumpb"]) {
    $cwpd = "change over";
    if (!empty($hariIniUnit1["cwpdboosterpumpa"])) {
        $cwpd .= " CWP D BOOSTER PUMP B ke A";
    } else {
        $cwpd .= " CWP D BOOSTER PUMP A ke B";
    }
} else {
    $cwpd = "";
}

//ccwp
if ($hariIniUnit1["ccwp1a"] !== $kemarinUnit1["ccwp1a"] || $hariIniUnit1["ccwp1b"] !== $kemarinUnit1["ccwp1b"]) {
    $ccwp1 = "change over";
    if (!empty($hariIniUnit1["ccwp1a"])) {
        $ccwp1 .= " CCWP 1 B ke A";
    } else {
        $ccwp1 .= " CCWP 1 A ke B";
    }
} else {
    $ccwp1 = "";
}

//cep
if ($hariIniUnit1["cep1a"] !== $kemarinUnit1["cep1a"] || $hariIniUnit1["cep1b"] !== $kemarinUnit1["cep1b"]) {
    $cep1 = "change over";
    if (!empty($hariIniUnit1["cep1a"])) {
        $cep1 .= " CEP 1 B ke A";
    } else {
        $cep1 .= " CEP 1 A ke B";
    }
} else {
    $cep1 = "";
}

// vacum
if ($hariIniUnit1["vacuumpump1a"] !== $kemarinUnit1["vacuumpump1a"] || $hariIniUnit1["vacuumpump1b"] !== $kemarinUnit1["vacuumpump1b"]) {
    $vacuum1 = "change over";
    if (!empty($hariIniUnit1["vacuumpump1a"])) {
        $vacuum1 .= " VACUUM PUMP 1 B ke A";
    } else {
        $vacuum1 .= " VACUUM PUMP 1 A ke B";
    }
} else {
    $vacuum1 = "";
}

// bfp
if ($hariIniUnit1["bfp1a"] !== $kemarinUnit1["bfp1a"] || $hariIniUnit1["bfp1b"] !== $kemarinUnit1["bfp1b"] || $hariIniUnit1["bfp1c"] !== $kemarinUnit1["bfp1c"]) {
    $bfp1 = "change over";
    if ($hariIniUnit1["bfp1a"] === $kemarinUnit1["bfp1a"]) {
        if (!empty($hariIniUnit1["bfp1b"])) {
            $bfp1 .= " FEED WATER PUMP 1 C ke B";
        } else {
            $bfp1 .= " FEED WATER PUMP 1 B ke C";
        }
    }

    if ($hariIniUnit1["bfp1b"] === $kemarinUnit1["bfp1b"]) {
        if (!empty($hariIniUnit1["bfp1a"])) {
            $bfp1 .= " FEED WATER PUMP 1 C ke A";
        } else {
            $bfp1 .= " FEED WATER PUMP 1 A ke C";
        }
    }

    if ($hariIniUnit1["bfp1c"] === $kemarinUnit1["bfp1c"]) {
        if (!empty($hariIniUnit1["bfp1a"])) {
            $bfp1 .= " FEED WATER PUMP 1 B ke A";
        } else {
            $bfp1 .= " FEED WATER PUMP 1 A ke B";
        }
    }
} else {
    $bfp1 = "";
}

// eh oil
if ($hariIniUnit1["ehoilpump1a"] === $kemarinUnit1["ehoilpump1a"]) {
    if (!empty($hariIniUnit1["ehoilpump1b"])) {
        $ehoilpump1 = "WARMING UP EH OIL PUMP 1 B";
    } else {
        $ehoilpump1 = "";
    }
} elseif ($hariIniUnit1["ehoilpump1b"] === $kemarinUnit1["ehoilpump1b"]) {
    if (!empty($hariIniUnit1["ehoilpump1a"])) {
        $ehoilpump1 = "WARMING UP EH OIL PUMP 1 A";
    } else {
        $ehoilpump1 = "";
    }
}

// gland seal fan
if ($hariIniUnit1["glandsealfan1a"] !== $kemarinUnit1["glandsealfan1a"] || $hariIniUnit1["glandsealfan1b"] !== $kemarinUnit1["glandsealfan1b"]) {
    $glandsealfan1 = "change over";
    if (!empty($hariIniUnit1["glandsealfan1a"])) {
        $glandsealfan1 .= " GLAND SEAL FAN 1 B ke A";
    } else {
        $glandsealfan1 .= " GLAND SEAL FAN 1 A ke B";
    }
} else {
    $glandsealfan1 = "";
}

// hpff
if ($hariIniUnit1["hpff1a"] !== $kemarinUnit1["hpff1a"] || $hariIniUnit1["hpff1b"] !== $kemarinUnit1["hpff1b"] || $hariIniUnit1["hpff1c"] !== $kemarinUnit1["hpff1c"]) {
    $hpff1 = "change over";
    if ($hariIniUnit1["hpff1a"] === $kemarinUnit1["hpff1a"]) {
        if (!empty($hariIniUnit1["hpff1b"])) {
            $hpff1 .= " HPFF 1 C ke B";
        } else {
            $hpff1 .= " HPFF 1 B ke C";
        }
    }

    if ($hariIniUnit1["hpff1b"] === $kemarinUnit1["hpff1b"]) {
        if (!empty($hariIniUnit1["hpff1a"])) {
            $hpff1 .= " HPFF 1 C ke A";
        } else {
            $hpff1 .= " HPFF 1 A ke C";
        }
    }

    if ($hariIniUnit1["hpff1c"] === $kemarinUnit1["hpff1c"]) {
        if (!empty($hariIniUnit1["hpff1a"])) {
            $hpff1 .= " HPFF 1 B ke A";
        } else {
            $hpff1 .= " HPFF 1 A ke B";
        }
    }
} else {
    $hpff1 = "";
}

// oge fan
if ($hariIniUnit1["ogefan1a"] !== $kemarinUnit1["ogefan1a"] || $hariIniUnit1["ogefan1b"] !== $kemarinUnit1["ogefan1b"]) {
    $ogefan1 = "change over";
    if (!empty($hariIniUnit1["ogefan1a"])) {
        $ogefan1 .= " OIL GAS EXTRACTOR FAN 1 B ke A";
    } else {
        $ogefan1 .= " OIL GAS EXTRACTOR FAN 1 A ke B";
    }
} else {
    $ogefan1 = "";
}

// cool fan
if ($hariIniUnit1["coolingfan1a"] !== $kemarinUnit1["coolingfan1a"] || $hariIniUnit1["coolingfan1b"] !== $kemarinUnit1["coolingfan1b"]) {
    $coolingfan1 = "change over";
    if (!empty($hariIniUnit1["coolingfan1a"])) {
        $coolingfan1 .= " COOLING FAN 1 B ke A";
    } else {
        $coolingfan1 .= " COOLING FAN 1 A ke B";
    }
} else {
    $coolingfan1 = "";
}

// ball cleaning
if (!empty($hariIniUnit1["ballcleaning1"])) {
    $ballcleaning1 = "PENGOPERASIAN BALL CLEANING #1";
} else {
    $ballcleaning1 = "";
}

// UNIT DUA
$hariIniUnit2 = query("SELECT * FROM scheduledua WHERE tanggal = '$hariIni'")[0];
$kemarinUnit2 = query("SELECT * FROM scheduledua WHERE tanggal = '$kemarin'")[0];

//cwp a booster pump
if ($hariIniUnit2["cwpaboosterpumpa"] !== $kemarinUnit2["cwpaboosterpumpa"] || $hariIniUnit2["cwpaboosterpumpb"] !== $kemarinUnit2["cwpaboosterpumpb"]) {
    $cwpa = "change over";
    if (!empty($hariIniUnit2["cwpaboosterpumpa"])) {
        $cwpa .= " CWP A BOOSTER PUMP B ke A";
    } else {
        $cwpa .= " CWP A BOOSTER PUMP A ke B";
    }
} else {
    $cwpa = "";
}

//cwp b booster pump
if ($hariIniUnit2["cwpbboosterpumpa"] !== $kemarinUnit2["cwpbboosterpumpa"] || $hariIniUnit2["cwpbboosterpumpb"] !== $kemarinUnit2["cwpbboosterpumpb"]) {
    $cwpb = "change over";
    if (!empty($hariIniUnit2["cwpbboosterpumpa"])) {
        $cwpb .= " CWP B BOOSTER PUMP B ke A";
    } else {
        $cwpb .= " CWP B BOOSTER PUMP A ke B";
    }
} else {
    $cwpb = "";
}

//ccwp
if ($hariIniUnit2["ccwp2a"] !== $kemarinUnit2["ccwp2a"] || $hariIniUnit2["ccwp2b"] !== $kemarinUnit2["ccwp2b"]) {
    $ccwp2 = "change over";
    if (!empty($hariIniUnit2["ccwp2a"])) {
        $ccwp2 .= " CCWP 2 B ke A";
    } else {
        $ccwp2 .= " CCWP 2 A ke B";
    }
} else {
    $ccwp2 = "";
}

//cep
if ($hariIniUnit2["cep2a"] !== $kemarinUnit2["cep2a"] || $hariIniUnit2["cep2b"] !== $kemarinUnit2["cep2b"]) {
    $cep2 = "change over";
    if (!empty($hariIniUnit2["cep2a"])) {
        $cep2 .= " CEP 2 B ke A";
    } else {
        $cep2 .= " CEP 2 A ke B";
    }
} else {
    $cep2 = "";
}

// vacum
if ($hariIniUnit2["vacuumpump2a"] !== $kemarinUnit2["vacuumpump2a"] || $hariIniUnit2["vacuumpump2b"] !== $kemarinUnit2["vacuumpump2b"]) {
    $vacuum2 = "change over";
    if (!empty($hariIniUnit2["vacuumpump2a"])) {
        $vacuum2 .= " VACUUM PUMP 2 B ke A";
    } else {
        $vacuum2 .= " VACUUM PUMP 2 A ke B";
    }
} else {
    $vacuum2 = "";
}

// bfp
if ($hariIniUnit2["bfp2a"] !== $kemarinUnit2["bfp2a"] || $hariIniUnit2["bfp2b"] !== $kemarinUnit2["bfp2b"] || $hariIniUnit2["bfp2c"] !== $kemarinUnit2["bfp2c"]) {
    $bfp2 = "change over";
    if ($hariIniUnit2["bfp2a"] === $kemarinUnit2["bfp2a"]) {
        if (!empty($hariIniUnit2["bfp2b"])) {
            $bfp2 .= " FEED WATER PUMP 2 C ke B";
        } else {
            $bfp2 .= " FEED WATER PUMP 2 B ke C";
        }
    }

    if ($hariIniUnit2["bfp2b"] === $kemarinUnit2["bfp2b"]) {
        if (!empty($hariIniUnit2["bfp2a"])) {
            $bfp2 .= " FEED WATER PUMP 2 C ke A";
        } else {
            $bfp2 .= " FEED WATER PUMP 2 A ke C";
        }
    }

    if ($hariIniUnit2["bfp2c"] === $kemarinUnit2["bfp2c"]) {
        if (!empty($hariIniUnit2["bfp2a"])) {
            $bfp2 .= " FEED WATER PUMP 2 B ke A";
        } else {
            $bfp2 .= " FEED WATER PUMP 2 A ke B";
        }
    }
} else {
    $bfp2 = "";
}

// eh oil
if ($hariIniUnit2["ehoilpump2a"] === $kemarinUnit2["ehoilpump2a"]) {
    if (!empty($hariIniUnit2["ehoilpump2b"])) {
        $ehoilpump2 = "WARMING UP EH OIL PUMP 2 B";
    } else {
        $ehoilpump2 = "";
    }
} elseif ($hariIniUnit2["ehoilpump2b"] === $kemarinUnit2["ehoilpump2b"]) {
    if (!empty($hariIniUnit2["ehoilpump2a"])) {
        $ehoilpump2 = "WARMING UP EH OIL PUMP 2 A";
    } else {
        $ehoilpump2 = "";
    }
}

// gland seal fan
if ($hariIniUnit2["glandsealfan2a"] !== $kemarinUnit2["glandsealfan2a"] || $hariIniUnit2["glandsealfan2b"] !== $kemarinUnit2["glandsealfan2b"]) {
    $glandsealfan2 = "change over";
    if (!empty($hariIniUnit2["glandsealfan2a"])) {
        $glandsealfan2 .= " GLAND SEAL FAN 2 B ke A";
    } else {
        $glandsealfan2 .= " GLAND SEAL FAN 2 A ke B";
    }
} else {
    $glandsealfan2 = "";
}

// hpff
if ($hariIniUnit2["hpff2a"] !== $kemarinUnit2["hpff2a"] || $hariIniUnit2["hpff2b"] !== $kemarinUnit2["hpff2b"] || $hariIniUnit2["hpff2c"] !== $kemarinUnit2["hpff2c"]) {
    $hpff2 = "change over";
    if ($hariIniUnit2["hpff2a"] === $kemarinUnit2["hpff2a"]) {
        if (!empty($hariIniUnit2["hpff2b"])) {
            $hpff2 .= " HPFF 2 C ke B";
        } else {
            $hpff2 .= " HPFF 2 B ke C";
        }
    }

    if ($hariIniUnit2["hpff2b"] === $kemarinUnit2["hpff2b"]) {
        if (!empty($hariIniUnit2["hpff2a"])) {
            $hpff2 .= " HPFF 2 C ke A";
        } else {
            $hpff2 .= " HPFF 2 A ke C";
        }
    }

    if ($hariIniUnit2["hpff2c"] === $kemarinUnit2["hpff2c"]) {
        if (!empty($hariIniUnit2["hpff2a"])) {
            $hpff2 .= " HPFF 2 B ke A";
        } else {
            $hpff2 .= " HPFF 2 A ke B";
        }
    }
} else {
    $hpff2 = "";
}

// oge fan
if ($hariIniUnit2["ogefan2a"] !== $kemarinUnit2["ogefan2a"] || $hariIniUnit2["ogefan2b"] !== $kemarinUnit2["ogefan2b"]) {
    $ogefan2 = "change over";
    if (!empty($hariIniUnit2["ogefan2a"])) {
        $ogefan2 .= " OIL GAS EXTRACTOR FAN 2 B ke A";
    } else {
        $ogefan2 .= " OIL GAS EXTRACTOR FAN 2 A ke B";
    }
} else {
    $ogefan2 = "";
}

// cool fan
if ($hariIniUnit2["coolingfan2a"] !== $kemarinUnit2["coolingfan2a"] || $hariIniUnit2["coolingfan2b"] !== $kemarinUnit2["coolingfan2b"]) {
    $coolingfan2 = "change over";
    if (!empty($hariIniUnit2["coolingfan2a"])) {
        $coolingfan2 .= " COOLING FAN 2 B ke A";
    } else {
        $coolingfan2 .= " COOLING FAN 2 A ke B";
    }
} else {
    $coolingfan2 = "";
}

// ball cleaning
if (!empty($hariIniUnit2["ballcleaning2"])) {
    $ballcleaning2 = "PENGOPERASIAN BALL CLEANING #2";
} else {
    $ballcleaning2 = "";
}

//COMMON
$hariIniCommon = query("SELECT * FROM schedulecommon WHERE tanggal = '$hariIni'")[0];
$kemarinCommon = query("SELECT * FROM schedulecommon WHERE tanggal = '$kemarin'")[0];

// compressor instrument service 
if ($hariIniCommon["compressorinstrumentservicea"] !== $kemarinCommon["compressorinstrumentservicea"] || $hariIniCommon["compressorinstrumentserviceb"] !== $kemarinCommon["compressorinstrumentserviceb"] || $hariIniCommon["compressorinstrumentservicec"] !== $kemarinCommon["compressorinstrumentservicec"]) {
    $compressorinstrumentservice = "change over";
    if ($hariIniCommon["compressorinstrumentservicea"] === $kemarinCommon["compressorinstrumentservicea"]) {
        if (!empty($hariIniCommon["compressorinstrumentserviceb"])) {
            $compressorinstrumentservice .= " COMPRESSOR INSTRUMENT & SERVICE C ke B";
        } else {
            $compressorinstrumentservice .= " COMPRESSOR INSTRUMENT & SERVICE B ke C";
        }
    }

    if ($hariIniCommon["compressorinstrumentserviceb"] === $kemarinCommon["compressorinstrumentserviceb"]) {
        if (!empty($hariIniCommon["compressorinstrumentservicea"])) {
            $compressorinstrumentservice .= " COMPRESSOR INSTRUMENT & SERVICE C ke A";
        } else {
            $compressorinstrumentservice .= " COMPRESSOR INSTRUMENT & SERVICE A ke C";
        }
    }

    if ($hariIniCommon["compressorinstrumentservicec"] === $kemarinCommon["compressorinstrumentservicec"]) {
        if (!empty($hariIniCommon["compressorinstrumentservicea"])) {
            $compressorinstrumentservice .= " COMPRESSOR INSTRUMENT & SERVICE B ke A";
        } else {
            $compressorinstrumentservice .= " COMPRESSOR INSTRUMENT & SERVICE A ke B";
        }
    }
} else {
    $compressorinstrumentservice = "";
}

// compressor conveying 
if ($hariIniCommon["compressorconveyinga"] !== $kemarinCommon["compressorconveyinga"] || $hariIniCommon["compressorconveyingb"] !== $kemarinCommon["compressorconveyingb"] || $hariIniCommon["compressorconveyingc"] !== $kemarinCommon["compressorconveyingc"]) {
    $compressorconveying = "change over";
    if ($hariIniCommon["compressorconveyinga"] === $kemarinCommon["compressorconveyinga"]) {
        if (!empty($hariIniCommon["compressorconveyingb"])) {
            $compressorconveying .= " COMPRESSOR CONVEYING C ke B";
        } else {
            $compressorconveying .= " COMPRESSOR CONVEYING B ke C";
        }
    }

    if ($hariIniCommon["compressorconveyingb"] === $kemarinCommon["compressorconveyingb"]) {
        if (!empty($hariIniCommon["compressorconveyinga"])) {
            $compressorconveying .= " COMPRESSOR CONVEYING C ke A";
        } else {
            $compressorconveying .= " COMPRESSOR CONVEYING A ke C";
        }
    }

    if ($hariIniCommon["compressorconveyingc"] === $kemarinCommon["compressorconveyingc"]) {
        if (!empty($hariIniCommon["compressorconveyinga"])) {
            $compressorconveying .= " COMPRESSOR CONVEYING B ke A";
        } else {
            $compressorconveying .= " COMPRESSOR CONVEYING A ke B";
        }
    }
} else {
    $compressorconveying = "";
}

// AC central equipment1
if ($hariIniCommon["ACcentralequipment1a"] !== $kemarinCommon["ACcentralequipment1a"] || $hariIniCommon["ACcentralequipment1b"] !== $kemarinCommon["ACcentralequipment1b"]) {
    $ACcentralequipment1 = "change over";
    if (!empty($hariIniCommon["ACcentralequipment1a"])) {
        $ACcentralequipment1 .= " AC CENTRAL EQUPMENT 1 B ke A";
    } else {
        $ACcentralequipment1 .= " AC CENTRAL EQUPMENT 1 A ke B";
    }
} else {
    $ACcentralequipment1 = "";
}

// AC central equipment2
if ($hariIniCommon["ACcentralequipment2a"] !== $kemarinCommon["ACcentralequipment2a"] || $hariIniCommon["ACcentralequipment2b"] !== $kemarinCommon["ACcentralequipment2b"]) {
    $ACcentralequipment2 = "change over";
    if (!empty($hariIniCommon["ACcentralequipment2a"])) {
        $ACcentralequipment2 .= " AC CENTRAL EQUPMENT 2 B ke A";
    } else {
        $ACcentralequipment2 .= " AC CENTRAL EQUPMENT 2 A ke B";
    }
} else {
    $ACcentralequipment2 = "";
}

// AC central ccr
if ($hariIniCommon["ACcentralccra"] !== $kemarinCommon["ACcentralccra"] || $hariIniCommon["ACcentralccrb"] !== $kemarinCommon["ACcentralccrb"]) {
    $ACcentralccr = "change over";
    if (!empty($hariIniCommon["ACcentralccra"])) {
        $ACcentralccr .= " AC CENTRAL CCR B ke A";
    } else {
        $ACcentralccr .= " AC CENTRAL CCR A ke B";
    }
} else {
    $ACcentralccr = "";
}

// warming up edg
if (!empty($hariIniCommon["warmingupedg"])) {
    $warmingUpEdg = "WARMING UP EDG";
} else {
    $warmingUpEdg = "";
}

// warming up aux boiler
if (!empty($hariIniCommon["warmingupauxboiler"])) {
    $warmingUpAuxBoiler = "WARMING UP AUX BOILER";
} else {
    $warmingUpAuxBoiler = "";
}
