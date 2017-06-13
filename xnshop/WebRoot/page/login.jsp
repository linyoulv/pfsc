<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">

<title>路一送菜商户登陆</title>
<!-- <link rel="stylesheet" type="text/css" href="css/style.css">

<link rel="stylesheet" type="text/css" href="css/shoujisc.css"> -->

<link rel="stylesheet" type="text/css" href="css/login.css">

<link rel="stylesheet" href="css/search.css">

<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript" src="js/woxiangyao.js"></script>

<script type="text/javascript" src="js/TouchSlide.1.1.js"></script>

<script type="text/javascript" src="js/foot.js"></script>

<link rel="stylesheet" type="text/css" href="css/showTip.css">

<script type="text/javascript" src="js/showTip.js"></script>

</head>
<div data-reactroot="" class="b-unlogin">
    <div class="page page-white b-login flex flex-column page-content">
         <div class="flex flex-none flex-column">
            <div class="text-center" style="margin: 50px 0px 20px;">
            <img src="images/getheadimg.jpg" alt="" width="120">
            </div>
            <form>
            <div class="flex flex-align-center margin-10 border-1px-bottom">
            <i class="ifont ifont-phone text-primary margin-lr-10">
            
            </i>
            <input name="username" id="username" class="weui_input" placeholder="输入会员账号" type="text"></div>
            <div class="flex flex-align-center margin-10 border-1px-bottom">
            <i class="ifont ifont-password text-primary margin-lr-10"></i>
            <input name="password" id="password" class="weui_input" placeholder="输入登录密码" type="password"></div>
            <div class="flex margin-10"><small class="text-warning"></small></div>
            <div class="padding-10"><button type="button" class="weui_btn weui_btn_primary"  onClick="login()">登录</button></div>
            </form>
        </div>
        <div class="flex flex-flex" style="flex: 1 1 0%;"></div>
        <div class="flex flex-none flex-column padding-15 text-center">
        <small><span class="text-desc">没有账户？</span>
        <a class="text-primary decoration" href="/xnshop/page/register.html">马上注册</a>
        </small>
        </div>
    </div>
</div>

	<script type="text/javascript">
  	function login(){
  	 
  	
        var username = $('#username').val();
	    var password = $('#password').val();

		if(username!=null && username.length>0){
		
		   
		}else{
		   alert("会员账号不能为空"); 
		   return false ;
		}
		
		
		if(password!=null && password.length>0){
		
		   
		}else{
		   alert("密码不能为空"); 
		   return false ;
		}
 
 
	$.ajax({
		url:'isExist.html',
		type:'post',
		data:'username='+username+'&password='+password,
		success:function(rs){
			if(rs==1){
			window.location.href='m_index.html';
			}else{
				alert("登陆失败，请联系管理员！");
				//window.location.href='main.html';	
			}
		}
	});
		  
 }    
	 
 

</script>	
 
</html>
