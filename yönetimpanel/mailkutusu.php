<?php require_once 'header.php'; ?>

<?php
$mesajcek=$db->prepare('SELECT * FROM iletisim');
$mesajcek->execute();
$mesajlar=$mesajcek->fetchAll(PDO::FETCH_ASSOC);

?>
<div class="table-responsive">
<table class="table table-striped table-hover">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Ad</th>
      <th scope="col">Email</th>
      <th scope="col">Konu</th>
      <th scope="col">Mesaj</th>
       <th scope="col">Durum</th>
    </tr>
  </thead>
  <tbody>
    <?php 
    foreach($mesajlar as $mesaj){

  
    ?>
    <tr>
      <th scope="row"><?php echo $mesaj['iletisim_id']; ?></th>
      <td><?php echo $mesaj['iletisim_name']; ?></td>
      <td><?php echo $mesaj['iletisim_email']; ?></td>
      <td><?php echo $mesaj['iletisim_subject']; ?></td>
      <td><?php echo $mesaj['iletisim_message']; ?></td>
      <td><?php echo $mesaj['iletisim_message']; ?></td>
    </tr>
    
    <?php } ?>
  </tbody>

</table>
</div>



<?php require_once 'footer.php'; ?>