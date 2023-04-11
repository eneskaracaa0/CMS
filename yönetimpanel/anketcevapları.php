<?php require_once 'header.php';
$sorucek=$db->prepare('SELECT * FROM sorular ');
$sorucek->execute();
$sorular=$sorucek->fetchAll(PDO::FETCH_ASSOC);
$sorusayisi=$sorucek->rowcount();


?>



<div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <?php if($sorusayisi > 0){
                $numaralandirma=0;
                foreach($sorular as $soru ){
                    $numaralandirma++;

                 ?>
            <div class="accordion" id="accordionExample">
  
  
  <div class="accordion-item mt-4">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a<?php echo $numaralandirma; ?>" aria-expanded="false" aria-controls="collapseThree">
        <?php echo $numaralandirma." - ".$soru['soru']; ?>
      </button>
    </h2>
    <div id="a<?php echo $numaralandirma; ?>" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">

      <?php
      $cevaplaricek=$db->prepare('SELECT * FROM cevap WHERE soru_id=?');
      $cevaplaricek->execute([
        $soru['soru_id']

      ]);
      $cevapsayisi=$cevaplaricek->rowcount();
      $cevaplar=$cevaplaricek->fetchAll(PDO::FETCH_ASSOC);

      $mükemmel=0;
      $normal=0;
      $kötü=0;

      foreach($cevaplar as $cevap){
        if($cevap['cevap']=='mükemmel'){
            $mükemmel++;
        }else if($cevap['cevap'] == 'normal'){
            $normal++;
        }else if($cevap['cevap']=='kötü'){
            $kötü++;
        }

      } 
    $mükemmelyüzdehesapla=($mükemmel / $cevapsayisi*100);
    $normalyüzdehesapla=($normal / $cevapsayisi*100);
    $kötüyüzdehesapla=($kötü / $cevapsayisi*100);

        echo number_format($mükemmelyüzdehesapla,2)."<br>";
        echo number_format($normal,2)."<br>";
        echo number_format($kötüyüzdehesapla,2)."<br>";


      
      
      ?>
       



      </div>
    </div>
  </div>

</div>  <!--end acordion-->

<?php   }//endforeach
 }else{
     echo '<div class="alert alert-danger">Görüntülenecek soru bulunamadı. </div>';

} ?>




        </div>


        <div class="col-md-4"></div>
    </div>




<?php require_once 'footer.php'; ?>