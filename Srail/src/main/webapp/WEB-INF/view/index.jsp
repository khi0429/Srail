<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String myctx=request.getContextPath(); 
%>    
<c:import url="/top.do"/>
<div id="mainWrap">
	<img src="<%=myctx%>/images/banner000.png" width="100%">
	<div id="banner" style="background:#ff9;" class="container">
		<div id="searchTicket" class="col-md-3">  
			<h3>승차권 간편예매</h3>
		    <form method="post" action="searchTrain.do">
		        <ul>
		            <li class="inputs">
		                <lavel for="depart">출발역</lavel>
		                <span class="usericonbox"></span>
		                <input type="text" name="depart" id="depart">
		            </li> 
		            <li class="inputs botbar">
		                <lavel for="arrival">도착역</lavel>
		                <span class="usericonbox"></span>
		                <input type="text" name="arrival" id="arrival">
		            </li>
		        </ul>
		        <ul>
		            <li class="inputs">    
		                <lavel for="date">출발일</lavel>
		                <span class="caliconbox"></span>
		                <input type="text" name="date" id="date">
		            </li>
		            <li class="selectBox">
		                <lavel for="time">시<span>간</span></lavel>
		                <select id="time">
		                    <option>0 (오전 00시)</option>
		                    <option>1 (오전 01시)</option>
		                </select>시
		            </li>
		            <li class="selectBox">
		                <lavel for="people">인<span>원</span></lavel>
		                <select id="people">
		                    <option>성인 1명</option>
		                    <option>성인 2명</option>
		                </select>
		            </li>
		        </ul>
		        <button type="button">승차권 예매</button>
		    </form>
		</div>
	</div>
</div>
<c:import url="/foot.do"/>