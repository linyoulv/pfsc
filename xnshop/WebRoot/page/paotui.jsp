
<!doctype html>
<html>
<head>
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
    .tag a.cur{
    	color: #ff8b03;
	    background: url(img/selected.png) right bottom no-repeat;
	    border: solid 1px #ff8b03;
	    border-radius: 2px;
    }
    .clear:after{content:"\20";display:block;height:0;clear:both}
	</style>
	
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title>路一帮我买</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript"
	src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>

<link rel="stylesheet" type="text/css" href="css/showTip.css">
<script type="text/javascript" src="js/showTip.js"></script>
<script type="text/javascript" src="js/area.js"></script>
<script type="text/javascript">
$(function(){
	showStr("province","city","area");
});
</script>

</head>

<script src="js/jquery-1.12.4.min.js"></script>
	<script>
		 $(function () {
		 	$(".tag>a").on("click",function(){
		 		$(".tag>.cur").removeClass("cur");
		 		$(this).addClass("cur");
		 		 
	                                if($(this).html()=="随意购"){
	                                  $("#dongxi").attr("placeholder","想买什么，就买什么！请填写商品名称和数量");
	                                 }
	                                if($(this).html()=="咖啡"){
	                                  $("#dongxi").attr("placeholder","请填写咖啡品类、口味、杯型等具体要求");
	                                 }
	                                if($(this).html()=="香烟"){
	                                  $("#dongxi").attr("placeholder","请填写香烟名称型号，包装要求等");
	                                 }
	                                 if($(this).html()=="酒"){
	                                 $("#dongxi").attr("placeholder","请填写酒类名称、度数等要求");
	                                 }
	
	                                 if($(this).html()=="早餐"){
	                                  $("#dongxi").attr("placeholder","请填写餐品名称、份数、是否忌口等要求");
	                                 }
	                                 if($(this).html()=="宵夜"){
	                                  $("#dongxi").attr("placeholder","请填写餐品名称、份数、是否忌口等要求");
	                                 }
	                                 if($(this).html()=="药品"){
	                                 $("#details").attr("placeholder","请填写药品名称、厂家等要求");
	                                 }
	
	                                 if($(this).html()=="生鲜"){
	                                  $("#dongxi").attr("placeholder","请填写生鲜种类、重量、体积等要求");
	                                 }

 
		 	});
		 	
		 	document.getElementById("tag").addEventListener("touchstart",function(e){
		 		$(".tag>.cur").removeClass("cur");
		 		$(e.target).addClass("cur");
		 	 
		 		$("#dongxi").attr("placeholder","请选择购买项目");
		 		 
		 	})
		 });
	</script>

<body id="wrap">

	<div class="sjsc-title2">
		<h3 class="sjsc-t2l">帮我买</h3>
		<a href="PaoTuiIndex.html" class="sjsc-t2r"><img
			src="images/back.png" alt=""
			style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px" /></a>
	</div>


	<div style="clear:both;"></div>
	</dl>


	<input type="hidden" value="1" id='tnum'>
	<input type="hidden" value="${zjfy}" id='tprice'>
	<!-- <div
		style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
		随意购 <input type="text" placeholder="填写购买的商品信息" id='goods_info'
			style="border:0px; height: 35px; width:100%">
	</div> -->
	
		<div id="tag" class="tag clear">
			<a href="javascript:;"class="cur">随意购</a>
			<a href="javascript:;">咖啡</a>
			<a href="javascript:;">香烟</a>
			<a href="javascript:;">酒</a>
			<a href="javascript:;">早餐</a>
            <a href="javascript:;">宵夜</a>
			<a href="javascript:;">药品</a>
			<a href="javascript:;">生鲜</a>
		</div>
		<div class="tag1 clear" style="text-align:center">
		<textarea  autocomplete="off"  class="inp w100 textarea-large required" name="dongxi" id="dongxi" placeholder="想买什么就买什么，请输入需要购买商品的名称和数量" style="width: 95%; height: 102px;font-size:15px;border:0;"></textarea>
                <span class="msg msg1">必填!</span>
		 </div>
		

	<input type="hidden" value="111" name='goods_id'>
	<input type="hidden" value="担保金+代购服务费" name='goods_name'>
	<input type="hidden"
		value="#http://www.61songcai.com:80/xnshop/upload/1480424117844.png#"
		name='goods_img'>
	<input type="hidden" value="1" name='goods_num'>
	<input type="hidden" value="120.0" name='goods_price'>


	<div class="drdd-info3">

		<div class="drdd-info2"> 

		<p class="p1 f-l">跑腿服务费用</p>
		<p class="p2 f-r">
			<span id="">￥${ptfy}</span>
		</p>
		<br>

		<p class="p1 f-l">担保费用</p>
		<p class="p2 f-r">
			<span id="wuliu">￥${dbfy}</span>
		</p> <br><br> 
		<p style="color:red;font-size:10px;">注意，用户付清商品价格收货后，担保金全部退返</p>
		<div style="clear:both;"></div>
	</div>



