<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- jQuery -->

<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

 -->

<%-- <script src="${pageContext.request.contextPath}/resources/common/js/jquery-3.3.1.min.js" ></script> --%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Bootstrap CSS -->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.bundle.min.js"></script>


<!-- Bootstrap theme -->

<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.min.css"> --%>


<!-- common CSS -->

<link rel="stylesheet"
	href="<c:url value='/resources/common/css/common.css'/>">

<script>
	function enterkey() {
		if (window.event.keyCode == 13) {
			var input = document.getElementById("text").value;
			temp = input;

			location.href = "/board/getBoardList?searchType=title&keyword="
					+ input;
		}
	}
</script>

<!--메뉴바 추가 부분-->

<nav class="navbar navbar-expand-sm navbar-dark"
	style="background-color: #2C3E74;">

	<a class="navbar-brand" href="#">ROKAF WIKI</a>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExample03" aria-controls="navbarsExample03"
		aria-expanded="false" aria-label="Toggle navigation">

		<span class="navbar-toggler-icon"></span>
	</button>


	<div class="collapse navbar-collapse" id="navbarsExample03">

		<ul class="navbar-nav mr-auto">

			<li class="nav-item"><a class="nav-link" href="/board/FrontPage">FrontPage</a></li>

			<li class="nav-item"><a class="nav-link"
				href="/board/getBoardList">WIKI</a></li>

			<li class="nav-item"><a class="nav-link"
				href="/board/ROKAF_MBTI/Q1">ROKAF MBTI</a></li>

			<li class="nav-item"><a class="nav-link"
				href="/board/SpecialThanks">Special Thanks</a></li>
		</ul>
	</div>
	<input class="form-control" id="text" type="text" placeholder="Search"
		onkeyup="enterkey()" style="width: 300px;">

</nav>
