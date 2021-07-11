<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ include file="/WEB-INF/views/layout/header.jsp"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>ROKAF WIKI</title>

<script>
	//문서 버튼 클릭 이벤트
	$(document).on('click', '#btnDoc', function() {
		var url = "${pageContext.request.contextPath}/board/getBoardLog";
		url = url + "?bid=" + ${boardLogContent.bid};

		location.href = url;
	});
	
</script>

</head>

<style>
body {
	padding-top: 0px;
	padding-bottom: 30px;
}
</style>

<body>

	<article>

		<div class="container" role="main">

			<h2>WIKI</h2>

			<div class="bg-white rounded shadow-sm">

				<div class="board_title">
					<c:out value="${boardLogContent.title}" />
				</div>

				<div class="board_info_box">

					<span class="board_author"><c:out
							value="${boardLogContent.reg_id}" />,</span><span class="board_date"><c:out
							value="${boardLogContent.reg_dt}" /></span>

				</div>
	
				<div class="board_content">${boardLogContent.content}</div>

				<%-- <div class="board_tag">TAG : <c:out value="${boardContent.tag}"/></div> --%>

			</div>

			<div style="margin-top: 20px">

				<button type="button" class="btn btn-sm btn-primary" id="btnDoc">돌아가기</button>
				
			</div>

		</div>

	</article>

</body>

</html>