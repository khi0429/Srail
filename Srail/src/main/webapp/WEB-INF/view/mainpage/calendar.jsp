<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String myctx = request.getContextPath(); //=> "/Srail"
%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript">
	var arrMonths = [ 'January', 'February', 'March', 'April', 'May', 'June',
			'July', 'August', 'September', 'October', 'November', 'December' ];
	var arrWeeks = [ "일", "월", "화", "수", "목", "금", "토" ];
	var totalDays = [ "31", "0", "31", "30", "31", "30", "31", "31", "30",
			"31", "30", "31" ];
	var d = new Date(), year = d.getFullYear(), month = d.getMonth(), 
	year2 = d.getFullYear(), month2 = d.getMonth(),
	//day=d.getDate(),
	week = d.getDay();
	var check = 0;
	var calendar=function(){
		makeCalendar();
		makeCalendar2();
	}
	var makeCalendar = function() {

		$('.year').html(year);
		$('.month').html(arrMonths[month]);

		if ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
			totalDays[1] = 29;
		else
			totalDays[1] = 28;

		var firstDate = new Date(year, month, 1);
		var firstWeek = firstDate.getDay();
		var lastDay = totalDays[month];

		var firstcol = 0;
		var str = "";

		var count = 1;
		var day = 1;

		var userid = '${loginUser.userid}';
		var M = month + 1;
		if (month <= 8) {
			M = "0" + M;
			alert(M);
		}

		var ju = 0;
		if ((Number(firstWeek) + Number(lastDay)) / 7 == 5) {
			ju = 5;
		} else {
			ju = parseInt((Number(firstWeek) + Number(lastDay)) / 7 + 1);
		}

		for (var i = 0; i < ju; i++) {
			str += "<div class='day'><tr>";
			if (firstWeek > 0 & firstcol != firstWeek) {
				for (var k = 0; k < firstWeek; k++) {
					str += "<td></td>";
					count++;
					firstcol++;
				}
			}

			for (var k = count; k <= 7; k++) {

				if (lastDay < day) {
					str += "<td></td>";
				} else {
					var dd = year + M + day;
					if (day < 10) {
						dd = year + M + "0" + day;
					}

					str += "<td><a href='#' class='aa' title='" + dd
							+ "' onclick='save2(this)'>" + day + "</a>";
					str += "<div   id="+dd+" style='font-size:0.5em; color: blue;'></div>"
					str += "</td>";

				}
				day++;

			}

			count = 1;
			str += "</tr>";

		}
	
		$('#start').html(str);
		
	}
	
	var makeCalendar2 = function() {

		$('.year2').html(year2);
		$('.month2').html(arrMonths[month2+1]);

		if ((year2 % 4 == 0) && (year2 % 100 != 0) || (year2 % 400 == 0))
			totalDays[1] = 29;
		else
			totalDays[1] = 28;

		var firstDate = new Date(year2, month2, 1);
		var firstWeek = firstDate.getDay();
		var lastDay = totalDays[month2];

		var firstcol = 0;
		var str = "";

		var count = 1;
		var day = 1;

		var userid = '${loginUser.userid}';
		var M = month2 + 1;
		if (month2 <= 8) {
			M = "0" + M;
			alert(M);
		}

		var ju = 0;
		if ((Number(firstWeek) + Number(lastDay)) / 7 == 5) {
			ju = 5;
		} else {
			ju = parseInt((Number(firstWeek) + Number(lastDay)) / 7 + 1);
		}

		for (var i = 0; i < ju; i++) {
			str += "<div class='day'><tr>";
			if (firstWeek > 0 & firstcol != firstWeek) {
				for (var k = 0; k < firstWeek; k++) {
					str += "<td></td>";
					count++;
					firstcol++;
				}
			}

			for (var k = count; k <= 7; k++) {

				if (lastDay < day) {
					str += "<td></td>";
				} else {
					var dd = year2 + M + day;
					if (day < 10) {
						dd = year2 + M + "0" + day;
					}

					str += "<td><a href='#' class='aa' title='" + dd
							+ "' onclick='depPlandTime(this)'>" + day + "</a>";
					str += "<div   id="+dd+" style='font-size:0.5em; color: blue;'></div>"
					str += "</td>";

				}
				day++;

			}

			count = 1;
			str += "</tr>";

		}

		$('#end').html(str);

	}
	
	var depPlandTime=function(obj){
		var depPlandTime=$(obj).attr("title");
		alert(depPlandTime);
	}
	

	var nextY = function() {
		year = year + 1;
		makeCalendar();
	}

	var PrevY = function() {
		year = year - 1;
		alert("PrevY" + arrMonths[month] + year);
		makeCalendar();
	}

	var PrevM = function() {
		month = month - 1;
		if (month < 0) {
			month = 11;
			year = year - 1;
		}
		makeCalendar();
	}
	var nextM = function() {
		month = month + 1;
		if (month > 11) {
			month = 0;
			year = year + 1;
		}
		makeCalendar();
	}
	
	
	var nextY2 = function() {
		year2 = year2 + 1;
		makeCalendar2();
	}

	var PrevY2 = function() {
		year2 = year2 - 1;
		alert("PrevY" + arrMonths[month] + year2);
		makeCalendar2();
	}

	var PrevM2 = function() {
		month2 = month2 - 1;
		if (month2 < 0) {
			month2 = 11;
			year2 = year2 - 1;
		}
		makeCalendar2();
	}

	var nextM2 = function() {
		month2 = month2 + 1;
		if (month2 > 11) {
			month2 = 0;
			year2 = year2 + 1;
		}
		makeCalendar2();
	}
