<div id="wd_popupbanner" style="display:none;padding: 0;max-width: 650px;box-shadow: none;border-radius: 0;">
	<img src="<?php echo $image;?>" alt="<?php echo $text1;?>" style="width:100%;">
	<div class="textblock" style="text-align: center;padding: 20px;">
		<h3 style="font-size:28px;font-weight: normal;text-transform: uppercase;"><?php echo $text1;?></h3>
		<p><?php echo $text2;?></p>
	      <form id="get_coupon" action="">
	        <div><input type="email" name="email" placeholder="Email"><span onclick="sendform(this);" class="btn">Отправить</span></div>
	          <input type="hidden" name="camefrom" value="<?php echo "http://".$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI']; ?>">
	          <input type="hidden" type="text" name="formname" value="wd_popupbanner">
	      </form>
	</div>
</div>
<script>
setTimeout(function(){
	$('#wd_popupbanner').modal();
},<?php echo $time;?>);

$('#wd_popupbanner').on($.modal.BEFORE_CLOSE, function(event, modal) {
	$.ajax({
		url: 'index.php?route=extension/module/wd_popupbanner/close',
		type: 'post',
		data: {"closeaction":true},
		dataType: 'json'
	});
});
</script>