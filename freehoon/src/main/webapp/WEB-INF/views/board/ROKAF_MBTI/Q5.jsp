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
		<h4>&nbsp;기타 선호도 조사</h4>
		<p>
			&nbsp;&nbsp;&nbsp;공군의 모든 특기는 일하는 시간대에 따라 일과제와 크루제로 나눌 수 있습니다.<br>
			&nbsp;&nbsp;&nbsp;일과제는 정해진 시간에 출근하고 정해진 시간에 퇴근하는 근무제입니다.<br>
			&nbsp;&nbsp;&nbsp;반면, 크루제는 몇 개의 조를 만들어서 근무를 돌아가면서 24시간을 채우는 근무제입니다. 예를 들어 조가 4개만 하루 근무시간은 6시간이겠지요?<br>
			&nbsp;&nbsp;&nbsp;여러분은 일과제를 선호하시나요? 크루제를 선호하시나요?<br>
		</p>
		<p>
			&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class1' value='일과제' />일과제</label>
			&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class1' value='크루제' />크루제</label>
			&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class1' value='상관 없음' />상관 없음</label><br>
		</p>
		
		<p>
			&nbsp;&nbsp;&nbsp;공군의 일부 특기는 조출만퇴를 종종 하게 됩니다.<br>
			&nbsp;&nbsp;&nbsp;여기서 조출만퇴란 아침에 출근해 늦게 퇴근한다는 뜻으로 대부분의 병사들이 선호하지 않습니다.<br>
			&nbsp;&nbsp;&nbsp;하지만 조출만퇴를 할 경우, 가점을 받아 휴가를 받을 수 있다는 장점이 있습니다.<br>
			&nbsp;&nbsp;&nbsp;여러분은 가점을 받을 수 있는 특기를 선호하시나요? 퇴근 후 휴식을 취할 수 있는 특기를 선호하시나요?<br>
		</p>
		<p>
			&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class2' value='가점' />가점이 있는 조출만퇴 O</label><br>
			&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class2' value='휴식' />휴식이 있는 조출만퇴 X</label><br>
			&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class2' value='상관 없음' />상관 없음</label><br>
		</p>
		
		<p>
			&nbsp;&nbsp;&nbsp;마지막으로, 대부분의 병사는 비행단 혹은 사이트로 가게 됩니다.<br>
			&nbsp;&nbsp;&nbsp;비행단은 업무 강도가 다소 센 대신 여러가지 편의시설이 들어와 있습니다(민간 프랜차이즈 포함)<br>
			&nbsp;&nbsp;&nbsp;반면, BX와 사지방 등을 제외한 편의시설이 드문 대신 업무가 상대적으로 편한 편입니다.<br>
			&nbsp;&nbsp;&nbsp;여러분은 편의시설이 있는 비행단을 선호하시나요? 몸이 편한 사이트를 선호하시나요?<br>
		</p>
		<p>
			&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class3' value='비행단' />비행단</label>
			&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class3' value='사이트' />사이트</label>
			&nbsp;&nbsp;&nbsp;<label><input type='radio' name='class3' value='상관 없음' />상관 없음</label><br>
		</p>
		
		<button class="finish_adding_button" id="finish_adding_button" onclick="scoreExtra();select();">다음</button>

	</div>
	<script>
		function scoreExtra() {
			if($("input[name='class1']:checked").val() == '일과제') {
				if(localStorage.getItem("class") == "기계") {
					var val = Number(localStorage.getItem("항공기제작정비"))+1;
					localStorage.setItem("항공기제작정비", val);
					var val = Number(localStorage.getItem("비파괴검사"))+1;
					localStorage.setItem("비파괴검사", val);
				}
				if(localStorage.getItem("class") == "일반") {
					var val = Number(localStorage.getItem("항공의무"))+1;
					localStorage.setItem("항공의무", val);
					var val = Number(localStorage.getItem("장비물자보급"))+1;
					localStorage.setItem("장비물자보급", val);
					var val = Number(localStorage.getItem("인사교육"))+1;
					localStorage.setItem("인사교육", val);
				}
				if(localStorage.getItem("class") == "차량운전") {
					var val = Number(localStorage.getItem("일반차량운전"))+1;
					localStorage.setItem("일반차량운전", val);
				}
				if(localStorage.getItem("class") == "통신전자전기") {
					var val = Number(localStorage.getItem("방공유도무기정비"))+1;
					localStorage.setItem("방공유도무기정비", val);
					var val = Number(localStorage.getItem("항공전자장비정비"))+1;
					localStorage.setItem("항공전자장비정비", val);
				}
			}
			if($("input[name='class1']:checked").val() == '크루제') {
				if(localStorage.getItem("class") == "일반") {
					var val = Number(localStorage.getItem("기상관측"))+1;
					localStorage.setItem("기상관측", val);
					var val = Number(localStorage.getItem("운항관제"))+1;
					localStorage.setItem("운항관제", val);
					var val = Number(localStorage.getItem("항공통제"))+1;
					localStorage.setItem("항공통제", val);
				}
				if(localStorage.getItem("class") == "통신전자전기") {
					var val = Number(localStorage.getItem("지상레이더체계정비"))+1;
					localStorage.setItem("지상레이더체계정비", val);                       //굳이 특기별로 나눠야 되나?
				}
			}
			if($("input[name='class2']:checked").val() == '가점') {
				var val = Number(localStorage.getItem("항공기초과저지"))+1;
				localStorage.setItem("항공기초과저지", val);
				var val = Number(localStorage.getItem("운항관제"))+1;
				localStorage.setItem("운항관제", val);
			}
			
			if($("input[name='class2']:checked").val() == '가점') {
				var val = Number(localStorage.getItem("항공기초과저지"))+1;
				localStorage.setItem("항공기초과저지", val);
				var val = Number(localStorage.getItem("운항관제"))+1;
				localStorage.setItem("운항관제", val);
			}
			
			if($("input[name='class2']:checked").val() == '휴식') {
				var val = Number(localStorage.getItem("인사교육"))+1;
				localStorage.setItem("인사교육", val);
			}
		}
		function select() {
			if(localStorage.getItem("class") == "기계") {
				if(localStorage.getItem("항공기초과저지") >= 2)
					$('#Q1').load('Q6 #항공기초과저지');
				else if(localStorage.getItem("항공기제작정비") >= 2)
					$('#Q1').load('Q6 #항공기제작정비');
				else if(localStorage.getItem("항공기지상장비정비") >= 2)
					$('#Q1').load('Q6 #항공기지상장비정비');
				else
					$('#Q1').load('Q6 #기타기계특기');
			}
			
			if(localStorage.getItem("class") == "일반") {
				if(localStorage.getItem("기상관측") >= 1.1)
					$('#Q1').load('Q6 #기상관측');
				else if(localStorage.getItem("단거리유도무기운용") >= 1.1)
					$('#Q1').load('Q6 #단거리유도무기운용');
				else if(localStorage.getItem("장비물자보급") >= 0.1)
					$('#Q1').load('Q6 #장비물자보급');
				else if(localStorage.getItem("운항관제") >= 1.1)
					$('#Q1').load('Q6 #운항관제');
				else if(localStorage.getItem("인사교육") >= 3.1)
					$('#Q1').load('Q6 #인사교육');
				else if(localStorage.getItem("항공통제") >= 0.1)
					$('#Q1').load('Q6 #항공통제');
				else
					$('#Q1').load('Q6 #기타일반특기');
			}

			if(localStorage.getItem("class") == "일반(헌급방 지정)") {
				if(localStorage.getItem("단거리유도무기운용") >= 1.1)
					$('#Q1').load('Q6 #단거리유도무기운용');
				else
					$('#Q1').load('Q6 #기타헌급방특기');
			}
			
			if(localStorage.getItem("class") == "통신전자전기") {
				if(localStorage.getItem("지상레이더체계정비") >= 2.1)
					$('#Q1').load('Q6 #지상레이더체계정비');
				else if(localStorage.getItem("방공유도무기정비") >= 1.1)
					$('#Q1').load('Q6 #방공유도무기정비');
				else if(localStorage.getItem("무선통신체계정비") >= 2.1)
					$('#Q1').load('Q6 #무선통신체계정비');
				else if(localStorage.getItem("항공전자장비정비") >= 1.1)
					$('#Q1').load('Q6 #항공전자장비정비');
				else
					$('#Q1').load('Q6 #기타통신전자전기특기');
			}
		}
		
		function show() {
			if(localStorage.getItem("class") == "기계")
				alert(	"항공기초과저지 : " + localStorage.getItem("항공기초과저지")+"\n"
						+ "항공기지상장비정비 : " + localStorage.getItem("항공기지상장비정비")+"\n"
						+ "항공기제작정비 : " + localStorage.getItem("항공기제작정비")+"\n"
						+ "비파괴검사 : " + localStorage.getItem("비파괴검사"));
			if(localStorage.getItem("class") == "일반")
				alert(	"기상관측 : " + localStorage.getItem("기상관측")+"\n"
						+ "단거리유도무기운용 : " + localStorage.getItem("단거리유도무기운용")+"\n"
						+ "장비물자보급 : " + localStorage.getItem("장비물자보급")+"\n"
						+ "인사교육 : " + localStorage.getItem("인사교육")+"\n"
						+ "운항관제 : " + localStorage.getItem("운항관제")+"\n"
						+ "항공통제 : " + localStorage.getItem("항공통제"));
			if(localStorage.getItem("class") == "일반(헌급방 지정)")
				alert(	"단거리유도무기운용 : " + localStorage.getItem("단거리유도무기운용"));
			if(localStorage.getItem("class") == "차량운전")
				alert(	"일반차량운전 : " + localStorage.getItem("일반차량운전"));
			if(localStorage.getItem("class") == "통신전자전기")
				alert(	"지상레이더체계정비 : " + localStorage.getItem("지상레이더체계정비")+"\n"
						+ "방공유도무기정비 : " + localStorage.getItem("방공유도무기정비")+"\n"
						+ "무선통신체계정비 : " + localStorage.getItem("무선통신체계정비")+"\n"
						+ "항공전자장비정비 : " + localStorage.getItem("항공전자장비정비"));
		}
	</script>
</body>
</html>