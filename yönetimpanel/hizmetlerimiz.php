<?php require_once 'header.php'; ?>

<div class="container-fluid">
    <div class="col-md-9">
        <div class="card">
            <textarea class="form-control" id="editor" ></textarea>
</div>
        </div>
    </div>
</div>


<?php require_once 'footer.php'; ?>

<script type="text/javascript"  src="../CKEditor_5_Classic_editor/CKEditor_5_Classic_editor/ckeditor5-build-classic/ckeditor.js">   

</script>


<script>
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .then( editor => {
            console.log( editor );
        } )
        .catch( error => {
            console.error( error );
        } );
</script>