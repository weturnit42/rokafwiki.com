<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id=Q3_5>
		<br>
		<h4>&nbsp;자격증</h4>
		<p>
			&nbsp;&nbsp;&nbsp;차량운전 모집분야는 특정 특기에 가산점이 반영되는 자격증이 있습니다. 목록은 아래와 같습니다.
		</p>
		<p>
			&nbsp;&nbsp;&nbsp;운전면허1종대형, 운전면허1종보통<br>
		</p>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="운전면허1종대형">운전면허1종대형&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value=" 운전면허1종보통"> 운전면허1종보통&nbsp;&nbsp;</label>
		<br>
		
		<button class="finish_adding_button" id="finish_adding_button" onclick="$('#Q1').load('Q4');score4();">다음</button>

	</div>
	<script>
	function score4(){
		var i=0;
		localStorage.setItem("일반차량운전", 0);
		var arr2 = ['운전면허1종대형', '운전면허1종보통'];
		var score2 = 0;
		
		$('input:checkbox[name="certificate"]:checked').each(function (){
			if(arr2.includes($('input:checkbox[name="certificate"]:checked')[i].value))
				score2++;
			i++;
		});
		localStorage.setItem("일반차량운전", score2);
	}
	</script>
</body>
</html>