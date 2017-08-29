<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:import url="/top.do"/>
<form role="form" name="mf" id="mf" action="joinEnd.do" method="post">
    
    	<!-- hidden data. 아이디가 중복되지 않을 경우 true,중복될 경우false를 갖는다. -->
    	<input type="hidden" name="useId" id="useId" value="false">
    	<!-- -------------------------------------------------------------------- -->
    	
    	<table class="table">
    		<tr>
    			<th>이름</th>
    			<td>
    			<div class="col-md-6">
    				<input type="text" name="name" id="name"
    				 placeholder="이름을 입력하세요"
    				 required="required"
    				  class="form-control">
    			 </div>	 
    			</td>
    		</tr>
    		<tr>
    			<th>아이디</th>
    			<td>
    			<div class="col-md-6">
    				<input type="text" name="userid" id="userid"
    				 placeholder="아이디 중복체크를 하세요" 
    				 required="required"
    				  class="form-control" onkeyup="idCheck()">
    				 <div id="idResult" class="text-danger" style="font-weight:bold">    				 
    				 </div> 
    			 </div>	
    			 <div class="col-md-2">
    			 	<button type="button" onclick="idCheck()" 
    			 	class="btn btn-success">아이디 중복체크</button>
    			 </div> 
    			</td>
    		</tr>
    		<tr>
    			<th>비밀번호</th>
    			<td>
    			<div class="col-md-6">
    				<input type="password" name="pwd" id="pwd"
    				 placeholder="비밀번호를 입력하세요"
    				 required="required"
    				  class="form-control">
    			 </div>	 
    			</td>
    		</tr>
    		<tr>
    			<th>비밀번호 확인</th>
    			<td>
    			<div class="col-md-6">
    				<input type="password" name="pwd2" id="pwd2"
    				 placeholder="비밀번호를 입력하세요"
    				 required="required"
    				  class="form-control">
    			 </div>	 
    			</td>
    		</tr>
    		<tr>
    			<th>연락처</th>
    			<td>
    			
    			<div class="col-md-2">
    				<input type="text" name="hp1" id="hp1"
    				 placeholder="HP1"
    				 required="required" maxlength="3"
    				  class="form-control">
    			 </div>	 
    			 
    			 <div class="col-md-2">
    				<input type="text" name="hp2" id="hp2"
    				 placeholder="HP2"  maxlength="4"
    				 required="required"
    				  class="form-control">
    			 </div>	
    			 <div class="col-md-2">
    				<input type="text" name="hp3" id="hp3"
    				 placeholder="HP3" maxlength="4"
    				 required="required"
    				  class="form-control">
    			 </div>	
    			</td>
    		</tr>
    		<tr>
    			<th>우편번호</th>
    			<td>
    			<div class="col-md-3">
    				<input type="text" name="post" id="post"
    				 placeholder="우편번호" maxlength="5"
    				 required="required"
    				  class="form-control">
    			 </div>	
    			 <div class="col-md-2">
    			 	<button type="button" onclick="" 
    			 	class="btn btn-success">우편번호 찾기</button>
    			 </div> 
    			</td>
    		</tr>
    		<tr>
    			<th rowspan="2">주소</th>
    			<td>
    			<div class="col-md-6">
    				<input type="text" name="addr1" id="addr1"
    				 placeholder="주소 1"
    				 required="required"
    				  class="form-control">
    			 </div>	 
    			</td>
    		</tr>
    		<tr>
    			<td>
    			<div class="col-md-6">
    				<input type="text" name="addr2" id="addr2"
    				 placeholder="주소 2"
    				 required="required"
    				  class="form-control">
    			 </div>	 
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2">
    				<div class="col-md-6 col-md-offset-2">
    				<button type="button" onclick="check()" class="btn btn-primary">회원가입</button>
    				<button type="reset" class="btn btn-danger">다시쓰기</button>
    				</div>
    			</td>
    		</tr>
    	</table>
    </form>
<c:import url="/foot.do"/>       