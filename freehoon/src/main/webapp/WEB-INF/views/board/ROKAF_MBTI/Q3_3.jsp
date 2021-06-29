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
			&nbsp;&nbsp;&nbsp;일반(헌급방 지정) 모집분야는 특정 특기에 가산점이 반영되는 자격증이 있습니다. 목록은 아래와 같습니다.
		</p>
		<p>
			&nbsp;&nbsp;&nbsp;기계가공조립, 무선설비, 자동차정비, 전기, 전자계산기, 정보기기운용, 전자기기<br>
		</p>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기계가공조립">기계가공조립&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="무선설비">무선설비&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="자동차정비">자동차정비&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="전기">전기&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="전자계산기">전자계산기&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="정보기기운용">정보기기운용&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="전자기기">전자기기&nbsp;&nbsp;</label>
		<br>
		
		<button class="finish_adding_button" id="finish_adding_button" onclick="$('#Q1').load('Q4');score3();">다음</button>

	</div>
	<script>
	function score3(){
		var i=0;
		localStorage.setItem("단거리유도무기운용", 0);
		var arr2 = ['기계가공조립','무선설비','자동차정비','전기','전자계산기','정보기기운용','전자기기'];
		var score2 = 0;
		
		$('input:checkbox[name="certificate"]:checked').each(function (){
			if(arr2.includes($('input:checkbox[name="certificate"]:checked')[i].value))
				score2++;
			i++;
		});
		localStorage.setItem("단거리유도무기운용", score2);
	}
	</script>
</body>
</html>