<?php
include_once "check_session.php";
?>
<script src="jsfile/cancel_displays.js"></script>
<script src="jsfile/save_background_color.js"></script>
<?php
if(isset($_POST['background_color'])){ ?>


<div class="divshow">
<div class="divinnershow">
<div class="insidediv">

<button type="submit" name="cancel" class="btncancel cancel">
<i class="bi bi-x-circle-fill"></i>
</button>
<br><hr>
<div class="div_add_map">
<h4>Brand special color</h4><hr> 

<form method="post" action="" class="background_color_form" enctype="multipart/form-data">
<select class="inp_reg_style background_color" name="background_color">
  <option style="background-color: yellow;" value="yello">Select color</option>
  <option style="background-color: yellow;" value="yello">Yello</option>
  <option style="background-color: #ffcaa3;" value="#ffcaa3">ffcaa3</option>
  <option style="background-color: #ffeaa3;" value="#ffeaa3">ffeaa3</option>
  <option style="background-color: #f8ffa3;" value="#f8ffa3">f8ffa3</option>
  <option style="background-color: #e3ffa3;" value="#e3ffa3">e3ffa3</option>
  <option style="background-color: #c9ffa3;" value="#c9ffa3">c9ffa3</option>
  <option style="background-color: #a6ffa3;" value="#a6ffa3">a6ffa3</option>
  <option style="background-color: #FFD300;" value="#FFD300">Cyber</option>
  <option style="background-color: orange;" value="orange">Orange</option>
  <option style="background-color: #FEC5E5;" value="#FEC5E5">BLUSH PINK</option>
  <option style="background-color: pink;" value="pink">Pink</option>
  <option style="background-color: #FC94AF;" value="#FC94AF">ROSE</option>
  <option style="background-color: #E39FF6;" value="#E39FF6">ELECTRIC LAVENDER</option>
  <option style="background-color: #B0FC38;" value="#B0FC38">CHARTREUSE</option>
  <option style="background-color: #5DBB63;" value="#5DBB63">FERN</option>
  <option style="background-color: #89CFF0;" value="#40E0D0">SKY</option>
  <option style="background-color: #40E0D0;" value="#40E0D0">TURQUOISE</option>
</select>

<button type="submit" class="btn_reg_submit btn_background_color">Submit</button><br>
<br>
</form>

<h5>Background color</h5>
<div id="display_background_color">
<div style="background-color: <?= $background_color ?>; border:2px solid red; width:150px; height:150px;">
</div>
</div>

</div>
<br>
<button type="submit" name="cancel" class="btncancel_text cancel">
Cancel
</button><br>

</div>
</div>
</div>

<?php
}
?>