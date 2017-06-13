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

<link rel="stylesheet" type="text/css" href="css/register.css">

<script type="text/javascript" src="js/showTip.js"></script>

</head>
<body>
 <div id="appContainer" class="container">
    <div data-reactroot="" class="b-unlogin">
        <div class="page b-register flex flex-column page-content">
        <form class="flex-none">
       
            
            <div class="weui_cells weui_cells_form">
                <div class="weui_cell">
                    <div class="weui_cell_hd">
                    <label class="weui_label">会员账号</label>
                    </div>
                    <div class="weui_cell_bd weui_cell_primary">
                    <input name="username" id="username"  class="weui_input" placeholder="请输入你的手机号码作为账号" type="text">
                    </div>
                
                </div>
            
                <div class="weui_cell">
                    <div class="weui_cell_hd">
                    <label class="weui_label">登录密码</label>
                    </div>
                    <div class="weui_cell_bd weui_cell_primary">
                    <input name="password" id="password" class="weui_input" placeholder="设置登录密码" type="password">
                    </div>
                </div>
            
                <div class="weui_cell">
                     <div class="weui_cell_hd">
                     <label class="weui_label">确认密码</label>
                     </div>
                    <div class="weui_cell_bd weui_cell_primary">
                    <input name="repassword" id="repassword" class="weui_input" placeholder="再次输入登录密码" type="password">
                    </div>
                </div>
               
               
                   <div class="weui_cell">
                     <div class="weui_cell_hd">
                     <label class="weui_label">收货地址</label>
                     </div>
                    <div class="weui_cell_bd weui_cell_primary">
                    <input name="address" id="address" class="weui_input" placeholder="请输入您的店铺名称作为收货地址" type="text">
                    </div>
                </div>
                
                
                 <div class="weui_cell">
                     <div class="weui_cell_hd">
                     <label class="weui_label">联系方式</label>
                     </div>
                    <div class="weui_cell_bd weui_cell_primary">
                    <input name="phone" id="phone" class="weui_input" placeholder="输入联系电话号码" type="text" >
                    </div>
                </div>
              
            
            </div>
            <div class="text-warning text-small padding-10"></div>
            <div class="margin-top-10 margin-bottom-5">
                <div class="text-center">
                <a href="http://www.61songcai.com/xy.html" class="text-desc text-small decoration">《路一送菜商户平台注册协议》</a>     </div>
                <div class="text-center">
                <a href="http://www.61songcai.com/sy.html" class="text-desc text-small decoration">《路一送菜商户平台使用协议》</a>
                </div>
            </div>
            <div class="padding-lr-10">
            <button type="button" class="weui_btn weui_btn_primary" onClick="add()">我已阅读并同意以上全部协议</button>
            </div>
        </form>
        
        <div class="flex flex-flex" style="flex: 1 1 0%;"></div>
        <div class="text-center text-desc padding-10">
        <small><!-- react-text: 43 -->售前客服 <!-- /react-text --><!-- react-text: 44 -->18117779888 <!-- /react-text --></small>
        </div><!-- react-empty: 45 -->
        
        </div> 
    </div>
</div>
 
 	<script type="text/javascript">
 	
 	 
  	function add(){
  	 
  	
        var username = $('#username').val();
	    var password = $('#password').val();
		var repassword = $('#repassword').val();
		var address = $('#address').val();
		
		var phone = $('#phone').val();
		
		if(username!=null && username.length>0){
		    if(!(/^1(3|4|5|7|8)\d{9}$/.test(username))){ 
                  alert("手机号码有误，请重填");  
                return false; 
            }
   
		   
		}else{
		   alert("用户名不能为空"); 
		   return false ;
		}
		
		
		if(password!=null && password.length>0){
		
		   
		}else{
		   alert("密码不能为空"); 
		   return false ;
		}
		
		
		if(repassword!=null && repassword.length>0){
		
		   
		}else{
		   alert("确认密码不能为空"); 
		   return false ;
		}
		 
		 
	  if(password != repassword){
		
		  alert("两次输入的密码，不一致"); 
		  return false ;
		} 
		 
	   if(address!=null && address.length>0){
		
		   
		}else{
		    alert("收货地址不能为空"); 
		   return false ;
		 
		}
		 
		if(phone!=null && phone.length>0){
		
		  
              if(!(/^1(3|4|5|7|8)\d{9}$/.test(phone))){ 
                 alert("手机号码有误，请重填");  
              return false; 
             } 
		  
		  $.ajax({
			url:'merchantInsert.html',
			type:'post',
			data:'username='+username+'&password='+password+'&repassword='+repassword+'&address='+address+'&phone='+phone,
			success:function(rs){
				if(rs==1){
					
					alert("已提交，管理员会再三个工作日内审核！");
					window.location.href = document.referrer;
				}else{  
				
					alert("注册商户失败！");
				}
			}
		});  
		
		   
		}else{
		  
		     alert("联系电话不能为空"); 
		   return false ;
		}
		 
		 
		
	 
      
	}    
	 
 

	</script>	

</body>
 
</html>
