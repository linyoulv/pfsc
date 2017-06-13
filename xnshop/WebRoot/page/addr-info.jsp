<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title></title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/area.js"></script>
<script type="text/javascript">
$(function(){
	init("province","city","area");
});
</script>
</head>

<body>
	
    <div class="sjsc-title1">
    	<h3 class="sjsc-t1l f-l"><a href="javascript:history.go(-1)"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a></h3>
        <button class="sjsc-btn1 f-r" onclick="add()">保存</button>
        <div style="clear:both;"></div>
    </div>
   
    
    <ul class="xzdz-ul1">
    <c:forEach items="${list}" var="list">
    
    	<li>
        	<p class="xzdz-p1 f-l">收货人</p>
        	<input type="hidden" value="${list.addr_id}" id="addr_id">
            <input type="text" placeholder="姓名" class="xzdz-ipt1 f-l" id="addr_user" value="${list.addr_user}"/>
            <div style="clear:both;"></div>            
        </li>
    	<li>
        	<p class="xzdz-p1 f-l">手机号</p>
            <input type="text" placeholder="11位手机号" class="xzdz-ipt1 f-l" id="addr_tel" value="${list.addr_tel}"/>
            <div style="clear:both;"></div>            
        </li>
    	
    	<li>
        	<p class="xzdz-p1 f-l">详细地址</p><p>
        	<select id="province" name="province"  lang="${list.province }" class="input-text" style="width: 20%"></select>
    <select id="city" name="city" lang="${list.city }"  class="input-text" style="width: 20%"></select>
    <select id="area" name="area" lang="${list.area }" class="input-text" style="width: 20%"></select></p>
            <input type="text" placeholder="具体到街道门牌信息" class="xzdz-ipt1 f-l" id="addr_name"  value="${list.addr_name}"/> 
            
            <div style="clear:both;"></div>            
        </li>
    	 </c:forEach>
    </ul>
    <button class="drdd-btn" onclick="del('${addr_id}')">删除收货地址</button>
    <script type="text/javascript">
			function add() {
				var addr_id =$('#addr_id').val();
				var addr_user =$('#addr_user').val();
				if(addr_user==""){
					showTip("请填写姓名");return;
				}
				var addr_tel =$('#addr_tel').val();
				if(addr_tel==""){
					showTip("请填写手机号码");return;
				}
				var province =$('#province').val();
				if(province==0){
					showTip("请选择省份");return;
				}
				var city =$('#city').val();
				if(city==0){
					showTip("请选择城市");return;
				}
				var area =$('#area').val();
				if(area==0||area==null){
					showTip("请选择区县");return;
				}
				
				var addr_name =$('#addr_name').val();
				if(addr_name==""){
					showTip("请填写具体收货地址");return;
				}
				$.ajax({
					url : 'addrAddjsp.html',
					type : 'post',
					data : 'addr_user=' + addr_user + '&addr_tel=' + addr_tel
					+ '&addr_name=' + addr_name+ '&addr_id=' + addr_id+ '&province=' + province+ '&city=' + city+ '&area=' + area,
					success : function(rs) {
						if (rs == 1) {
							window.location.href = document.referrer;
						} else {
							alert("系统故障！");
						}
					},
				error:function(){
					alert("进来了");
				}
				})
			}
			function del(addr_id){
				var  b = confirm('确定删除？');
				if(!b){
				return ;
				}
				$.ajax({
					url:'/xnshop/page/addrAddjsp.html',
					type:'post',
					data:'addr_id='+addr_id,
					success:function(rs){
						if(rs==1){
							window.location.href = document.referrer;
						}else{
							alert("失败！");
						}
					}
				})
			}
		</script>
</body>
</html>
