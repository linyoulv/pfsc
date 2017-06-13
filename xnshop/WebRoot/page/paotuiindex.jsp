<!DOCTYPE>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
        <meta name="USERID" content="">
        <link rel="stylesheet" type="text/css" href="css/iconfont.css">
        <link type="text/css" rel="stylesheet" href="css/main_c.css?v=2016011801">	 
        <title>路一跑腿</title>
        <style>
        body{
            background-color: #fff !important;
        }
          img{
              width: 100%;
          }

        .swipe {
          overflow: hidden;
          visibility: hidden;
          position: relative;
        }
        .swipe-wrap {
          overflow: hidden;
          position: relative;
        }
        .swipe-wrap > div {
          float:left;
          width: 20px;
          position: relative;
        }
		.dialog{
			position:absolute;
			height:100%;
			width:100%;
			background:rgba(0,0,0,.3);
			top:0;
			z-index:9999;
			display:none;
		}
		.modelDialog{
			position:absolute;
			left:10%;
			top:40%;
			width:80%;
			background:#fff;
			text-align: center;
			border-radius:10px;
			
		}
		.dialogBody{
			padding:10% 3%;
			border-bottom: 1px solid #EFEFEF;
		}
		.dialogFoot{
			padding:2%;
		}
		.dialogFoot button{
			border:none;
			background:none;
			padding: 0px;
			width: 40%;
			line-height: 1.8em;
			font-size:14px;
		}
          </style>
        
    </head>
    <body>
 

        
    
      <section class="choose_otype">
      	<div class="otype_col">
      	      <div class="otype_box" >
            	<img src="http://7xj3tk.com1.z0.glb.clouddn.com/menu/home_help@3x.png" class="otype_box_left">
                <div class="otype_box_right">
                	<h3>
                    	 <a href="DaiBan.html" class="img-txt"><font>代办</font></a>
                        <span class="price_right"><b>20</b>元起</span>
                    </h3>
                    <p>餐厅排队、医院挂号、代办缴费、代缴罚款、遛狗代养，啥体力活都能干</p> 
                </div>
            </div>
        	<div class="otype_box" >
           
                   <a href="PaoTui.html" class="img-txt"><img src="http://7xj3tk.com1.z0.glb.clouddn.com/menu/home_nbuy@3x.png" class="otype_box_left">
                <div class="otype_box_right"></a>
                	<h3>
                    	<a href="PaoTui.html" class="img-1" > <font>代购</font></a>
                        <span class="price_right"><b>3</b>元起</span>
                    </h3>
                    <p>早餐夜宵、啤酒烤串、水果生鲜、超市药店、各类急用，同城有的都能买</p>
                </div>
            </div>
            <div class="otype_box" >
            	 <a href="JieSong.html" class="img-txt"><img src="http://7xj3tk.com1.z0.glb.clouddn.com/menu/home_delivery@3x.png" class="otype_box_left"></a>
                <div class="otype_box_right">
                	<h3>
                    	 <a href="JieSong.html" class="img-txt"><font>接送</font></a>
                        <span class="price_right"><b>20</b>元起</span>
                    </h3>
                    <p>送蛋糕、送鲜花、送文件、取钥匙、取证件，专人快送，想送啥就送啥</p>
                </div>
            </div>
          
        </div>
      </section>
      <section class='city-choose'>
        <header>
          <i id='closeCity' class="icon iconfont icon-gray" style='font-size:30px;'>&#xe608;</i>
          <div class="current">
            <i class="icon iconfont green" style='font-size:20px;'>&#xe646;</i>
            <span class="position"></span>
          </div>
        </header>
        <div id='scroller'  class='body'>
          <div class='all-city'>
          </div>
        </div>
      </section>
      <section class="dialog">
      	<div class="modelDialog">
            <div class="dialogBody"></div>
            <div class="dialogFoot">
                <button class="dialogTrue">确定</button>
                <button class="dialogCancel">取消</button>
            </div>
        </div>
      </section>
    </body>
    <script type="text/javascript" src='/static_f/js/iscroll.js'></script>
    <script src="/static_f/js/swipe.js"></script>
    <script type="text/javascript" src='/static_f/js/assign.js?v=2016122301'></script>
</html>