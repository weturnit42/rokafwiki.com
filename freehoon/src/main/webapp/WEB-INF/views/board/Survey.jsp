<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>jQuery .html() </title>
</head>
<body>
	<br>
	<h3>&nbsp;ë¨¼ì  ë³¸ì¸ì´ ì§ìí í¹ê¸°ì ëë¶ë¥ë¥¼ ê³¨ë¼ì£¼ì¸ì</h3>
	<div class = "div1">
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="ì¼ë°">ì¼ë°</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="ì¼ë°(íê¸ë°© ì§ì )">
		ì¼ë°(íê¸ë°© ì§ì )</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="ì ìê³ì°">
		ì ìê³ì°</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="íìë°©">
		íìë°©</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="ìë¬´">
		ìë¬´</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="ê¸°ê³">
		ê¸°ê³</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="ì°¨ëì´ì ">
		ì°¨ëì´ì </label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="ì°¨ëì ë¹">
		ì°¨ëì ë¹</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="íµì ì ìì ê¸°">
		íµì ì ìì ê¸° </label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="ê³µë³">
		ê³µë³</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="radio" name="class" value="ìì§ ëª» ì í¨">
		ìì§ ëª» ì í¨</label>
		<br>
		<br>
		&nbsp;&nbsp;&nbsp;<input type="button" id="next" value="입력" onclick="/*getClass();*/loadCode();"></input>
	</div>

	<script type="text/javascript">
		/*function getClass() {
			var obj_length = document.getElementsByName("class").length;

			for (var i=0; i<obj_length; i++) {
				if (document.getElementsByName("class")[i].checked == true) {
					//alert(document.getElementsByName("class")[i].value);
				}
			}
		}*/

		function loadCode() {
			//$( 'div' ).html('hi');
			$( 'div' ).load('test');
		}


	</script>
</body>
</html>