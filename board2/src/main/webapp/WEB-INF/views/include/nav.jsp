<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link
	href="../include/nav.css"
	rel="stylesheet" type="text/css">
<style>
html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}</style>	
	
<head>
</head>
<body>
	<div id=squareTop
		style="position: relative; left: 0; height: 50px; background: #0F60CA;">
		<div id=squareTopText
			style="color: white; font-size: 46px; text-decoration: none; font-weight: 700; "><b>ROKAF
			WIKI</b></div>

		<div id=searchBar
			style="position: relative; top: -40px; float: right;">
			<select name="searchType">
				<option value="title"
					<c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
				<option value="content"
					<c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
				<option value="title_content"
					<c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
				<option value="writer"
					<c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
			</select> <input type="text" name="keyword" value="${page.keyword}" />

			<button type="button" id="searchBtn">검색</button>
		</div>

		<script>
			document.getElementById("searchBtn").onclick = function() {

				let searchType = document.getElementsByName("searchType")[0].value;
				let keyword = document.getElementsByName("keyword")[0].value;

				location.href = "/board/listPageSearch?num=1" + "&searchType="
						+ searchType + "&keyword=" + keyword;
			};
		</script>
	</div>
	<!-- 
	<div id=squareBot
		style="position: fixed; width: 100%; height: 70px; bottom: 0; background: #0F60CA;"></div> -->

</body>