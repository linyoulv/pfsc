
<!doctype html>
<html>
<head>
 
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>路一帮我接送</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript"
	src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>

<link rel="stylesheet" type="text/css" href="css/showTip.css">
<script type="text/javascript" src="js/showTip.js"></script>
<script type="text/javascript" src="js/area.js"></script>
 
</head>
<style>
	.tag a{
	    padding: 0;
	    border-radius: 2px;
	    font-size: 13px;
	    color: #333;
	    float: left;
	    margin-right: 9px;
	    margin-bottom: 20px;
	    height: 36px;
	    line-height: 36px;
	    border: solid 1px #f4f4f4;
	    background: #f4f4f4;
	    width: 75px;
	    text-align: center;
	    text-decoration: none;
	    
    }
    body{overflow:hidden;}
    .tag a.cur{
    	color: #ff8b03;
	    background: url(img/selected.png) right bottom no-repeat;
	    border: solid 1px #ff8b03;
	    border-radius: 2px;
    }
    .clear:after{content:"\20";display:block;height:0;clear:both}
	</style>
	<script src="js/jquery-1.12.4.min.js"></script>
	<script>
		 $(function () {
		 	$(".tag>a").on("click",function(){
		 		$(".tag>.cur").removeClass("cur");
		 		$(this).addClass("cur");
		 		//$("#details").html($(this).html());
                                if($(this).html()=="接人"){
                                  $("#details").attr("placeholder","市区内收费10元，机场接送200元  (限始发地文昌市内)。车型：比亚迪F0（可自己配车）");
                                 }
                                if($(this).html()=="送人"){
                                  $("#details").attr("placeholder","市区内收费10元，机场接送100元（限目的地文昌市内）。车型：比亚迪F0（可自己配车）");
                                 }
                                if($(this).html()=="接件"){
                                  $("#details").attr("placeholder","请输入文件类型及其他");
                                 }
                                 if($(this).html()=="送件"){
                                 $("#details").attr("placeholder","请输入文件类型及其他");
                                 }
                                 if($(this).html()=="送礼"){
                                  $("#details").attr("placeholder","请输入礼品类型及其他");
                                 }
                                if($(this).html()=="送花"){
                                  $("#details").attr("placeholder","请输入花名和其他要求");
                                 }
                                if($(this).html()=="搬家"){
                                  $("#details").attr("placeholder","搬家价格根据距离另定价格，请联系官方客服0898-63333301。车型：皮卡");
                                 }
                                 if($(this).html()=="其他"){
                                 $("#details").attr("placeholder","请输入其他的接送物品......");
                                 }
                                 
                               



                               // alert($(this).html());

                               // $("#details").attr("placeholder","bbbbb");
                             // $("#details").attr("placeholder",$(this).html());
		 	});
		 	
		 	document.getElementById("tag").addEventListener("touchstart",function(e){
		 		$(".tag>.cur").removeClass("cur");
		 		$(e.target).addClass("cur");
		 		//$(document.getElementById("details")).html($(e.target).html());
		 		$("#details").attr("placeholder","请选择接送项目");
		 		//.addClass("cur");
		 	})
		 });
	</script>
