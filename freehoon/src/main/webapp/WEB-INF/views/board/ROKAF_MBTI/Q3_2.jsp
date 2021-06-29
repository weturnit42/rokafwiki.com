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
			&nbsp;&nbsp;&nbsp;일반 모집분야는 특정 특기에 가산점이 반영되는 자격증이 있습니다. 목록은 아래와 같습니다.
		</p>
		<p>
			&nbsp;&nbsp;&nbsp;항공교통관제사, 운항관리사, 항공교통안전관리자, 정보처리, 기계가공조립, 무선설비, 자동차정비, 전기, 전자계산기, <br>
			&nbsp;&nbsp;&nbsp;정보기기운용, 전자기기, 기상감정사, 기상예보사, 기상감정기사, 기상기사, 컴퓨터활용능력, 디지털영상편집, 정보처리, <br>
			&nbsp;&nbsp;&nbsp;정보기기운용, ITQ OA마스터, 워드프로세서, 문서실무사, 장례지도사, 회계관리, 비서, 사무자동화, 사회복지사, <br>
			&nbsp;&nbsp;&nbsp;상담심리사, 행정사, MOS마스터, <br>
		</p>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="항공교통관제사">항공교통관제사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="운항관리사">운항관리사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="항공교통안전관리자">항공교통안전관리자&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="정보처리">정보처리&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기계가공조립">기계가공조립&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="무선설비">무선설비&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="자동차정비">자동차정비&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="전기">전기&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="전자계산기">전자계산기&nbsp;&nbsp;</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="정보기기운용">정보기기운용&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="전자기기">전자기기&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기상감정사">기상감정사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기상예보사">기상예보사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기상감정기사">기상감정기사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="기상기사">기상기사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="컴퓨터활용능력">컴퓨터활용능력&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="디지털영상편집">디지털영상편집&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="ITQ OA마스터">ITQ OA마스터&nbsp;&nbsp;</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="워드프로세서">워드프로세서&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="문서실무사">문서실무사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="장례지도사">장례지도사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="회계관리">회계관리&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="비서">비서&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="사무자동화">사무자동화&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="사회복지사">사회복지사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="상담심리사">상담심리사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="행정사">행정사&nbsp;&nbsp;</label>
		<br>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="MOS마스터">MOS마스터&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="법무사">법무사&nbsp;&nbsp;</label>
		&nbsp;&nbsp;&nbsp;<label><input type="checkbox" name="certificate" value="공인노무사">공인노무사&nbsp;&nbsp;</label>
		<br>
		
		<button class="finish_adding_button" id="finish_adding_button" onclick="$('#Q1').load('Q4');score2();">다음</button>

	</div>
	<script>
	function score2(){
		var i=0;
		localStorage.setItem("기상관측", 0);
		localStorage.setItem("단거리유도무기운용", 0);
		localStorage.setItem("인사교육", 0);
		localStorage.setItem("운항관제", 0);
		localStorage.setItem("장비물자보급", 0);
		var arr1 = ['기상감정사','기상예보사','기상감정기사','기상기사'];
		var arr2 = ['기계가공조립','무선설비','자동차정비','전기','전자계산기','정보기기운용','전자기기'];
		var arr3 = ['컴퓨터활용능력','디지털영상편집','정보처리','정보기기운용','ITQ OA마스터','워드프로세서','문서실무사','장례지도사','회계관리','비서','사무자동화','사회복지사','상담심리사','행정사','MOS마스터','법무사','공인노무사'];
		var arr4 = ['항공교통관제사','운항관리사','항공교통안전관리자','정보처리'];
		var score1 = 0;
		var score2 = 0;
		var score3 = 0;
		var score4 = 0;
		
		$('input:checkbox[name="certificate"]:checked').each(function (){
			if(arr1.includes($('input:checkbox[name="certificate"]:checked')[i].value))
				score1++;
			if(arr2.includes($('input:checkbox[name="certificate"]:checked')[i].value))
				score2++;
			if(arr3.includes($('input:checkbox[name="certificate"]:checked')[i].value))
				score3++;
			if(arr4.includes($('input:checkbox[name="certificate"]:checked')[i].value))
				score4++;
			i++;
		});
		
		localStorage.setItem("기상관측", score1);
		localStorage.setItem("단거리유도무기운용", score2);
		localStorage.setItem("인사교육", score3);
		localStorage.setItem("운항관제",score4);
	}
	</script>
</body>
</html>