<?php 
require_once 'header.php';
if(!isset($_GET['soru_id'])){
    header('Location:index.php');
    exit();
}

$gelen_id=filtrele($_GET['soru_id']);
$sorucek=$db->prepare('SELECT * FROM   sorular  WHERE soru_id=? ');
$sorucek->execute([
    $gelen_id
]);
$sorular=$sorucek->fetch(PDO::FETCH_ASSOC);

?>

<div class="row">

        <div class="col-md-4"></div>
      

          <div class="col-md-4 mt-4">
            <center><h2>Güncelleme işlemleri</h2></center>
            <form method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Anket Sorusu</label>
    <input type="text" class="form-control form-control-sm degistir" name="soru" value="<?php echo $sorular['soru'] ;?>" >
    <div id="emailHelp" class="form-text">Lütfen Boş Bırakmayınız.</div>
  </div>
  
  <button type="submit" class="btn btn-primary" value="Soru Guncelle" name="guncelle" >Soru Güncelle</button>
</form>

<?php

if(isset($_POST['guncelle'])){

   $soru=filtrele($_POST['soru']);
   $soruguncelle=$db->prepare('UPDATE sorular SET soru=? WHERE soru_id=?');
   $soruguncelle->execute([
    $soru,
    $gelen_id
   ]);
   if($soruguncelle){
    header('Location:anketsoruları.php');
    exit();
   }else{
      echo '<div class="alert alert-danger">Üzgünüm bir hata oluştu. </div>';
   }


}

?>
              




          </div>

          
            <div class="col-md-4"></div>


</div>

<?php   require_once 'footer.php'; ?> 