<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     
    
    <title>城市列表</title>
    
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="email=no" />
    <meta name="format-detection" content="address=no;">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="default" />
    <link rel="apple-touch-icon-precomposed" href="http://img.58cdn.com.cn/m58/img/icon58b.png" />
    <link rel="apple-touch-startup-image" href="http://img.58cdn.com.cn/m58/img/icon58b.png" />

    <title>61送菜</title>
    <!-- css -->
    <link rel="stylesheet" href="css/m.all_v20160506190752.css" />
    <link rel="stylesheet" href="css/m5.city_v20160506214733.css" />
    <!-- css end-->
    
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=GUxjKHAZgc8CspgRdwaBxrga5rXrK3Kk"></script>
	<title>IP定位获取当前城市</title>


  </head>
  
  <body>
  
  	<div id="allmap"></div>
 <div class="body_div">

<!-- BODY HEADER -->

 
<!-- BODY HERDER END -->
<!-- BODY SEARCHER -->
<!--有图：search 无图：search hpic -->
<!--<div class="search">
    <form action="#" method="get" onsubmit="return win.submit();">
        <div class="search_input">
            <a id='searchUrl' class='search_url_new'>请输入关键词</a>
            <span  class="ico_clear body_bg"  onclick="win.clear(this)"></span>
        </div>
        <div class="search_but body_bg" onClick="win.submit(0)"></div>
    </form>
    <div class="search_ajax">
    </div>
</div>-->
<!-- 
<div class="search search_container_city search_container">
    <form action="#" method="get" onSubmit="return win.submit();">
        <div class="search_input">
            <input type="text" name="key" class="input_keys" id="keyWords1" value="" onBlur="win.blur()"   onfocus="win.focus()" onkeyup="win.getData()" autocomplete="off" placeholder="输入城市名或首字母">
        </div>
        <div class="search_but body_bg" onclick="win.submit(0)"></div>
    </form>
    <div class="search_ajax"> </div>
</div> -->

<!-- BODY SEARCHER END -->

<!-- 城市搜索-->

<div class="city_box">

<div class="curr_city" style="display: none;">正在定位中,请稍后...</div>
<div class="local-city"></div>

<h3>热门城市</h3>
<ul class="city_lst hot">
      <li><a href="index.html"  class="nobor nobor2">文昌</a></li>
</ul>

<h3>按字母排序</h3>

<ul class="letters_lst">

    <li><a href="javascript:;">A</a></li>

    <li><a href="javascript:;">B</a></li>

    <li><a href="javascript:;">C</a></li>

    <li><a href="javascript:;">D</a></li>

    <li><a href="javascript:;">E</a></li>

    <li><a href="javascript:;">F</a></li>

    <li><a href="javascript:;">G</a></li>

    <li><a href="javascript:;">H</a></li>

    <li><a href="javascript:;">J</a></li>

    <li><a href="javascript:;">K</a></li>

    <li><a href="javascript:;">L</a></li>

    <li><a href="javascript:;">M</a></li>

    <li><a href="javascript:;">N</a></li>

    <li><a href="javascript:;">P</a></li>

    <li><a href="javascript:;">Q</a></li>

    <li><a href="javascript:;">R</a></li>

    <li><a href="javascript:;">S</a></li>

    <li><a href="javascript:;">T</a></li>

    <li><a href="javascript:;">W</a></li>

    <li><a href="javascript:;">X</a></li>

    <li><a href="javascript:;">Y</a></li>

    <li><a href="javascript:;">Z</a></li>

</ul>

<h4><p><span>A</span>(以A为开头的城市名)</p></h4>

<ul class="city_lst">

  
  
</ul>

<h4><p><span>B</span>(以B为开头的城市名)</p></h4>

<ul class="city_lst">

   
  
</ul>

<h4><p><span>C</span>(以C为开头的城市名)</p></h4>

<ul class="city_lst">

  
    
 
</ul>

<h4><p><span>D</span>(以D为开头的城市名)</p></h4>

<ul class="city_lst">

   
 
</ul>

<h4><p><span>E</span>(以E为开头的城市名)</p></h4>

<ul class="city_lst">

    
</ul>

<h4><p><span>F</span>(以F为开头的城市名)</p></h4>

<ul class="city_lst">

   
</ul>

<h4><p><span>G</span>(以G为开头的城市名)</p></h4>

<ul class="city_lst">
 
</ul>

<h4><p><span>H</span>(以H为开头的城市名)</p></h4>

<ul class="city_lst">

   
</ul>

<h4><p><span>J</span>(以J为开头的城市名)</p></h4>

<ul class="city_lst">

   
</ul>

<h4><p><span>K</span>(以K为开头的城市名)</p></h4>

<ul class="city_lst">

 
</ul>

<h4><p><span>L</span>(以L为开头的城市名)</p></h4>

<ul class="city_lst">

   
</ul>

<h4><p><span>M</span>(以M为开头的城市名)</p></h4>

<ul class="city_lst">

   
</ul>

<h4><p><span>N</span>(以N为开头的城市名)</p></h4>

<ul class="city_lst">

   
</ul>

<h4><p><span>P</span>(以P为开头的城市名)</p></h4>

<ul class="city_lst">

 
</ul>

<h4><p><span>Q</span>(以Q为开头的城市名)</p></h4>

<ul class="city_lst">
 
</ul>

<h4><p><span>R</span>(以R为开头的城市名)</p></h4>

<ul class="city_lst">

  
</ul>

<h4><p><span>S</span>(以S为开头的城市名)</p></h4>

<ul class="city_lst">

     
</ul>

<h4><p><span>T</span>(以T为开头的城市名)</p></h4>

<ul class="city_lst">

    
</ul>

<h4><p><span>W</span>(以W为开头的城市名)</p></h4>

<ul class="city_lst">

   <li><a href="index.html"  class="nobor nobor2">文昌</a></li>
  
    
</ul>

<h4><p><span>X</span>(以X为开头的城市名)</p></h4>

<ul class="city_lst">

  
<li><a href="index.html?city_id=1"  class="nobor nobor2">湘潭</a></li>
</ul>

<h4><p><span>Y</span>(以Y为开头的城市名)</p></h4>

<ul class="city_lst">


</ul>

<h4><p><span>Z</span>(以Z为开头的城市名)</p></h4>

<ul class="city_lst">


</ul>

</div>
 
  </body>
</html>
 <script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);

	function myFun(result){
		var cityName = result.name;
		map.setCenter(cityName);
		alert("当前定位城市:"+cityName);
	}
	var myCity = new BMap.LocalCity();
	myCity.get(myFun);
</script>
 