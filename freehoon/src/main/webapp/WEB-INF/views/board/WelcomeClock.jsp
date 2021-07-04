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

	var row = 21;
	var col = 6;
	var start = 807;
	var startDate = [
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

	document.write('<table border="1" style="margin-left: auto; margin-right: auto;" style="text-align: center;"/>');
	document.write('<th>기수</th>');
	document.write('<th>입대일</th>');
	document.write('<th>전역일</th>');
	document.write('<th>퍼센트</th>');
	document.write('<th>24시간</th>');
	for (let i = 0; i < row; i++) {
	  document.write('<tr>');
	  for (let j = 0; j < col; j++)  {
	    document.write('<td>');
	    if(j == 0)
	    	document.write((start+i) + '기');
	    if(j == 1)
	    	document.write(startDate[i].getFullYear() + "년 " + (startDate[i].getMonth()+1) + "월 " + startDate[i].getDate() + "일");
	    if(j == 2)
	    	document.write(endDate[i].getFullYear() + "년 " + (endDate[i].getMonth()+1) + "월 " + endDate[i].getDate() + "일");
	    if(j == 3){
	    	var dif1 = Math.abs(endDate[i]-startDate[i]);
	    	days1 = dif1/(1000 * 3600 * 24);
	    	var dif2 = Math.abs(new Date()-startDate[i]);
	    	days2 = dif2/(1000 * 3600 * 24);
	    	document.write((days2*100/days1).toFixed(2) + "%");
	    }
	    if(j == 4){
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
	    if(j == 5){
	    	var dif1 = Math.abs(endDate[i]-startDate[i]);
	    	days1 = dif1/(1000 * 3600 * 24);
	    	var dif2 = Math.abs(new Date()-startDate[i]);
	    	days2 = dif2/(1000 * 3600 * 24);
	    	var ratio = days2/days1;
	    	var cnt = Math.floor(365 * ratio);
	    	for(var k=0;k<12;k++){
	    		if(cnt - endOfMonth[k] < 0){
	    			
	    		}
	    	}
	    }
	    document.write('</td>');
	  }
	  document.write('</tr>')
	}
	document.write('</table>');
</script>
</body>
</html>