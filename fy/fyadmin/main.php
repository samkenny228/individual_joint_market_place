<?php
include("head.php");
?>
<div class="container div_copy_p_link">
<div id="gnc_message">
<input type="text" name="" id="myInput" value="<?= $code; ?>">
<button type="button" class="btn_copy_p_c" onclick="myFunction()"><i class="bi bi-check2-square"></i></button>
</div>
</div>

<div class="container div_copy_p_link">
<form method="post" action="" id="gnc_form">
<input type="hidden" name="gnc" class="gnc" value="">
<button type="submit" name="gnc_btn" class="gnc gnc_btn"><span id="spin_message"></span>Generate new code</button>
</form>
</div>


<script src="jsfile/gnc.js"></script>

<?php
include_once "footer.php";
?>