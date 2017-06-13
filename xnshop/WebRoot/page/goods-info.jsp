<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title>商品详情</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/woxiangyao.js"></script>
<script type="text/javascript" src="js/TouchSlide.1.1.js"></script>
<script type="text/javascript" src="js/foot.js"></script>

<link rel="stylesheet" type="text/css" href="css/showTip.css">
<script type="text/javascript" src="js/showTip.js"></script>

<style type="text/css">
 .c-btn3 {
    -moz-box-flex: 1;
    -moz-user-select: none;
    background: #76ac25 none repeat scroll 0 0;
    border: 0 none;
    color: #fff;
    display: block;
    font-size: 0.9rem;
    height: 2.5rem;
    line-height: 2.5rem;
    text-align: center;
    width: 100%;
}
    
</style>


</head>

<body id="wrap">
	
    <div class="sjsc-title1" style="position:fixed;z-index：999">
    	<h3 class="sjsc-t1l f-l"><a href="JavaScript:history.go(-1)"><span class="le"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></span></a></h3>
       	<!-- 
        <a href="#" class="sjsc-t1r f-r"><img src="images/sjsc20.gif"></a>
         -->
        <div style="clear:both;"></div>
    </div>
    <c:forEach items="${list}" var="list">
    <input type="hidden" value="${list.goods_id}" id="goods_id">
    <input type="hidden" value="${list.goods_name}" id="goods_name">
    <input type="hidden" value="${list.goods_img}" id="goods_img">
    <input type="hidden" value="${list.goods_spe}" id="goods_spe">
    <input type="hidden" value="${list.goods_price}" id="goods_price">
    <div class="banner1" style="z-index：9">
        <ul class="sy-ul">
            <li><a href="#"><img src="${list.goods_img}"></a></li>
        </ul>
        <ol class="sy-ol">
        </ol>
    </div>
    <div class="spxq-info1">
    	<ul class="spxq-ul1">
        	<li>
            	<h3><a href="#">${list.goods_name}</a></h3>
                <div>
                <p class="spxq-p1" style="font-size: 12px;line-height:35px;"><span>${list.goods_spe}</span></p>
                <p class="spxq-p1" ><font style="font-size: 9px;color: #f60">￥</font><span style="color: #f60">${list.goods_price}</span></p>
                	
                <div style="clear:both;"></div>
                </div>
            </li>
        </ul>
    </div>
    <div class="spxq-info2" style="height: 42px; ">
    	<ul class="spxq-ul2">
        	<li class="current" style="width: 100%"><a href="JavaScript:;">商品详情</a></li>
        </ul>
        <div class="spxq-box">
        	<div class="spxq-k spxq-k1">
            	${list.goods_detail}
            </div>
        </div>
    </div>
    </c:forEach>
      <c:forEach items="${messageList}" var="messageList">
     <div style="height: 100%; ">
			<span>${messageList.username}</span>
			${messageList.add_time}
			
			<p>${messageList.content}</p>
     </div>
      </c:forEach>
     <div style="height: 308px; ">
           
              
              	<textarea  autocomplete="off"  class="inp w100 textarea-large required" name="details" id="details" placeholder="请提交对商品的评论" style="width: 95%; height: 81px;font-size:15px;border:0;"></textarea>
           
             
              <button class="drdd-btn" onclick="tjly()" style="height: 57px; ">提交评论</button>
           
     </div>
    
    <div class="spxq-info3">
    	<button class="if3-btnn if3-btn1 f-l" onclick="window.location.href='goodsOrder.html?goods_id=${goods_id}'">立即购买</button>
    	<button class="if3-btnn if3-btn2 f-l" onclick="add()">加入购物车</button>
        <a href="cartList.html" class="if3-aa f-l"><img src="images/cart.png" /><span style="position:fixed;color: #ff3c00" id="cart_num">${cart_num }</span></a>
       
    </div>
	<script type="text/javascript">
	function add(){
		var goods_id = $('#goods_id').val();
		var goods_name = $('#goods_name').val();
		var goods_img = $('#goods_img').val();
		var goods_spe = $('#goods_spe').val();
		var goods_price = $('#goods_price').val();
		
		$.ajax({
			url:'cartInsert.html',
			type:'post',
			data:'goods_id='+goods_id+'&goods_name='+goods_name+'&goods_img='+goods_img+'&goods_price='+goods_price+'&goods_num=1'+'&goods_spe='+goods_spe,
			success:function(rs){
				var data = eval('('+rs+')');
				if(data.rs_code==1){
				$('#cart_num').text(data.cart_num);
					showTip("已加入购物车！");
//					location.reload();
				}else if(data.rs_code==1005){
					showTip("登录已失效，重新登录中，请稍后...");
					setTimeout('window.location.href=history.go(-1)',2000);
				}else{
					showTip("加入购物车失败！");
				}
			}
		})
	}
	
	function buy(){
		var goods_id = $('#goods_id').val();

		$.ajax({
			url:'goodsOrder.html',
			type:'post',
			data:'goods_id='+goods_id,
			success:function(rs){
				if(rs==1){
					showTip("已加入购物车！");
//					location.reload();
				}else{
					showTip("加入购物车失败！");
				}
			}
		})
	}
	
	</script>
	
	<script type="text/javascript">

 
	/**
	 * 提交评论信息
	*/
	function tjly()
	{
       var goods_id = $('#goods_id').val();
       var details =$("#details").val();
    

       if(details ==''){
				showTip("请填写你要提交的评论！");
				return;
			} 
			
	 
	  	$.ajax({
			url:'messageInsert.html',
			type:'post',
			data:'content='+details+'&goodId='+goods_id,
			success:function(rs){
				if(rs==1){
					 
					alert("添加评论成功！");
					location.reload(true);
					//window.location.href = document.referrer;
				}else{
				
					alert("添加评论失败！");
				}
			}
		})  
	}

 

 
</script>
	
</body>
</html>
