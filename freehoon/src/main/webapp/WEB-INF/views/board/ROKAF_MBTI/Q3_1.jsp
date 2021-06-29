<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id=Q3_1>
		<br>
		<h4>&nbsp;자격증</h4>
		<p>
			&nbsp;&nbsp;&nbsp;기계 모집분야는 특정 특기에 가산점이 반영되는 자격증이 있습니다. 목록은 아래와 같습니다.
		</p>
		<p>		
			&nbsp;&nbsp;&nbsp;건설기계,공조냉동기계,기계정비,기중기,열처리,자동차정비,항공기기관정비,항공기기체정비,항공기장비정비,<br>
			&nbsp;&nbsp;&nbsp;항공,전자,전기,용접,위험물,가스,금형설계,기계설계,기계정비,비파괴검사,용접,일반기계,제관,주조,표면처리,<br>
			&nbsp;&nbsp;&nbsp;판금제관,컴퓨터응용선반,컴퓨터응용밀링,컴퓨터응용가공,기계가공조립,산업안전,생산자동화,항공기기관정비,항공기기체정비,<br>
			&nbsp;&nbsp;&nbsp;항공정비사면장,항공,FAA면장,가스,생산자동화,공유압,컴퓨터응용선반,기계정비,메카트로닉스,정밀측정<br>
		</p>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="건설기계">건설기계&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="공조냉동기계">공조냉동기계&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기계정비">기계정비&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기중기">기중기&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="열처리">열처리&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="자동차정비">자동차정비&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="항공기기관정비">항공기기관정비&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="항공기기체정비">항공기기체정비&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="항공기장비정비">항공기장비정비&nbsp;&nbsp;</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="항공">항공&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="전자">전자&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="전기">전기&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="용접">용접&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="위험물">위험물&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="가스">가스&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="금형설계">금형설계&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기계설계">기계설계&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="비파괴검사">비파괴검사&nbsp;&nbsp;</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="일반기계">일반기계&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="제관">제관&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="주조">주조&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="표면처리">표면처리&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="판금제관">판금제관&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="컴퓨터응용선반">컴퓨터응용선반&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="컴퓨터응용밀링">컴퓨터응용밀링&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="컴퓨터응용가공">컴퓨터응용가공&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기계가공조립">기계가공조립&nbsp;&nbsp;</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="산업안전">산업안전&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="생산자동화">생산자동화&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="항공정비사면장">항공정비사면장&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="FAA면장">FAA면장&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="공유압">공유압&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="메카트로닉스">메카트로닉스&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="정밀측정">정밀측정&nbsp;&nbsp;</label>
		<br>
		
		<button class="finish_adding_button" id="finish_adding_button" onclick="$('#Q1').load('Q4');score1();">다음</button>

	</div>
	<script>
	function score1(){
		var i=0;
		localStorage.setItem("항공기지상장비정비", 0);
		localStorage.setItem("항공기제작정비", 0);
		localStorage.setItem("항공기초과저지", 0);
		var arr1 = ['건설기계','공조냉동기계','기계정비','기중기','열처리','자동차정비','항공기기관정비','항공기기체정비','항공기장비정비','항공','전자','전기','용접','위험물','가스'];
		var arr2 = ['금형설계','기계설계','기계정비','비파괴검사','용접','일반기계','제관','주조','표면처리','판금제관','컴퓨터응용선반','컴퓨터응용밀링','컴퓨터응용가공','기계가공조립','산업안전','생산자동화','항공기기관정비','항공기기체정비','항공정비사면장','항공','FAA면장','가스'];
		var arr3 = ['생산자동화','공유압','컴퓨터응용선반','기계정비','메카트로닉스','정밀측정'];
		var score1 = 0;
		var score2 = 0;
		var score3 = 0;
		
		$('input:checkbox[name="certificate"]:checked').each(function (){
			if(arr1.includes($('input:checkbox[name="certificate"]:checked')[i].value))
				score1++;
			if(arr2.includes($('input:checkbox[name="certificate"]:checked')[i].value))
				score2++;
			if(arr3.includes($('input:checkbox[name="certificate"]:checked')[i].value))
				score3++;
			i++;
		});
		
		localStorage.setItem("항공기지상장비정비", score1);
		localStorage.setItem("항공기제작정비", score2);
		localStorage.setItem("항공기초과저지", score3);
	}
	</script>
</body>
</html>