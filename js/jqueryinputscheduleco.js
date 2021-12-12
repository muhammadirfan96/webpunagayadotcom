$(document).ready(function() {
    // event ketika tombol unit 1 di tekan
    $('#unit1').on('click', function() {
        $('#tabel').load('../ajax/datainputscheduleunit1.php');
    });

     // event ketika tombol unit 2 di tekan
     $('#unit2').on('click', function() {
        $('#tabel').load('../ajax/datainputscheduleunit2.php');
    });

     // event ketika tombol common di tekan
     $('#common').on('click', function() {
        $('#tabel').load('../ajax/datainputschedulecommon.php');
    });
});