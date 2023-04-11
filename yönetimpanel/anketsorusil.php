<?php
require_once 'header.php';
if(!isset($_GET['soru_id'])){
    header('Location:index.php');
    exit();
}


$gelen_id=filtrele($_GET['soru_id']);
$sorusil=$db->prepare('DELETE FROM sorular WHERE soru_id=?');
$sorusil->execute([
    $gelen_id
]);
if($sorusil){
    $cevapsil=$db->prepare('DELETE FROM cevap WHERE soru_id=?');
    $cevapsil->execute([
        $gelen_id
    ]);
    if($cevapsil){
         echo '<div class="alert alert-success">Başarıyla Silindi.</div>';
         header('Location:../index.php');
    }else{
         echo '<div class="alert alert-danger">Cevap Silme İşlemi Başarısız.</div>';
    }


}else{
     echo '<div class="alert alert-danger">Soru Silme İşlemi Başarısız.</div>';
}



?>

<?php require_once 'footer.php'; ?>
