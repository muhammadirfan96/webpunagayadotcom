// ambil elemen2 nya

const unit1 = document.getElementById('unit1');
const unit2 = document.getElementById('unit2');
const common = document.getElementById('common');
const tabel = document.getElementById('tabel');

// tambahlan event ketika unit1 di tekan

unit1.addEventListener('click', function() {
	
	// buat object ajax
	const xhr = new XMLHttpRequest();

	// cek kesiapan ajax
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			tabel.innerHTML = xhr.responseText;
		}
	}

	// eksekusi ajax
	xhr.open('GET', '../ajax/datainputscheduleunit1.php', true);
	xhr.send();

});

unit2.addEventListener('click', function() {
	
	// buat object ajax
	const xhr = new XMLHttpRequest();

	// cek kesiapan ajax
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			tabel.innerHTML = xhr.responseText;
		}
	}

	// eksekusi ajax
	xhr.open('GET', '../ajax/datainputscheduleunit2.php', true);
	xhr.send();

});

common.addEventListener('click', function() {
	
	// buat object ajax
	const xhr = new XMLHttpRequest();

	// cek kesiapan ajax
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			tabel.innerHTML = xhr.responseText;
		}
	}

	// eksekusi ajax
	xhr.open('GET', '../ajax/datainputschedulecommon.php', true);
	xhr.send();

});


