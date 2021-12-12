<?php 
require '../functions.php';

$keyword = $_GET["keyword"];

$query = "SELECT * FROM limas
				WHERE 
			diinput_oleh LIKE '%$keyword%' OR
			tanggal LIKE '%$keyword%' OR
			namaPeralatan LIKE '%$keyword%'
	";

$limaS = query($query);

$query2 = "SELECT * FROM nilailimas
				WHERE
			id IN (SELECT id FROM limas
				WHERE 
			diinput_oleh LIKE '%$keyword%' OR
			tanggal LIKE '%$keyword%' OR
			namaPeralatan LIKE '%$keyword%')
	";

$nilaiLimaS = query($query2);

?>

<h4 class="text-center">Database 5S</h4>

<div class="table-responsive mb-3">	
	<table class="table table-hover">
		<thead class="table-success text-center align-middle">
			<tr>
				<th scope="col">No</th>
				<th scope="col">Aksi</th>
				<th scope="col">Nama Peralatan</th>
				<th scope="col">Tanggal</th>
				<th scope="col">Diinput Oleh</th>
				<th scope="col">Area</th>
				<th scope="col">Saran / Kendala</th>
				<th scope="col">Sebelum</th>
				<th scope="col">Setelah</th>
			</tr>
		</thead>
		<?php $i = 1; ?>
		<?php foreach ($limaS as $row) : ?>

		<!-- <tbody> -->
			<tr>
				<th scope="row"><?= $i; ?></th>
				<td>
					<a href="../cetakLimaS.php?id=<?= $row["id"]; ?>&from=db5s">Cetak</a>
					<a href="hapus.php?id=<?= $row["id"];?>&tb=multi" onclick="return confirm('yakin?')">hapus</a>
				</td>
				<td><?=$row["namaPeralatan"]; ?></td>
				<td><?=$row["tanggal"]; ?></td>
				<td><?=$row["diinput_oleh"]; ?></td>
				<td><?=$row["area"]; ?></td>
				<td><?=$row["saran"]; ?></td>
				<td>
					<img src="../imgUpload/<?= $row["fotoSebelum"]; ?>" width="100px;" height="60px;">
				</td>
				<td>
					<img src="../imgUpload/<?= $row["fotoSetelah"]; ?>" width="100px;" height="60px;">
				</td>
			</tr>
		<!-- </tbody> -->
		<?php $i++; ?>
		<?php endforeach; ?>
	</table>
</div>

<h4 class="text-center">Database Nilai 5S</h4>

<div class="table-responsive mb-3">

	<table class="table table-hover">
		<thead class="table-danger text-center align-middle">
			<tr>
				<th scope="col">No</th>
				<?php for ($i=1; $i <= 25; $i++) : ?>
					<th scope="col">Nilai <?= $i ?></th>
				<?php endfor; ?>
			</tr>
		</thead>	
		<!-- <tbody> -->
			<?php $i = 1; ?>
			<?php foreach ($nilaiLimaS as $row) : ?>
			<tr>
				<th scope="row"><?= $i; ?></th>
				<?php for ($j=1; $j <= 25; $j++) : ?>
					<td><?= $row["nilai$j"] ?></td>
				<?php endfor; ?>
			</tr>
		<!-- </tbody> -->	
		<?php $i++; ?>
		<?php endforeach; ?>
	</table>
</div>