<body id="wrap">

	<div class="sjsc-title2">
		<h3 class="sjsc-t2l">帮我接送</h3>
		<a href="PaoTuiIndex.html" class="sjsc-t2r"><img
			src="images/back.png" alt=""
			style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px" /></a>
	</div>


	<div style="clear:both;"></div>
	</dl>


	<input type="hidden" value="1" id='tnum'>
	<input type="hidden" value="${zjfy}" id='tprice'>
 
	<div id="tag" class="tag clear" style="text-align:center">
			<a href="javascript:;"class="cur">接人</a>
			<a href="javascript:;">送人</a>
			<a href="javascript:;">接件</a>
			<a href="javascript:;">送件</a>
			<a href="javascript:;">送礼</a>
			<a href="javascript:;">送花</a>
			<a href="javascript:;">搬家</a>
			<a href="javascript:;">其他</a>
			 
		</div>
		<div class="tag1 clear" style="text-align:center">
		<textarea  autocomplete="off"  class="inp w100 textarea-large required" name="details" id="details" placeholder="市区内收费10元，机场接送200元  (限始发地文昌市内)。车型：比亚迪F0（可自己配车）" style="width: 95%; height: 88px;font-size:15px;border:0;"></textarea>
                <span class="msg msg1">必填!</span>
		 </div>
		
		



	<div class="drdd-info3">
 

  <div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000"
		id="address-choose">您的联系电话</div>
	<div class="drdd-info4" id="address-choose2">
	

		<input type="text" placeholder="请输入您的联系电话" id='tel'
			style="border:0px; width: 100%;font-size:15px">

		
	</div>


	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000"
		id="address-choose">您的姓名</div>
	<div class="drdd-info4" id="address-choose2">
	

		<input type="text" placeholder="如:张三" id='username'
			style="border:0px;font-size:15px">

		<div style="clear:both;"></div>
	</div>



	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000">
		接送始发地址</div>
	<div class="drdd-info4">
	
		<input type="text" placeholder="接送始发地址" id='addr_b'
			style="border:0px;font-size:15px">

		
	</div>

	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000">
		接送目的地址</div>
	<div class="drdd-info4">
	

		<input type="text" placeholder="接送目的地址" id='addr_e'
			style="border:0px;font-size:15px">

		
	</div>

	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000">
		备注</div>
	<div class="drdd-info4">
	

		<input type="text" placeholder="请输入其他要求" id='note'
			style="border:0px;font-size:15px">

	
	</div>
	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #A09E9E">
		服务费用</div>
	<div class="drdd-info2"> 
 


	 
		 
		<p class="p2 f-r">
			服务费用：<span id="tpriceStr" style="color: #f60">￥20</span>
		</p>
		
	</div>

	<button class="drdd-btn" onclick="add()" style="height: 57px; ">确认付款</button>


 
	<script type="text/javascript">

      
   function add(){
      var goods_id=100;
      var goods_name="接送服务";
      var details =$('#details').val();
      var tel =$('#tel').val();
      var username =$('#username').val();
      var addr_b =$('#addr_b').val();
      var addr_e =$('#addr_e').val();
      if(details ==''){
				showTip("请填写你要的服务，以及要求！");
				return;
			}  
			
	  if(tel==''){
				showTip("请填写电话！");
				return;
			} 
			
	  if(username==''){
				showTip("请填写姓名！");
				return;
			} 
			
	 if(addr_b==''){
				showTip("请填写始发地址！");
				return;
			} 
			
	  if(addr_e==''){
				showTip("请填写目的地址！");
				return;
			} 
   
       var note= $('#note').val();
   
      
       /*  var order_what =$('#dongxi').val();
        var order_where =$('#gmdz').val();
        var order_sentwhere =$('#shdz').val();
        
      
        
    	var goods_id="";
    	var goods_name="";
    	var goods_img="";
    	var goods_price="";
    	var goods_num="";
    	var fgt_price= $('#fgt_price').val();
    	if(fgt_price==-2){
    		showTip("请选择配送方式！");return;
    	}
    	
    	var goods_ids=$("input[name='goods_id']");
    	for (var i = 0; i < goods_ids.length; i++) {
			if (i == 0) {
				goods_id += goods_ids[i].value;
			} else {
				goods_id += ",-=" + goods_ids[i].value;
			}
		}
    	
    	var goods_names=$("input[name='goods_name']") ;
    	for (var i = 0; i < goods_names.length; i++) {
			if (i == 0) {
				goods_name += goods_names[i].value;
			} else {
				goods_name += ",-=" + goods_names[i].value;
			}
		}
    	var goods_imgs =$("input[name='goods_img']");
    	for (var i = 0; i < goods_imgs.length; i++) {
			if (i == 0) {
				goods_img += goods_imgs[i].value;
			} else {
				goods_img += ",-=" + goods_imgs[i].value;
			}
		}
    	var goods_prices=$("input[name='goods_price']") ;
    	for (var i = 0; i < goods_prices.length; i++) {
			if (i == 0) {
				goods_price += goods_prices[i].value;
			} else {
				goods_price += ",-=" + goods_prices[i].value;
			}
		}
    	var goods_nums =$("input[name='goods_num']");
    	for (var i = 0; i < goods_nums.length; i++) {
			if (i == 0) {
				goods_num += goods_nums[i].value;
			} else {
				goods_num += ",-=" + goods_nums[i].value;
			}
		}
    	var goods_total= $('#tprice').val();
    	var goods_total_num= $('#tnum').val();
    	
    	var cps_id= $('#cps_id').val();
    	var cps_name= $('#cps_name').val();
    	var cps_price= $('#cps_price').val();
    	if(typeof(cps_name)=='undefined'){
    		cps_id= '';
    		cps_name= '';
        	cps_price=0;
    	}
    	var receive ="";
    	var addr_user=$('#addr_user').val(); 
    	var addr_name=$('#addr_name').val();
    	
    	if(typeof(addr_user)=='undefined'){
    		addr_user='';
    	}
    	if(typeof(addr_tel)=='undefined'){
    		addr_tel='';
    	}
    	if(typeof(addr_name)=='undefined'){
    		addr_name='';
    	}
    	
    	 
     
    	var province =$('#province').text();
		 

		var note= $('#note').val();
     
    	 
    	var address = $("#add").val();
    	var addr_tel = $("#addr_tel").val(); 
    	
    	var goods_info = $("#goods_info").val();
    	
    	  if(goods_info==''){
				showTip("请填写商品信息！");return;
			}  
     
        if(address==''){
				showTip("请填写收货地址！");return;
			} 
       	if(addr_tel==''){
			showTip("请填写联系电话！");return;
		} 
		if(addr_user==''){
			showTip("请输入联系人姓名！");return;
		}  
		if(!checkMobile(addr_tel)){
		    showTip("请填写正确的联系电话！");return;
		}  
		
		
		addr_name = address +" "+addr_tel; */
    	$.ajax({
			url:'jiesongorderInsert.html',
			type:'post',
			data:'goods_id='+goods_id
			+'&details='+details
			+'&goods_name='+goods_name
			+'&tel='+tel
			+'&username='+username
			+'&addr_b='+addr_b
			+'&addr_e='+addr_e
			+'&note='+note
			+'&paystate=0',
			success:function(rs){
				var re = /^[0-9]+.?[0-9]*$/;    
				if(re.test(rs)&&rs!=0){ 
					window.location.href='payOrder3.html?order_id='+rs;
				}else{
					alert("失败！");
				}
			}
		})

    }
    
    function checkMobile(str) {
    var re = /^1\d{10}$/;
	    if (re.test(str)) {
	        return true;
	    } else {
	        return false;
	    }
    }
    
    
  
    
    </script>

</body>
</html>
