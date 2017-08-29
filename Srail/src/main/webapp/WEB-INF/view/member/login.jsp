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
	<h2 class="col-md-6 col-md-offset-3">로그인</h2>
		<form method="post" action="" name="">
			<div class="idBox col-md-6 col-md-offset-3">
				<input type="text" id="userid" name="userid" placeholder="아이디" autocomplete="off">
			</div>
			<div style="border-bottom:1px solid #dadada"class="pwdBox col-md-6 col-md-offset-3">
				<input type="password" id="pwd" name="pwd" placeholder="비밀번호" autocomplete="off">
			</div>
			<div id="joinBox" class="col-md-6 col-md-offset-3">
				<button class="btn btn-warning"> √ 로그인</button>
			</div>
		</form>
	</div>	
</div>
<c:import url="/foot.do"/>       