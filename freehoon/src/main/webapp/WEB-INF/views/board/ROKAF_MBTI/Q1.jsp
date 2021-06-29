<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<head>
	<meta charset="UTF-8"> <!-- 추가할부분 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
	<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 추가할부분 -->

<title>ROKAF WIKI</title>
</head>
<body>
<div id = Q1>
	<br>
	<h4>&nbsp;어떤 모집분야(직종, 대분류)에 지원하셨나요?</h4>

		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='공병' />공병</label><br>
		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='기계' />기계</label><br>
		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='의무' />의무</label><br>
		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='일반' />일반</label><br>
		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='일반(헌급방 지정)' />일반(헌급방 지정)</label><br> 
		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='전자계산' />전자계산</label><br>
		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='차량운전' />차량운전</label><br>
		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='차량정비' />차량정비</label><br> 
		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='통신전자전기' />통신전자전기</label><br> 
		&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class' value='화생방' />화생방</label><br> 
		&nbsp;&nbsp;&nbsp;<input type="button" id="next" value="다음" onclick="getClass();"></input>
	</div>

	<script type="text/javascript">
		function getClass() {
			var obj_length = document.getElementsByName("class").length;

			for (var i = 0; i < obj_length; i++) {
				if (document.getElementsByName("class")[i].checked == true) {
					localStorage.setItem("class", document.getElementsByName("class")[i].value);
					if (document.getElementsByName("class")[i].value == "공병")
						$('#Q1').load('Q2_1');
					else if (document.getElementsByName("class")[i].value == "의무")
						$('#Q1').load('Q2_2');
					else if (document.getElementsByName("class")[i].value == "차량정비")
						$('#Q1').load('Q2_3');
					else if (document.getElementsByName("class")[i].value == "화생방")
						$('#Q1').load('Q2_4');
					else if (document.getElementsByName("class")[i].value == "전자계산")
						$('#Q1').load('Q2_5');
					else if (document.getElementsByName("class")[i].value == "기계")
						$('#Q1').load('Q3_1');
					else if (document.getElementsByName("class")[i].value == "일반")
						$('#Q1').load('Q3_2');
					else if (document.getElementsByName("class")[i].value == "일반(헌급방 지정)")
						$('#Q1').load('Q3_3');
					else if (document.getElementsByName("class")[i].value == "차량운전")
						$('#Q1').load('Q3_4');
					else if (document.getElementsByName("class")[i].value == "통신전자전기")
						$('#Q1').load('Q3_5');
				}
			}
		} 

/* 		function loadCode() {
			//$( 'div' ).html('hi');
			$('#Q1').load('Q2_1 #Q2_1');
		} */
	</script>
</body>
</html>