<!-- 	<div
		style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
		优惠券</div> -->
<!-- 	<div class="drdd-info4"
		onclick="window.location.href='cartCoupons.html?addr_id=0'">
		<p>优惠券</p>
		<a> 0张可使用优惠券 <span> ></span></a>
		<div style="clear:both;"></div>
	</div>
 -->

  <div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000"
		id="address-choose">购买地址</div>
	<div class="drdd-info4" id="address-choose2">
		

		<input type="text" placeholder="请输入购买店铺的名称和地址" id='gmdz'
			style="border:0px; width: 257px;font-size:15px">

		<div style="clear:both;"></div>
	</div>


	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000"
		id="address-choose">收货地址</div>
	<div class="drdd-info4" id="address-choose2">
		

		<input type="text" placeholder="如:文昌市*路*小区*栋*号" id='shdz'
			style="border:0px;font-size:15px">

		<div style="clear:both;"></div>
	</div>



	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000">
		联系电话</div>
	<div class="drdd-info4">
	

		<input type="text" placeholder="请输入联系电话" id='addr_tel'
			style="border:0px;font-size:15px">

		<div style="clear:both;"></div>
	</div>

	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000">
		联系人姓名</div>
	<div class="drdd-info4">
		

		<input type="text" placeholder="请输入联系人姓名" id='addr_user'
			style="border:0px;font-size:15px">

		<div style="clear:both;"></div>
	</div>

	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000">
		备注</div>
	<div class="drdd-info4">
		

		<input type="text" placeholder="请输入其他要求" id='note'
			style="border:0px;font-size:15px">

		<div style="clear:both;"></div> 
	</div>
	<div
		style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
		订单价格</div>
	<div class="drdd-info2"> 

		<p class="p1 f-l">跑腿服务费用</p>
		<p class="p2 f-r">
			<span id="">￥ ${ptfy}</span>
		</p>
		<br>

		<p class="p1 f-l">担保费用</p>
		<p class="p2 f-r">
			<span id="wuliu">￥${dbfy}</span>
		</p>
		<br>


		<div style="border-bottom:1px solid #DED9D9;"></div>
		 
		<p class="p2 f-r">
			总计：<span id="tpriceStr" style="color: #f60">￥ ${zjfy}</span>
		</p>
		<div style="clear:both;"></div>
	</div>

	<button class="drdd-btn" onclick="add()" style="height: 57px; ">确认付款</button>


 
	<script type="text/javascript">

      
   function add(){
   
        var order_what =$('#dongxi').val();
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
		
		
		addr_name = addr_tel;
    	$.ajax({
			url:'paotuiorderInsert.html',
			type:'post',
			data:'goods_id='+goods_id
			+'&goods_price='+goods_price
			+'&goods_num='+goods_num
			+'&goods_total='+goods_total
			+'&goods_total_num='+goods_total_num
			+'&cps_id='+cps_id+'&cps_name='+cps_name
			+'&cps_price='+cps_price
			+'&addr_name='+addr_name
			+'&receive='+receive+'&note='+note+'&order_what='+order_what+'&order_where='+order_where+'&order_sentwhere='+order_sentwhere+'&paystate=0',
			success:function(rs){
				var re = /^[0-9]+.?[0-9]*$/;    
				if(re.test(rs)&&rs!=0){ 
					window.location.href='payOrder1.html?order_id='+rs;
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
