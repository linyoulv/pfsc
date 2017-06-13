<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ taglib prefix="fn"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title></title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/woxiangyao.js"></script>
</head>

<body>

    <div class="sjsc-title2">
    	<h3 class="sjsc-t2l">我的订单</h3>
        <a href="center.html" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    </div>
    <ul class="quanbu-title2">
    	<li class="current" style="display: inline;"><a href="JavaScript:;">全部</a></li>
    	<li style="display: inline;"><a href="JavaScript:;">待支付</a></li>
    	<li style="display: inline;"><a href="JavaScript:;">待发货</a></li>
    	<li style="display: inline;"><a href="JavaScript:;">已发货</a></li>
        <div style="clear:both;"></div>
    </ul>
	
    <div class="my-dd">
    	<div class="my-info">
    	<c:forEach items="${map['list']}" var="list" varStatus="s">
    	<c:set value="ord${s.index}" var="ord"></c:set>
        	<div class="my-k1">
            	<ul class="my-p1">
                	<li class="my-spl f-l">${list.add_time}</li>
                	<li class="my-spr f-r">
					<c:if test="${list.status==0 }">待支付</c:if>
					<c:if test="${list.status==1 }">待发货</c:if>
					<c:if test="${list.status==2 }">已发货</c:if>
					<c:if test="${list.status==-5 }">退款中</c:if>
					<c:if test="${list.status==-6 }">已关闭</c:if>
					</li>
					<li class="my-spl f-l"><font color="blue">&nbsp;&nbsp;${list.paystate}</font></li>
                    <div style="clear:both;"></div>
                </ul>
                <c:forEach items="${map[ord]}" var="ordList">
                <dl class="my-dl1">
                	<dt><a href="#"><img src="${ordList.goods_img}" style="width: 68px"></a></dt>
                    <dd>
                    	<h3><a href="#">${ordList.goods_name}</a></h3>
                    	
                        <p class="my-dp1">价格：<span>${ordList.goods_price}</span></p>
                        <div class="my-jdt">
                        	<p class="jdt-p1 f-l">数量：</p>
                           
                            <p class="jdt-shuzi f-l">${ordList.goods_num}</p>
                    		<div style="clear:both;"></div>
                        </div>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                </c:forEach>
                <div class="my-p2">
                	<span class="my-sp3 f-l">订单号：${list.order_id}</span>
                	<c:if test="${list.status==0 }">
                <button class="my-btn1 f-r" onclick="window.location.href='payOrder.html?order_id=${list.order_id}'">支付：￥${list.goods_total}</button>
                <button class="my-btn1 f-r" onclick="del('${list.order_id}')">取消订单</button>
                	</c:if>
                	<c:if test="${list.status!=0}">
                	
                	<button class="my-btn1 f-r" >￥${list.goods_total}</button>
                	
                	<c:if test="${list.status==1}">
               		 <button class="my-btn1 f-r" onclick="send('${list.order_id}')">退款</button>
                	</c:if>
                	</c:if>
                    <div style="clear:both;"></div>
                </div>
            </div>
           </c:forEach> 
        	
        </div>
        <div class="my-info" style="display:none;">
        	<c:forEach items="${map['list0']}" var="list" varStatus="s">
    	<c:set value="ord0${s.index}" var="ord"></c:set>
        	<div class="my-k1">
            	<ul class="my-p1">
                	<li class="my-spl f-l">${list.add_time}</li> 
                	
                	<li class="my-spr f-r">
					<c:if test="${list.status==0 }">待支付</c:if>
					<c:if test="${list.status==1 }">待发货</c:if>
					<c:if test="${list.status==2 }">已发货</c:if>
					</li> 
					<li class="my-spl f-l"><font color="blue">&nbsp;&nbsp;${list.paystate}</font></li>
                    <div style="clear:both;"> </div> 
                </ul>
                <c:forEach items="${map[ord]}" var="ordList">
                <dl class="my-dl1">
                	<dt><a href="#"><img src="${ordList.goods_img}" style="width: 68px"></a></dt>
                    <dd>
                    	<h3><a href="#">${ordList.goods_name}</a></h3>
                        <p class="my-dp1">价格：<span>￥${ordList.goods_price}</span></p>
                        <div class="my-jdt">
                        	<p class="jdt-p1 f-l">数量：</p>
                           
                            <p class="jdt-shuzi f-l">${ordList.goods_num}</p>
                    		<div style="clear:both;"></div>
                        </div>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                </c:forEach>
                <div class="my-p2">
                	<span class="my-sp3 f-l">订单号：${list.order_id}</span>
                	<button class="my-btn1 f-r" onclick="window.location.href='payOrder.html?order_id=${list.order_id}'">支付：￥${list.goods_total}</button> 
                	<button class="my-btn1 f-r" onclick="del('${list.order_id}')">取消订单</button>
                    <div style="clear:both;"></div>
                </div>
            </div>
           </c:forEach> 
        
        	
        </div>
        <div class="my-info" style="display:none;">
            <c:forEach items="${map['list1']}" var="list" varStatus="s">
    	<c:set value="ord1${s.index}" var="ord"></c:set>
        	<div class="my-k1">
            	<ul class="my-p1">
                	<li class="my-spl f-l">${list.add_time}</li>
                	<li class="my-spr f-r">
					<c:if test="${list.status==0 }">待支付</c:if>
					<c:if test="${list.status==1 }">待发货</c:if>
					<c:if test="${list.status==2 }">已发货</c:if>
					</li>
					<li class="my-spl f-l"><font color="blue">&nbsp;&nbsp;${list.paystate}</font></li>
                    <div style="clear:both;"></div>
                </ul>
                <c:forEach items="${map[ord]}" var="ordList">
                <dl class="my-dl1">
                	<dt><a href="#"><img src="${ordList.goods_img}" style="width: 68px"></a></dt>
                    <dd>
                    	<h3><a href="#">${ordList.goods_name}</a></h3>
                        <p class="my-dp1">价格：<span>￥${ordList.goods_price}</span></p>
                        <div class="my-jdt">
                        	<p class="jdt-p1 f-l">数量：</p>
                           
                            <p class="jdt-shuzi f-l">${ordList.goods_num}</p>
                    		<div style="clear:both;"></div>
                        </div>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                </c:forEach>
                <div class="my-p2">
                	<span class="my-sp3 f-l">订单号：${list.order_id}</span>
                	
                    <button class="my-btn1 f-r">￥${list.goods_total}</button>
                    <c:if test="${list.status==1}">
               		 <button class="my-btn1 f-r" onclick="send('${list.order_id}')">退款</button>
                	</c:if>
                    <div style="clear:both;"></div>
                </div>
            </div>
           </c:forEach> 
                 	
        </div>
        <div class="my-info" style="display:none;">
            <c:forEach items="${map['list2']}" var="list" varStatus="s">
    	<c:set value="ord2${s.index}" var="ord"></c:set>
        	<div class="my-k1">
            	<ul class="my-p1">
                	<li class="my-spl f-l">${list.add_time}</li>
                	<li class="my-spr f-r">
					<c:if test="${list.status==0 }">待支付</c:if>
					<c:if test="${list.status==1 }">待发货</c:if>
					<c:if test="${list.status==2 }">已发货</c:if>
					</li>
					<li class="my-spl f-l"><font color="blue">&nbsp;&nbsp;${list.paystate}</font></li>
                    <div style="clear:both;"></div>
                </ul>
                <c:forEach items="${map[ord]}" var="ordList">
                <dl class="my-dl1">
                	<dt><a href="#"><img src="${ordList.goods_img}" style="width: 68px"></a></dt>
                    <dd>
                    	<h3><a href="#">${ordList.goods_name}</a></h3>
                        <p class="my-dp1">价格：<span>￥${ordList.goods_price}</span></p>
                        <div class="my-jdt">
                        	<p class="jdt-p1 f-l">数量：</p>
                           
                            <p class="jdt-shuzi f-l">${ordList.goods_num}</p>
                    		<div style="clear:both;"></div>
                        </div>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                </c:forEach>
                <div class="my-p2">
                	<span class="my-sp3 f-l">订单号：${list.order_id}</span>
                    <button class="my-btn1 f-r">￥${list.goods_total}</button>
                    <div style="clear:both;"></div>
                </div>
            </div>
           </c:forEach> 
            
        </div>
    </div>
    <jsp:include page="footer5.jsp"></jsp:include>	
    		
    		<script type="text/javascript">
    		function send(order_id){
    			var  b = confirm('确定退款吗？');
        		if(!b){
        		return ;
        		}
    			$.ajax({
    				url:'orderUpdate.html',
    				type:'post',
    				data:'order_id='+order_id+'&status=-5',
    				success:function(rs){
    					if(rs==1){
    						alert("提交成功，我们将3个工作日内给您退款！");
    						location.reload();
    					}else{
    						alert("失败，请联系客服！");
    					}
    				}
    			});
    		}
    		
    		
    		function del(order_id){
    			var  b = confirm('确定删除订单吗？');
        		if(!b){
        		return ;
        		}
    			$.ajax({
    				url:'../main/orderDel.html',
    				type:'post',
    				data:'order_id='+order_id,
    				success:function(rs){
    					if(rs==1){
    						alert("删除成功！");
    						location.reload();
    					}else{
    						alert("删除失败，请联系客服！");
    					}
    				}
    			});
    		}
    		
    		
    		</script>
</body>
</html>
