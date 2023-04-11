<?php require_once 'header.php';?>
<?php require_once 'config.php';?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			
			<div class="card">
				<div class="card-header">
					<h5>Müşteri Ekleme İşlemi</h5>
				</div>
				<div class="card-body">
					<form id="FrmAddMember" method="POST" >
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>İsim Soyisim</label>
								<input type="text" name="musteri_isim" id="musteri_isim" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Mail Adresi</label>
								<input type="email" name="musteri_mail" id="musteri_mail" class="form-control">
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Telefon Numarası</label>
								<input type="text" name="musteri_telefon" id="musteri_telefon" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Adres</label>
								<input type="text" name="musteri_adres" id="musteri_adres" class="form-control">
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>TC Kimlik Numarası</label>
								<input type="text" name="musteri_tc" id="musteri_tc" class="form-control">
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-12">
								<label>Müşteri Hakkında Diğer Detaylar</label>
								<textarea name="musteri_detay" id="musteri_detay" class="form-control"></textarea>
							</div>
						</div>
                        <div class="form-group row">
                            <div class="col-md-9">
                                <p id="result"></p>
                            </div>
                        </div>
						<div class="text-center mt-4">
							<button type="button" name="musteriekle" id="musteriekle" onClick="SendForm('FrmAddMember','InsertMember','admin.php')" class="btn btn-primary btn-lg">Kaydet
                                <span class="myload"></span>
                            </button>
						</div>

					</form>
				</div>
			</div>

		</div>
	</div>
</div>
<script src="http://code.jquery.com/jquery-3.0.0.min.js"></script>
<script>

var SITE_URL="http://localhost/rezervasyontakip";
function SendFrom(FORMID,Operation,SendURL=""){
    //bu function çalıştığında myloada git bu htmle bas
    $(".myload").html('  <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>');
    $('musteriekle').prop("disabled",true); //çalışırken butonun disabled özelliğini true yap
    var myData=$("#form"+FORMID).serialize(); //formdaki verileri cek mydataya at

    //ajaxın özellikleri veriliyor operation ınsertmemberi arıcak
    $.ajax({
        type:"post",
        url:SITE_URL+'/ajax_islemler.php?page='+Operation,
        data:myData,
        success:function(data){
            $(".myload").html(""); //spinneri kapat
            $('musteriekle').prop("disabled",false);
            data=data.split(":::",2);//veriyi ikiye böldük
            var message=data[0]; //mesaj variablesi
              var mistake=data[1];  //hata variablı
              if(mistake == 'warning'){

                $('#result').html('<div class="alert alert-warning">'+message'</div>')
              }else if(mistake == 'danger'){

                 $('#result').html('<div class="alert alert-danger">'+message'</div>')

              }else if (mistake=='success'){
                $("form").trigger("reset");  //formu sıfırladık

                 $('#result').html('<div class="alert alert-success">'+message'</div>')

              }

        }

    })



}

</script>

<?php require_once 'footer.php'; ?>