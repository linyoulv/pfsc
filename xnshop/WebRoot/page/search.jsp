<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<title></title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="css/common2.css">
<link rel="stylesheet" href="css/search.css">
<script type="text/javascript" src="js/jquery.js"></script>

</head>
<body>
	<header>
		<a href="javascript:history.go(-1);"><img src="images/back.png" alt="" style="width:20px;height: 21px;"/></a>
		<a class="fr hd_search_b" onclick="sgList()"><span></span></a>
		<br>
		<div class="key_from" style="margin-top:-24px">
			<input id="goods_name" name="keyword" class="hd_keyword"
				placeholder="请输入商品名称" style="height: 40px; ">
		</div>
	</header>
	<script type="text/javascript">
	function sgList(){
		var goods_name = $('#goods_name').val();
		window.location.href='secGoodsList.html?goods_name='+goods_name;
	}
	</script>
	<div class="hotkey_box" style="height: 175px; ">
		<div class="con_warp">
			<p class="t">热门搜索：</p>
			<div class="hotkeys">
				<c:forEach items="${list}" var="list">
				<a href="secGoodsList.html?goods_name=${list.sec_name}" class="btnWord">${list.sec_name}</a>
				</c:forEach>
			</div>
			
		</div>
	</div>

</body>
</html>
