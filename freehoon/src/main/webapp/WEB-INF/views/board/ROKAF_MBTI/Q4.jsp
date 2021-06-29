<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id=Q4>
		<br>
		<h4>&nbsp;전공</h4>
		<p>
			&nbsp;&nbsp;&nbsp;몇몇 전공은 특정 특기에서 가산점을 받습니다. 특기별로 다른 키워드가 전공 이름에 들어갈 경우, 가산점이 부여됩니다.<br>
			&nbsp;&nbsp;&nbsp;항공전자장비정비 특기를 예로 들어보겠습니다. 항전 특기는 컴퓨터, 응용소프트웨어 등의 키워드가 들어간 전공에 가산점을 줍니다.<br>
			&nbsp;&nbsp;&nbsp;이 경우, 컴퓨터공학과나 응용소프트웨어학부는 가산점을 받습니다. 각각 '컴퓨터'와 '응용소프트웨어'라는 키워드가 전공에 들어갔기 때문입니다.<br>
			&nbsp;&nbsp;&nbsp;반면, 소프트웨어공학부는 가산점을 받지 못합니다. 소프트웨어공학부는 항전이 가지고 있는 어떤 키워드도 포함되지 않기 때문입나다. 아래에 본인의 전공을 적어주세요.<br>
		</p>
		<p>
			&nbsp;&nbsp;&nbsp;<input type="text" id="major">
		</p>
		
		<button class="finish_adding_button" id="finish_adding_button" onclick="$('#Q1').load('Q5');score();">다음</button>

	</div>
	<script>
	/*
		1.운관
		2.단유운
		3.기상관측
		4.레이더
		5.무선
		6.항전
		7.지상장비
		8.제작정비
		9.방유정
		10.장물보
		11.초과저지
	*/
		var arr1 = ['항공교통', '항공운항'];
		var arr2 = ['기계','자동차정비','전자','전자전기','정보통신'];
		var arr3 = ['수학','통계','물리','해양','천문기상','지구과학'];
		var arr4 = ['제어계측','컴퓨터전자','전기','전자정보통신','정보통신시스템','전자전기','디지털전기정보','디지털전자','로봇전자','반도체설계','이동통신설비','전기정보','전자회로설계','전파공학','항공우주공학','전자통신'];
		var arr5 = ['전산','컴퓨터','반도체설계','응용전자','이동위성통신','전기','전자','전자전기','전자통신','전파','정보통신','제어계측(전)','제어계측(통)','항공전자정비','항공통신','시스템','전자재료','전자전기제어','정보','통신'];
		var arr6 = ['응용소프트웨어','전산','컴퓨터','제어계측','반도체','전기','전자','정보통신','항공우주','구조시스템','시스템','응용전자','응용제어','전자계산','전자전기','전자전기제어','전자전산','전파','정보','정보기술','제어계측(통)','통신','항공전자','IT','항공공학','항공통신'];
		var arr7 = ['전자','기계','전기','금속','냉동','자동차정비','전자전기','항공공학','항공우주','화공'];
		var arr8 = ['신소재','금속','기계','세라믹','재료','조선해양','항공우주','금속재료','금형설계','기계설계','기계전자','기계제도','동력기계','메카트로닉스','생산기계가공','원자력(기계)','정밀기계','제어기계','조선선박','항공공학','항공기계','항공정비'];
		var arr9 = ['기계','디지털제어','자동차정비','전기','전자','전자재료','전자전기제어','전파','공유압','계측','메카트로닉스'];
		var arr10 = ['경제', '경영', '산업공학', '통계', '무역', '물류']
		var arr11 = ['항공공학','메카트로닉스','재료공학','기전공학','정밀기계','제어기계','기계','기계설계'];
		
		function score() {
			var i=0;
			for(i=0;i<arr1.length;i++){
				if(document.getElementById("major").value.includes(arr1[i])){
					var val = Number(localStorage.getItem("운항관제"))+0.1;
					localStorage.setItem("운항관제", val);
					break;
				}
			}
			
			for(i=0;i<arr2.length;i++){
				if(document.getElementById("major").value.includes(arr2[i])){
					var val = Number(localStorage.getItem("단거리유도무기운용"))+0.1;
					localStorage.setItem("단거리유도무기운용", val);
					break;
				}
			}
			
			for(i=0;i<arr3.length;i++){
				if(document.getElementById("major").value.includes(arr3[i])){
					var val = Number(localStorage.getItem("기상관측"))+0.1;
					localStorage.setItem("기상관측", val);
					break;
				}
			}
			
			for(i=0;i<arr4.length;i++){
				if(document.getElementById("major").value.includes(arr4[i])){
					var val = Number(localStorage.getItem("지상레이더체계정비"))+0.1;
					localStorage.setItem("지상레이더체계정비", val);
					break;
				}
			}
			
			for(i=0;i<arr5.length;i++){
				if(document.getElementById("major").value.includes(arr5[i])){
					var val = Number(localStorage.getItem("무선통신체계정비"))+0.1;
					localStorage.setItem("무선통신체계정비", val);
					break;
				}
			}
			
			for(i=0;i<arr6.length;i++){
				if(document.getElementById("major").value.includes(arr6[i])){
					var val = Number(localStorage.getItem("항공전자장비정비"))+0.1;
					localStorage.setItem("항공전자장비정비", val);
					break;
				}
			}
			
			for(i=0;i<arr7.length;i++){
				if(document.getElementById("major").value.includes(arr7[i])){
					var val = Number(localStorage.getItem("항공기지상장비정비"))+0.1;
					localStorage.setItem("항공기지상장비정비", val);
					break;
				}
			}
			
			for(i=0;i<arr8.length;i++){
				if(document.getElementById("major").value.includes(arr8[i])){
					var val = Number(localStorage.getItem("항공기제작정비"))+0.1;
					localStorage.setItem("항공기제작정비", val);
					break;
				}
			}
			
			for(i=0;i<arr9.length;i++){
				if(document.getElementById("major").value.includes(arr9[i])){
					var val = Number(localStorage.getItem("방공유도무기정비"))+0.1;
					localStorage.setItem("방공유도무기정비", val);
					break;
				}
			}
			
			for(i=0;i<arr10.length;i++){
				if(document.getElementById("major").value.includes(arr10[i])){
					var val = Number(localStorage.getItem("장비물자보급"))+0.1;
					localStorage.setItem("장비물자보급", val);
					break;
				}
			}
			
			for(i=0;i<arr11.length;i++){
				if(document.getElementById("major").value.includes(arr11[i])){
					var val = Number(localStorage.getItem("항공기초과저지"))+0.1;
					localStorage.setItem("항공기초과저지", val);
					break;
				}
			}
		}
	
	</script>
</body>
</html>