
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title>路一帮我代办</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript"
	src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>

<link rel="stylesheet" type="text/css" href="css/showTip.css">
<script type="text/javascript" src="js/showTip.js"></script>
 
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
                                if($(this).html()=="排队"){
                                  $("#details").attr("placeholder","请输入排队地点 (医院或餐厅) 及其他详细信息");
                                 }
                                if($(this).html()=="占座"){
                                  $("#details").attr("placeholder","请输入占座地点 (餐厅或酒吧) 及其他详细信息");
                                 }
                                if($(this).html()=="代办"){
                                  $("#details").attr("placeholder","请输入办事地点，所办事项和其他要求(下单后工作人员会及时和您联系)");
                                 }
                                 if($(this).html()=="其他"){
                                 $("#details").attr("placeholder","请输入其他所要办理的事项，我们好办事！");
                                 }

                               



                               // alert($(this).html());

                               // $("#details").attr("placeholder","bbbbb");
                             // $("#details").attr("placeholder",$(this).html());
		 	});
		 	
		 	document.getElementById("tag").addEventListener("touchstart",function(e){
		 		$(".tag>.cur").removeClass("cur");
		 		$(e.target).addClass("cur");
		 		//$(document.getElementById("details")).html($(e.target).html());
		 		$("#details").attr("placeholder","请选择代办选项");
		 		//.addClass("cur");
		 	})
		 });
	</script>
<body id="wrap">

	<div class="sjsc-title2">
		<h3 class="sjsc-t2l">帮我代办</h3>
		<a href="PaoTuiIndex.html" class="sjsc-t2r"><img
			src="images/back.png" alt=""
			style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px" /></a>
	</div>


	<div style="clear:both;"></div>
	</dl>


	<input type="hidden" value="1" id='tnum'>
	<input type="hidden" value="${zjfy}" id='tprice'>
 
	
	<div id="tag" class="tag clear">
			<a href="javascript:;"class="cur">排队</a>
			<a href="javascript:;">占座</a>
			<a href="javascript:;">代办</a>
			<a href="javascript:;">其他</a>
			 
		</div>
		<div class="tag1 clear" style="text-align:center">
		<textarea  autocomplete="off"  class="inp w100 textarea-large required" name="details" id="details" placeholder="请输入排队地点 (医院或餐厅) 及其他详细信息" style="width: 95%; height: 81px;font-size:15px;border:0;"></textarea>
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
		id="address-choose">联系电话</div>
	<div class="drdd-info4" id="address-choose2">
		<input type="text" placeholder="请输入您的联系电话" id="tel" style="border:0px; width: 100%;font-size:15px">

		
	</div>


	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000"
		id="address-choose">您的姓名</div>
	<div class="drdd-info4" id="address-choose2">
		 

		<input type="text" placeholder="如:张三" id='username'
			style="border:0px; width: 100%;font-size:15px">

	
	</div>



	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000">
		办事地点</div>
	<div class="drdd-info4">
		 
		 

		<input type="text" placeholder="请输入办事地址" id='addr_work'
			style="border:0px; width: 100%;font-size:15px">

		
	</div>

 
 
	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000">
		备注</div>
	<div class="drdd-info4">
	 
		
		<p></p>

		<input type="text" placeholder="请输入其他要求" id='note'
			style="border:0px; width: 100%;font-size:15px">

		<div style="clear:both;"></div> 
	</div>
	<div
		style="font-size: 15px;padding-left:5px; margin-top:13px;color: #000000">
		服务费用</div>
	<div class="drdd-info2"> 

	 

	 


		<div style="border-bottom:1px solid #DED9D9;"></div>
		 
		<p class="p2 f-r">
			总计：<span id="tpriceStr" style="color: #f60">￥ 30</span>
		</p>
		<div style="clear:both;"></div>
	</div>

	<button class="drdd-btn" onclick="add()" style="height: 57px; ">确认付款</button>


 
	<script type="text/javascript">
 
      
   function add(){
   
        var goods_id=100;
        var goods_name="接送服务"
   
      var details =$('#details').val();
      var tel =$('#tel').val();
      var username =$('#username').val();
      var addr_work =$('#addr_work').val();
 
      if(details==''){
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
			
	 if(addr_work==''){
				showTip("请填写办事地址！");
				return;
			} 
			
	 
   
       var note= $('#note').val();
    	$.ajax({
			url:'daibanorderInsert.html',
			type:'post',
			data:'goods_id='+goods_id
			+'&details='+details
			+'&addr_work='+addr_work
			+'&tel='+tel
			+'&username='+username
			+'&note='+note
			+'&paystate=0',
			success:function(rs){
				var re = /^[0-9]+.?[0-9]*$/;    
				if(re.test(rs)&&rs!=0){ 
					window.location.href='payOrder4.html?order_id='+rs;
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
