<?php require_once 'header.php';


?>

<div class="row">

        <div class="col-md-4"></div>
      

          <div class="col-md-4 mt-4">
            <center><h2>Anket Soru Ekleme İşlemleri</h2></center>
            <form method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Anket Sorusu</label>
    <input type="text" class="form-control form-control-sm degistir" name="soru" placeholder="Eklemek İstedğiniz Soruyu Yazınız" >
    <div id="emailHelp" class="form-text">Lütfen Boş Bırakmayınız.</div>
  </div>
  
  <button type="submit" class="btn btn-primary" value="Soru Ekle" name="soruekle" >Soru Ekle</button>
</form>

<?php

if(isset($_POST['soruekle'])){
    $ekleneceksoru=filtrele($_POST['soru']);
    $sorueklemeislemi=$db->prepare('INSERT INTO sorular SET soru=? ');
    $sorueklemeislemi->execute([
        $ekleneceksoru
    ]);
    if($sorueklemeislemi){
        header('Location:index.php');

    }else{
         echo '<div class="alert alert-danger">Üzgünüm bir hata oluştu. </div>';
    }
    

}

?>
              




          </div>

          
            <div class="col-md-4"></div>


</div>
    
  


<?php require_once 'footer.php'; ?>