<?php require_once 'header.php' ?>

<div class="container-fluid p-2">
	<div class="row" style="margin-bottom: -20px;">


<?php 
		$randevusor=$db->prepare("SELECT id FROM randevu");
		$randevusor->execute();
		$randevusayisi = $randevusor->rowCount();
		?>
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Toplam <b>Randevu</b> Sayısı</div>
							<div class="h4 mb-0 font-weight-bold text-gray-800"><?php echo $randevusayisi; ?></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-listd fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>


		<?php 
		$bitenrandevu=$db->prepare("SELECT id FROM randevu WHERE durum='Bitti'");
		$bitenrandevu->execute();
		$bitenrandevucek = $bitenrandevu->rowCount();
		?>
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-success shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-success text-uppercase mb-1">Biten <b>Radevu</b> Sayısı</div>
							<div class="h4 mb-0 font-weight-bold text-gray-800"><?php echo $bitenrandevucek; ?></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-calendar-check fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<?php 
		$beklemederandevu=$db->prepare("SELECT id FROM randevu WHERE durum='Beklemede'");
		$beklemederandevu->execute();
		$beklemederandevucek = $beklemederandevu->rowCount();
		?>
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-info shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-success text-uppercase mb-1">Beklemde <b>Radevu</b> Sayısı</div>
							<div class="h4 mb-0 font-weight-bold text-gray-800"><?php echo $beklemederandevucek; ?></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-calendar-check fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>

		<?php 
		$acilrandevu=$db->prepare("SELECT id FROM randevu WHERE durum='Acil'");
		$acilrandevu->execute();
		$acilrandevucek = $acilrandevu->rowCount();
		?>
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-danger shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Acil <b>Proje</b> Sayısı</div>
							<div class="h4 mb-0 font-weight-bold text-gray-800"><?php echo $acilrandevucek; ?></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-calendar-plus fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card card-primary">


				<div class="card-header">
					<h5 class="text-primary font-weight-bold">Randevu Listesi</h5>
				</div>

				<div class="card-body">

					<table class="table table-bordered table-hover" id="randevular">
						<thead>
							<tr>
								<th>#</th>
								<th>Başlık</th>
								<th>Tarih</th>
								<th>İsim</th>
								<th>Telefon</th>
								<th>Mail</th>
								<th>Adres</th>
								<th>Durum</th>
								<th>İşlem</th>
							</tr>
						</thead>
						<tbody>
							
							<?php foreach (cok("SELECT * FROM randevu INNER JOIN musteri ON musteri.musteri_id=randevu.musteri") as $key => $deger): ?>
								<tr>
									<td><?php echo $deger['id'] ?></td>
									<td><?php echo $deger['baslik'] ?></td>
									<td><?php echo $deger['tarih'] ?></td>
									<td><?php echo $deger['musteri_isim'] ?></td>
									<td><?php echo $deger['musteri_telefon'] ?></td>
									<td><?php echo $deger['musteri_mail'] ?></td>
									<td><?php echo $deger['adres'] ?></td>
									<td><?php echo durumlar()[$deger['durum']] ?></td>
									<td>
										<a href="randevuduzenle.php?id=<?php echo $deger['id'] ?>" class="btn btn-success btn-sm">Düzenle</a>
										<a href="randevuduzenle.php?id=<?php echo $deger['id'] ?>" class="btn btn-danger btn-sm">Sil</a>
									</td>
								</tr>
							<?php endforeach ?>

						</tbody>
					</table>

				</div>

			</div>
		</div>
	</div>
</div>


<?php require_once 'footer.php' ?>

<script>
	$(document).ready( function () {
		$('#randevular').DataTable({
			language:tr_dil
		});
	} );
</script>