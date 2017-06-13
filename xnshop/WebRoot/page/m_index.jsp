<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">

<title>路一送菜 </title>
<link rel="stylesheet" type="text/css" href="css/style.css">

<link rel="stylesheet" type="text/css" href="css/shoujisc.css">

<link rel="stylesheet" href="css/search.css">

<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript" src="js/woxiangyao.js"></script>

<script type="text/javascript" src="js/TouchSlide.1.1.js"></script>

<script type="text/javascript" src="js/foot.js"></script>

<link rel="stylesheet" type="text/css" href="css/showTip.css">

<script type="text/javascript" src="js/showTip.js"></script>

</head>

<body id="wrap">
	
    <div class="quanbu-top">
    <input id="goods_name" name="keyword" class="hd_keyword"
placeholder="请输入商品名称" style="width: 90%;font-size: 14px" onclick="window.location.href='secList.html'">
    	<a href="areaList.html" class="qb-tleft f-l">
    	<!-- <img src="images/sjsc-14.png" style="width: 19px;height: 25px;"> --></a>
    	<%-- <c:forEach items="${userList}" var="userList"><a href="areaList.html"><font color="#ABD13E" size="3px">&nbsp;&nbsp;${userList.area_name}</font></a></c:forEach> --%>
        
        <div class="qb-tright f-r">
        	<a href="secList.html"> <img src="images/sjsc-13.png"> </a>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="banner1" id="ban1">
        <ul class="sy-ul">
        <c:forEach items="${banList}" var="list">
            <li><a href="${list.url}"><img src="${list.ban_img }"></a></li>
         </c:forEach> 
        </ul>
        <ol class="sy-ol">
        </ol>
    </div>
    
  <div class="sy-info1" style="border-bottom:4px solid #E6E6E6;">
        <ul class="info-img">
            <li>
            	<a href="category.html?ctg_id=33" class="img-1" ><img  src="images/b1.png" style="width:42px;height: 42px"> </a>
 <a href="category.html?ctg_id=33" class="img-txt">水果</a> 
            </li>
            <li>
            	<a href="category.html?ctg_id=34" class="img-1" > <img  src="images/b2.png" style="width:42px;height: 42px"></a>
                <a href="category.html?ctg_id=34" class="img-txt">蔬菜</a> 
            </li>
            <li>
            	<a href="category.html?ctg_id=35" class="img-1" style=""><img  src="images/b3.png" style="width:42px;height: 42px"></a>
                <a href="category.html?ctg_id=35" class="img-txt">肉类</a>
            </li>
            <li>
            	<a href="category.html?ctg_22=36" class="img-1" ><img  src="images/b4.png" style="width:42px;height: 42px"></a>
                <a href="category.html?ctg_id=36" class="img-txt">海鲜</a>
            </li>
             <li>
            	<a href="category.html?ctg_id=37" class="img-1" ><img  src="images/b5.png" style="width:42px;height: 42px"></a>
      <a href="category.html?ctg_id=37" class="img-txt">水产</a> 
            </li>
        </ul>
        
    </div>  
    <div class="ssjg" >
        <ul class="ssjg-ul2" style="padding-top:0;">
       
          
<div style="clear:both;"></div>
        </ul>
    </div>
    <div class="ssjg">
    	<ul class="ssjg-tit1">
        	 <li style="margin-left: 1%"><a href="JavaScript:;">今日推荐</a></li>  
        	<!-- <li style="text-align: right;"><a href="secGoodsList.html?is_recommend=1" >更多</a></li> -->
            <div style="clear:both;"></div>
        </ul>
        <ul class="ssjg-ul1" style="padding-top:0;">
         <c:forEach items="${hotGoodsList}" var="goodsList">
        	<li>
            	<div class="ssjg-tu">
                	<a href="goodsListById.html?goods_id=${goodsList.goods_id}"><img src="${goodsList.goods_img}"></a>
                </div>
                <h3><a href="goodsListById.html?goods_id=${goodsList.goods_id}">${goodsList.goods_name}</a></h3>
                <p class="ssjg-p2" style="font-size: 11px;padding-left: 5px"><span>${goodsList.goods_spe}</span></p>
                <dl class="ssjg-dl1">
                	<dt>
                	  <%-- <p class="ssjg-p2" style="font-size: 9px;"><span>${goodsList.goods_spe}</span></p>   --%>
                    <p class="ssjg-p1" style="margin-top:10px;"><span>￥${goodsList.goods_mprice}</span></p>
                    </dt>
                    <dd><a href="javascript:;" onclick="add('${goodsList.goods_id}','${goodsList.goods_name}','${goodsList.goods_img}','${goodsList.goods_spe}','${goodsList.goods_price}')"><img src="images/sjsc-09.gif" style="width: 25px;height: 25px"></a></dd>
                    <div style="clear:both;"></div>
                </dl>
            </li>
            </c:forEach> 
            
        </ul><div style="clear:both;"></div>
    </div>
    
    
    
    <div class="sy-ft">
    	
    </div>
    
    <!--返回顶部-->
    <div class="sy-fanhui">
    	<a href="JavaScript:;"><img src="images/sjsc29.gif"></a>
    </div>
    	<script type="text/javascript">
    
	function add(goods_id,goods_name,goods_img,goods_spe,goods_price){
		$.ajax({
			url:'cartInsert.html',
			type:'post',
			data:'goods_id='+goods_id+'&goods_name='+goods_name+'&goods_img='+goods_img+'&goods_price='+goods_price+'&goods_num=1'+'&goods_spe='+goods_spe,
			success:function(rs){
				var data = eval('('+rs+')');
				if(data.rs_code==1){
					$('#cart_num').text(data.cart_num);
					showTip("已加入购物车！");
				}
				else if(data.rs_code==1005){
					showTip("登录已失效，重新登录中，请稍后...");
					setTimeout('window.location.href=history.go(-1)',2000);
				}
				else{
					showTip("加入购物车失败！");
				}
				
			}
		})
	}
	
	</script>
    <jsp:include page="mfooter.jsp"></jsp:include>
</body>
</html>
