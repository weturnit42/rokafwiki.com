<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>

<div id="nav">
	<%@ include file="include/nav.jsp" %>
</div>

<div id="home_msg" style="margin:8px; font-size : 30px; color : #0F60CA; ">
	공군의, 공군에 의한, 공군을 위한
</div>

<div id = "writeMessage" style="position: relative; top: -50px; float: right;  right: 8px; text-decoration:none;">
<a href="/board/write">게시물 작성</a>
</div>

</body>
</html>