</script>
</head>

<body onload="calendar()">

	<button id="callcal" name="callcal" data-toggle="modal" href="#calModal">달력</button>
	<div class="section">
		<div class="container">
			
				<div id="calModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<!-- .modal-dialog  -->
						<form name="sf" action="calendarSave.do" class="form-horizontal"
								method="get" role="form">
						<div class="modal-content">
							<!-- .modal-content-->
							
								<div class="col-md-6">
									<ul class="pager">
										<li><a href="#" onclick="PrevY()">←</a></li>
										<li><span class="year"><input type="hidden"
												id="year"></span></li>
										<li><a href="#" onclick="nextY()">→</a></li><br>
										<li><a href="#" onclick="PrevM()">←</a></li>
										<li><span class="month"><input type="hidden"
												id="month"></span></li>
										<li><a href="#" onclick="nextM()">→</a></li>
									</ul>
									<table class="table table-bordered" id="calTable">
										<thead>
											<tr>
												<th class="danger">일</th>
												<th>월</th>
												<th>화</th>
												<th>수</th>
												<th>목</th>
												<th>금</th>
												<th class="info">토</th>
											</tr>
										</thead>
										<tbody id="start">

										</tbody>
									</table>
								</div>
									<div class="col-md-6">
									<ul class="pager">
										<li><a href="#" onclick="PrevY2()">←</a></li>
										<li><span class="year2"><input type="hidden"
												id="year2"></span></li>
										<li><a href="#" onclick="nextY2()">→</a></li><br>
										<li><a href="#" onclick="PrevM2()">←</a></li>
										<li><span class="month2"><input type="hidden"
												id="month2"></span></li>
										<li><a href="#" onclick="nextM2()">→</a></li>
									</ul>
									<table class="table table-bordered" id="calTable">
										<thead>
											<tr>
												<th class="danger">일</th>
												<th>월</th>
												<th>화</th>
												<th>수</th>
												<th>목</th>
												<th>금</th>
												<th class="info">토</th>
											</tr>
										</thead>
										<tbody id="end">

										</tbody>
									</table>
								</div>
							</form>
						</div>
					
				</div>
			</div>
		</div>
	</div>



</body>
</html>
