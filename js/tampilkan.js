const hide = document.querySelector('.hide');
const show = document.querySelector('.show');
const tabel = document.querySelector('.tabel');


show.addEventListener('click', 
	function tampil() {
	tabel.style.display = 'block';
	}
);

hide.addEventListener('click', 
	function sembunyi() {
	tabel.style.display = 'none';
	}
);