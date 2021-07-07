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
<style>
#test {
	width: 900px;
	margin: 0 auto;
}

table, td, th {
	border: 1px solid black;
	border-collapse: collapse;
	padding : 10px;
}

</style>
<body>
	<br>
	<div id="test">

	</div>

	<script type="text/javascript">

	var row = 22;
	var col = 8;
	var start = 806;
	var startDate = [
		new Date("2019-10-21"),
		new Date("2019-11-18"), 
		new Date("2019-12-16"), 
		new Date("2020-01-13"), 
		new Date("2020-02-10"), 
		new Date("2020-03-09"), 
		new Date("2020-04-06"), 
		new Date("2020-05-04"), 
		new Date("2020-06-01"), 
		new Date("2020-06-29"), 
		new Date("2020-07-27"), 
		new Date("2020-08-24"), 
		new Date("2020-09-21"), 
		new Date("2020-10-12"), 
		new Date("2020-11-09"), 
		new Date("2020-12-07"), 
		new Date("2021-01-04"), 
		new Date("2021-02-15"), 
		new Date("2021-03-15"), 
		new Date("2021-04-12"), 
		new Date("2021-05-10"), 
		new Date("2021-06-14"), 
		new Date("2021-07-12")];
	
	var endDate = [
		new Date("2021-08-01"),
		new Date("2021-08-27"),
		new Date("2021-09-22"),
		new Date("2021-10-18"),
		new Date("2021-11-13"),
		new Date("2021-12-08"),
		new Date("2022-01-05"),
		new Date("2022-02-03"),
		new Date("2022-02-28"),
		new Date("2022-03-28"),
		new Date("2022-04-26"),
		new Date("2022-05-23"),
		new Date("2022-06-20"),
		new Date("2022-07-11"),
		new Date("2022-08-08"),
		new Date("2022-09-06"),
		new Date("2022-10-03"),
		new Date("2022-11-14"),
		new Date("2022-12-14"),
		new Date("2023-01-11"),
		new Date("2023-02-09"),
		new Date("2023-03-13"),
		new Date("2023-04-11")];
	
	var endOfMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
	
	var choice1 = [
		"운항관제", 
		"기상관측", 
		"항공전자장비정비", 
		"화생방", 
		"항공탄약정비", 
		"대공포운용", 
		"방공포차량운전", 
		"군사경찰", 
		"일반차량운전", 
		"인사교육", 
		"항공기기체정비", 
		"무선통신체계정비", 
		"장비물자보급", 
		"특수차량운전", 
		"조리", 
		"전력설비", 
		"군악", 
		"환경", 
		"항공의무", 
		"토목건축", 
		"의장", 
		"항공기무기정비", 
		"소방"];
	

	document.write('<table border="1" style="margin-left: auto; margin-right: auto;" style="text-align: center;"/>');
	document.write('<th>계급</th>');
	document.write('<th>기수</th>');
	document.write('<th>입대일</th>');
	document.write('<th>전역일</th>');
	document.write('<th>퍼센트</th>');
	document.write('<th>24시간</th>');
	document.write('<th>365일</th>');
	document.write('<th>오늘의 무작위 특기!</th>');
	for (let i = 0; i < row; i++) {
	  document.write('<tr>');
	  for (let j = 0; j < col; j++)  {
	    document.write('<td>');
	    if(j == 0){
	    	var nowDate = new Date();
	    	var dif = Math.ceil(Math.abs(nowDate-startDate[i])/(1000 * 3600 * 24))+1;
	    	var k = 0;
	    	var two=0, twoEnd=0, oneStart=0, one=0, oneMid=0, oneEnd=0, upStart=0, up=0, upMid=0, upEnd=0, serStart=0, ser=0, serMid=0, serEnd=0, end=0;
	    	for(k=0;k<21;k++)
	    		end = end + endOfMonth[(i+k)%12];
	    	for(k=0;k<20;k++)
	    		serEnd = serEnd + endOfMonth[(i+k)%12];
	    	for(k=0;k<17;k++)
	    		serMid = serMid + endOfMonth[(i+k)%12];
	    	for(k=0;k<15;k++)
	    		ser = ser + endOfMonth[(i+k)%12];
	    	for(k=0;k<14;k++)
	    		serStart = serStart + endOfMonth[(i+k)%12];
	    	for(k=0;k<13;k++)
	    		upEnd = upEnd + endOfMonth[(i+k)%12];
	    	for(k=0;k<11;k++)
	    		upMid = upMid + endOfMonth[(i+k)%12];
	    	for(k=0;k<9;k++)
	    		up = up + endOfMonth[(i+k)%12];
	    	for(k=0;k<8;k++)
	    		upStart = upStart + endOfMonth[(i+k)%12];
	    	for(k=0;k<7;k++)
	    		oneEnd = oneEnd + endOfMonth[(i+k)%12];
	    	for(k=0;k<5;k++)
	    		oneMid = oneMid + endOfMonth[(i+k)%12];
	    	for(k=0;k<3;k++)
	    		one = one + endOfMonth[(i+k)%12];
	    	for(k=0;k<2;k++)
	    		oneStart = oneStart + endOfMonth[(i+k)%12];
	    	
	    	if(dif >= end)
	    		document.write("전역");
	    	else if(dif >= serEnd)
	    		document.write("병말");
	    	else if(dif >= serMid)
	    		document.write("병꺾");
	    	else if(dif >= ser)
	    		document.write("병장");
	    	else if(dif >= serStart)
	    		document.write("병초");
	    	else if(dif >= upEnd)
	    		document.write("상말");
	    	else if(dif >= upMid)
	    		document.write("상꺾");
	    	else if(dif >= up)
	    		document.write("상병");
	    	else if(dif >= upStart)
	    		document.write("상초");
	    	else if(dif >= oneEnd)
	    		document.write("일말");
	    	else if(dif >= oneMid)
	    		document.write("일꺾");
	    	else if(dif >= one)
	    		document.write("일병");
	    	else if(dif >= oneStart)
	    		document.write("일초");
	    	else if(dif >= 35)
	    		document.write("이병");
	    	else if(dif < 35)
	    		document.write("훈련");
	    	else
	    		document.write("에러");
	    	
	    }
	    if(j == 1)
	    	document.write((start+i) + '기');
	    if(j == 2)
	    	document.write(startDate[i].getFullYear() + "년 " + (startDate[i].getMonth()+1) + "월 " + startDate[i].getDate() + "일");
	    if(j == 3)
	    	document.write(endDate[i].getFullYear() + "년 " + (endDate[i].getMonth()+1) + "월 " + endDate[i].getDate() + "일");
	    if(j == 4){
	    	var dif1 = Math.abs(endDate[i]-startDate[i]);
	    	days1 = dif1/(1000 * 3600 * 24);
	    	var dif2 = Math.abs(new Date()-startDate[i]);
	    	days2 = dif2/(1000 * 3600 * 24);
	    	document.write((days2*100/days1).toFixed(2) + "%");
	    }
	    if(j == 5){
	    	var dif1 = Math.abs(endDate[i]-startDate[i]);
	    	days1 = dif1/(1000 * 3600 * 24);
	    	var dif2 = Math.abs(new Date()-startDate[i]);
	    	days2 = dif2/(1000 * 3600 * 24);
	    	var ratio = days2/days1;
	    	var cnt = Math.floor(86400 * ratio);
	    	var hour = Math.floor(cnt / 3600);
	    	var min = Math.floor((cnt-(hour*3600))/60);
	    	document.write(hour + "시 " + min + "분");
	    }
	    if(j == 6){
	    	var dif1 = Math.abs(endDate[i]-startDate[i]);
	    	days1 = dif1/(1000 * 3600 * 24);
	    	var dif2 = Math.abs(new Date()-startDate[i]);
	    	days2 = dif2/(1000 * 3600 * 24);
	    	var ratio = days2/days1;
	    	var cnt = Math.floor(365 * ratio);
	    	let k;
	    	for(k=0;k<12;k++){
	    		if(cnt - endOfMonth[k] < 0)
	    			break;
	    		cnt = cnt - endOfMonth[k];
	    	}
	    	if(cnt == 0){
	    		cnt = endOfMonth[k-1];
	    		k = k-1;
	    	}
	    	document.write((k+1) + "월 " + cnt + "일");
	    }
	    if (j == 7){
	    	//var dif = Math.abs(new Date()-startDate[i]);
	    	//var days = dif/(1000 * 3600 * 24);
	    	
	    	
	    	document.write(choice1[i]);
	    }
	    document.write('</td>');
	  }
	  document.write('</tr>')
	}
	document.write('</table>');
</script>
</body>
</html>