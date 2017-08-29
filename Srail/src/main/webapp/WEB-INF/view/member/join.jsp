<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String myctx=request.getContextPath(); 
%>    
<link rel="stylesheet" type="text/css" href="<%=myctx%>/css/join.css">
<c:import url="/top.do"/>
<div id="joinWrap">
	<div class="container signup">
	<h2 class="col-md-6 col-md-offset-3">회원가입</h2>
		<form method="post" action="" name="">
			<div class="idBox col-md-6 col-xd-6 col-xd-offse-3 col-md-offset-3">
				<input type="text" id="userid" name="userid" placeholder="아이디" autocomplete="off">
				<button type="button" id="idcheckBtn" class="btn btn-warning">중복확인</button>
			</div>
			<div class="pwdBox col-md-6 col-md-offset-3">
				<input type="password" id="pwd" name="pwd" placeholder="비밀번호" autocomplete="off">
			</div>
			<div class="cPwdBox col-md-6 col-md-offset-3">
				<input type="password" id="cPwd" name="cPwd" placeholder="비밀번호 확인" autocomplete="off">
			</div>
			
			<div class="nameBox col-md-6 col-md-offset-3">
				<input type="text" id="username" name="username" placeholder="이름" autocomplete="off">
			</div>
			<div class="birthBox col-md-6 col-md-offset-3">
				<label>생일</label>
				<input type="text" id="year" name="year" placeholder="년 ex) 1988" autocomplete="off">
				<span>ㅣ</span>
				<input type="text" id="month" name="month" placeholder="월 ex) 01" autocomplete="off">
				<span>ㅣ</span>
				<input type="text" id="day" name="day" placeholder="일 ex) 26" autocomplete="off">
			</div>
			<div class="emailBox col-md-6 col-md-offset-3">
				<input type="text" id="email" name="email" placeholder="이메일 ex) example@naver.com" autocomplete="off">
			</div>
			<div class="phoneBox col-md-6 col-md-offset-3">
				<input type="text" id="phone" name="phone" placeholder="핸드폰번호 ex) 01012345678 ">
			</div>
			<div id="joinBox" class="col-md-6 col-md-offset-3">
				<button class="btn btn-warning"> √ 가입하기</button>
			</div>
		</form>
	</div>	
</div>
<c:import url="/foot.do"/>       