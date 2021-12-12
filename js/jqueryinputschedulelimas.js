$(document).ready(function() {
    // event ketika tombol boiler di tekan
    $('#boiler').on('click', function() {
        $('#tabel').load('../ajax/datainputscheduleboiler.php');
    });

     // event ketika tombol turbin di tekan
     $('#turbin').on('click', function() {
        $('#tabel').load('../ajax/datainputscheduleturbin.php');
    });

     // event ketika tombol alba di tekan
     $('#alba').on('click', function() {
        $('#tabel').load('../ajax/datainputschedulealba.php');
    });
});