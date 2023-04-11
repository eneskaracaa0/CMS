<?php require_once 'header.php';

$sorucek=$db->prepare('SELECT * FROM sorular ');
$sorucek->execute();
$sorular=$sorucek->fetchAll(PDO::FETCH_ASSOC);
$sorusayisi=$sorucek->rowcount();

?>

<div class="row">

        <div class="col-md-4"></div>
      

          <div class="col-md-4 mt-4">
              <center><h3>Yönetim Paneli</h3></center>
              <?php
              if($sorusayisi > 0 ){
               
                   
                
              
              ?>
            <table class="table table-success table-striped table bordered">
  <thead>
    <tr>
      <th scope="col">Sıra</th>
      <th scope="col">Soru</th>
      <th scope="col">İşlemler</th>
    </tr>
  </thead>
  <tbody>
    <?php 
    $numaralandirma=0;
      foreach ($sorular as $soru) { 
        $numaralandirma++;
        
        ?>
      
    <tr>
      <th scope="row"><?php echo $numaralandirma; ?></th>
      <td><?php echo $soru['soru'];?></td>
      <td>
        <a href="anketsorugüncelle.php?soru_id=<?php echo $soru['soru_id']; ?>"><i class="fa-solid fa-pen-to-square" style="color:green;"></i></a>
    <a href="anketsorusil.php?soru_id=<?php echo $soru['soru_id']; ?>"><i class="fa-solid fa-trash" ></i></a>
    </td>
   
    </tr>
    <?php }//endforeach ?>
  </tbody>
</table>
 <div class="d-grid gap-2 mt-4">
  <a href="anketsoruekle.php" class="btn btn-outline-success" >Soru Ekle</a>
</div>

<?php 
}else{
     echo '<div class="alert alert-danger">Görüntülenecek soru bulnamadı</div>';
} ?>




          </div>

          
            <div class="col-md-4"></div>


</div>








<?php require_once 'footer.php'; ?>