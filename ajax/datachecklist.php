<?php 
require '../functions.php';

$keyword = $_GET["keyword"];

$query = "SELECT * FROM checklist
				WHERE 
			diinput_oleh LIKE '%$keyword%' OR
			tanggal LIKE '%$keyword%' OR
			namaPeralatan LIKE '%$keyword%'
	";

$checklist = query($query);

$query2 = "SELECT * FROM jawaban
				WHERE
			id IN (SELECT id FROM checklist
				WHERE 
			diinput_oleh LIKE '%$keyword%' OR
			tanggal LIKE '%$keyword%' OR
			namaPeralatan LIKE '%$keyword%')
	";

$jawaban = query($query2);

$query3 = "SELECT * FROM komen
				WHERE
			id IN (SELECT id FROM checklist
				WHERE 
			diinput_oleh LIKE '%$keyword%' OR
			tanggal LIKE '%$keyword%' OR
			namaPeralatan LIKE '%$keyword%')
	";

$komen = query($query3);

?>

<h4 class="text-center">Database Checklist</h4>

<div class="table-responsive mb-3">	
	<table class="table table-hover">
		<thead class="table-success text-center align-middle">
			<tr>
				<th scope="col">No</th>
				<th scope="col">Aksi</th>
				<th scope="col">Nama Peralatan</th>
				<th scope="col">Tanggal</th>
				<th scope="col">Diinput Oleh</th>
				<th scope="col">Catatan</th>
			</tr>
		</thead>
		<?php $i = 1; ?>
		<?php foreach ($checklist as $row) : ?>

		<!-- <tbody> -->
			<tr>
				<th scope="row"><?= $i; ?></th>
				<td>
					<a href="../cetakHasilChecklist.php?id=<?= $row["id"]; ?>&from=db">Cetak</a>
					<a href="hapus.php?id=<?= $row["id"];?>&tb=multi" onclick="return confirm('yakin?')">hapus</a>
				</td>
				<td><?=$row["namaPeralatan"]; ?></td>
				<td><?=$row["tanggal"]; ?></td>
				<td><?=$row["diinput_oleh"]; ?></td>
				<td><?=$row["catatan"]; ?></td>
			</tr>
		<!-- </tbody> -->
		<?php $i++; ?>
		<?php endforeach; ?>
	</table>
</div>

<h4 class="text-center">Database Jawaban</h4>

<div class="table-responsive mb-3">

	<table class="table table-hover">
		<thead class="table-danger text-center align-middle">
			<tr>
				<th scope="col">No</th>
				<th scope="col">Nama Peralatan</th>
				<?php for ($i=1; $i <= 29; $i++) : ?>
					<th scope="col">Jawaban <?= $i ?></th>
				<?php endfor; ?>
			</tr>
		</thead>	
		<!-- <tbody> -->
			<?php $i = 1; ?>
			<?php foreach ($jawaban as $row) : ?>
			<tr>
				<th scope="row"><?= $i; ?></th>
				<td><?= $row["namaPeralatan"] ?></td>
				<?php for ($j=1; $j <= 29; $j++) : ?>
					<td><?= $row["jawaban$j"] ?></td>
				<?php endfor; ?>
			</tr>
		<!-- </tbody> -->	
		<?php $i++; ?>
		<?php endforeach; ?>
	</table>
</div>

<h4 class="text-center">Database Komen</h4>
<div class="table-responsive mb-3">
	<table class="table table-hover">
		<thead class="table-primary text-center align-middle">
			<tr>
				<th scope="col">No</th>
				<th scope="col">Nama Peralatan</th>
				<?php for ($i=1; $i <= 29; $i++) : ?>
					<th scope="col">Komen <?= $i ?></th>
				<?php endfor; ?>
			</tr>
		</thead>
		<!-- <tbody> -->
			<?php $i = 1; ?>
			<?php foreach ($komen as $row) : ?>
			<tr>
				<th scope="row"><?= $i; ?></th>
				<td><?= $row["namaPeralatan"] ?></td>
				<?php for ($j=1; $j <= 29; $j++) : ?>
					<td><?= $row["komen$j"] ?></td>
				<?php endfor; ?>
			</tr>
		<!-- </tbody> -->	
		<?php $i++; ?>
		<?php endforeach; ?>
	</table>
</div>