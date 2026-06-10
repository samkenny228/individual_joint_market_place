<h4 class="h4_chatbuyer">

 
  <?php 
  if($brand_status == "active_now"){ ?>
   <span class="span_online">
    <i class="bi bi-dot"></i>
   </span>
 <?php }else{ ?>
  <span class="span_offline"> 
    <i class="bi bi-dot"></i>
  </span> 
 <?php }
  ?>

<?= $brand_name; ?>-brand
</h4><hr>

<div class="div_in_chat">
<div class="div_messahes">


</div>
</div>

<div class="div_input_chat">
<form  method="post" action="" class="form_chat">
<input type="hidden" name="incoming_id" class="incoming_id" placeholder="chat" value="<?=$brand_unique_id?>">
<input type="hidden" name="outgoing_id" class="outgoing_id" placeholder="chat" value="<?=$buyerchat_id?>">
<input type="text" name="inp_chat" class="inp_chat" placeholder="chat">
  <!--<span class="span_in_chat"><i class="bi bi-card-image"></i></span> -->
  <button class="btn_sendchat">
  <span class="span_in_chat"><i class="bi bi-telegram"></i></span>
</button>
</form>
<small style="color: red; margin:0px">Tap on your message to hold chat</small>
</div>

<script src="jsfile/chat.js"></script>