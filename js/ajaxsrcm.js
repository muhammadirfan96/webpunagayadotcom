// ambil elemen2 nya

const keyword = document.getElementById('keyword');
const container = document.getElementById('container');

// tambahlan event ketika keyword di tulis

keyword.addEventListener('keyup', function() {
	
	// buat object ajax

	const xhr = new XMLHttpRequest();

	// cek kesiapan ajax

	xhr.onreadystatechange = function() {

		if (xhr.readyState == 4 && xhr.status == 200) {
			container.innerHTML = xhr.responseText;

		}
	}

	// eksekusi ajax

	xhr.open('GET', '../ajax/datasrcm.php?keyword=' + keyword.value, true);
	xhr.send();

});

