<?php 

require '../functions.php';

$keyword = $_GET["keyword"];

$query = "SELECT * FROM srcm 
				WHERE 
			diinput_oleh LIKE '%$keyword%' OR
			tanggal LIKE '%$keyword%' OR
			nomorSr LIKE '%$keyword%' OR
			area LIKE '%$keyword%'
	";

$srcm = query($query);

?>

<div class="table-responsive">
	<table class="table table-hover">
		<thead class="table-success text-center text-capitalize align-middle">
			<tr>
				<th scope="col">no</th>
				<th scope="col">aksi</th>
				<th scope="col">ket</th>
				<th scope="col">diinput oleh</th>
				<th scope="col">nomor SR</th>
				<th scope="col">tanggal</th>
				<th scope="col">unit</th>
				<th scope="col">area</th>
				<th scope="col">nama peralatan</th>
				<th scope="col">KKS</th>
				<th scope="col">uraian gangguan 1</th>
				<th scope="col">uraian gangguan 2</th>
				<th scope="col">normal operasi 1</th>
				<th scope="col">normal operasi 2</th>
				<th scope="col">gejala 1</th>
				<th scope="col">gejala 2</th>
				<th scope="col">prioritas</th>
				<th scope="col">akibat kerusakan 1</th>
				<th scope="col">akibat kerusakan 2</th>
				<th scope="col">kemungkinan dampak1</th>
				<th scope="col">kemungkinan dampak2</th>
				<th scope="col">tindakan sementara 1</th>
				<th scope="col">tindakan sementara 2</th>
				<th scope="col">tindakan sementara 3</th>			
				<th scope="col">evidence1</th>
				<th scope="col">evidence2</th>
			</tr>
		</thead>	

		<?php $i = 1; ?>	
		<?php foreach ($srcm as $row) : ?>
		<tr>
			<th scope="row"><?= $i; ?></th>
			<td>
				<a href="../cetakSrCm.php?id=<?= $row["id"];?>&cetak=dbsrcm">cetak</a><br><hr style="color: black; margin: 3px;">
				<a href="hapus.php?id=<?= $row["id"];?>" onclick="return confirm('yakin?')">hapus</a>
			</td>
			<td><?= $row["ket"]; ?></td>
			<td><?= $row["diinput_oleh"]; ?></td>
			<td><?= $row["nomorSr"] ?></td>
			<td><?= $row["tanggal"] ?></td>
			<td><?= $row["unit"]; ?></td>
			<td><?= $row["area"]; ?></td>
			<td><?= $row["namaPeralatan"]; ?></td>
			<td><?= $row["kks"]; ?></td>
			<td><?= $row["uraianGangguan1"]; ?></td>
			<td><?= $row["uraianGangguan2"]; ?></td>
			<td><?= $row["normalOperasi1"]; ?></td>
			<td><?= $row["normalOperasi2"]; ?></td>
			<td><?= $row["gejala1"]; ?></td>
			<td><?= $row["gejala2"]; ?></td>
			<td><?= $row["prioritas"]; ?></td>
			<td><?= $row["akibatKerusakan1"]; ?></td>
			<td><?= $row["akibatKerusakan2"]; ?></td>
			<td><?= $row["kemungkinanDampak1"]; ?></td>
			<td><?= $row["kemungkinanDampak2"]; ?></td>
			<td><?= $row["tindakanSementara1"]; ?></td>
			<td><?= $row["tindakanSementara2"]; ?></td>
			<td><?= $row["tindakanSementara3"]; ?></td>			
			<td>
				<img src="../imgUpload/<?= $row["evidence1"]; ?>" width="100px;" height="60px;">
			</td>
			<td>
				<img src="../imgUpload/<?= $row["evidence2"]; ?>" width="100px;" height="60px;">
			</td>
		</tr>
		<?php $i++; ?>
		<?php endforeach; ?>
	</table>
</div>