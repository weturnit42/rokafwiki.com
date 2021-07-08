<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>


<!-- Bootstrap CSS -->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>ROKAF WIKI</title>
</head>

<c:url var="getBoardListURL" value="/board/getBoardList"></c:url>

<script type="text/javascript">

function fn_contentView(bbid){
	var url = "${pageContext.request.contextPath}/board/getBoardLogContent";
	url = url + "?bbid="+bbid;
	location.href = url;
}

</script>

<body>
	<article>
		<div class="container">

			<div class="table-responsive">
				<br>
				<h2>WIKI</h2>

				<div class="container">

					<div class="table-responsive">

						<table class="table table-striped table-sm">

							<colgroup>

								<col style="width: 5%;" />

								<col style="width: auto;" />

								<col style="width: 15%;" />

								<col style="width: 10%;" />

								<col style="width: 10%;" />

							</colgroup>

							<thead>

								<tr>

									<th>NO</th>

									<th>글제목</th>

									<th>작성자</th>

									<th>조회수</th>

									<th>수정일</th>

								</tr>

							</thead>

							<tbody>

								<c:choose>

									<c:when test="${empty boardLogList }">

										<tr>
											<td colspan="5" align="center">데이터가 없습니다.</td>
										</tr>

									</c:when>

									<c:when test="${!empty boardLogList}">

										<c:forEach var="list" items="${boardLogList}">

											<tr>

												<td><c:out value="${list.bbid}" /></td>
												<td><a href="#"
													onClick="fn_contentView(<c:out value="${list.bbid}"/>)">
														<c:out value="${list.title}" />
												</a></td>
												<td><c:out value="${list.reg_id}" /></td>

												<td><c:out value="${list.view_cnt}" /></td>

												<td><c:out value="${list.edit_dt}" /></td>
											</tr>

										</c:forEach>

									</c:when>

								</c:choose>

							</tbody>

						</table>
					</div>
				</div>
			</div>
		</div>
	</article>
</body>