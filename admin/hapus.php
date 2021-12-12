<?php 
session_start();
if(!isset($_SESSION["loginAdmin"])) {
	header("Location: loginAdmin.php");
	exit;
}

require '../functions.php';

$id = $_GET["id"];
$namaTable = $_SESSION["namaTable"];
$link = $_SESSION["link"];


if (hapus($id,$namaTable) > 0 ) {
		echo("
				<script>
					alert('database tabel $namaTable berhasil dihapus');
				</script>
			");
	} else {
		echo("
				<script>
					alert('database $namaTable gagal dihapus');
					document.location.href = '$link.php';
				</script>				
			");
	}

if (isset($_GET["tb"])) {
	$namaTable2 = $_SESSION["namaTable2"];
	if (hapus($id,$namaTable2) > 0 ) {
		echo("
				<script>
					alert('database $namaTable2 berhasil dihapus');
				</script>		
			");
	} else {
		echo("
				<script>
					alert('database $namaTable2 gagal dihapus');
					document.location.href = '$link.php';
				</script>			
			");
	}
	if (isset($_SESSION["namaTable3"])) {
		$namaTable3 = $_SESSION["namaTable3"];
		if (hapus($id,$namaTable3) > 0 ) {
			echo("
					<script>
						alert('database $namaTable3  berhasil dihapus');
					</script>		
				");
		} else {
			echo("
					<script>
						alert('database $namaTable3 gagal dihapus');
						document.location.href = '$link.php';
					</script>			
				");
		}
	}	
}

echo("
		<script>
			document.location.href = '$link.php';
		</script>			
	");

?>