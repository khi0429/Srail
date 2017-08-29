<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	String myctx=request.getContextPath(); 
%>     
<html>
<head>
<meta charset="UTF-8">
<title><%=myctx%></title>

<link rel="stylesheet" type="text/css" href="<%=myctx%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=myctx%>/css/maincss.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

</style>
</head>
<body>
<div id="gnbTop">
	<div class="container">
		<ul class="topBar fix">
			<li><a href="#">HOME</a></li>
			<li class="bar"> ㅣ </li>
			<li><a href="#">예약내역</a></li>
			<li class="bar"> ㅣ </li>
			<li><a href="#">마이페이지</a></li>
			<li class="bar"> ㅣ </li>
			<li><a href="#">로그인</a></li>
			<li class="bar"> ㅣ </li>
			<li><a href="#">회원가입</a></li>
		</ul>
	</div>
</div>
<div id="topWrap">
<div class="container">
	<nav class="navbar-inverse" role="navigation">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#"><img src="images/SRailLogo.png"></a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="navbar-collapse collapse" id="navbar-collapse-1">
	     <ul class="nav navbar-nav nav-left">
		<li><a href="#">승차권<span class="sr-only">(current)</span></a></li>
		<li><a href="#">기차역정보</a></li>
		<li><a href="#">게시판</a></li>
		<li><a href="#">문의하기</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
</div>
</div>