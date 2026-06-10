
<div class="div_in_chat">
<div class="start_chat_div">
<h1 class="reg_heading">Start<br> Negotiation</h1>

<form method="post" action="" id="startchat_form">

<input type="hidden" name="user_order_id" class="inp_reg_style user_order_id" value="<?=$user_order_id;?>">
<input type="hidden" name="brand_unique_id" class="inp_reg_style brand_unique_id" value="<?=$brand_unique_id;?>">
<input type="hidden" name="product_category_name" class="inp_reg_style product_category_name" value="<?=$product_category_name;?>">

    <input type="name" name="startchat_input" class="inp_reg_style startchat_input" placeholder="Enter Name" required><br>
    <button type="submit" name="startchat_btn" class="btn_reg_submit startchat_btn"><span id="spin_message"></span>Start Chat</button>
</form>

</div>
</div>