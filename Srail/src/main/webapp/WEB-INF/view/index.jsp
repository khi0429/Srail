<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String myctx=request.getContextPath(); 
%>    
<c:import url="/top"/>

<script type="text/javascript">

	function depPlaceChange(depPlace){
		$.ajax({
	         type:'POST',
	         url: 'optionChange?depPlace='+depPlace,
	         success:function(res){
	        	 $('#arr option').show();
	        	 $('#arr'+res).hide();
	         },
	         error:function(e){
	        	alert("error=>"+e.status);
	         }
	      });
	}
	
</script>

<div id="mainWrap">
	<img src="<%=myctx%>/images/banner000.png" width="100%">
	<div id="banner" style="background:#ff9;" class="container">
		<div id="searchTicket" class="col-md-3">  
		 	<h3>승차권 간편예매</h3> 
		    <form name="aaa" method="post" action="trainInfo">
		        <ul>
		            <li class="inputs">
		                <label for="depart">출발역</label>
		                <!-- <span class="usericonbox" onclick=""></span>
		                <input type="text" name="depart" id="depart"> -->
		                <select id="dep" name="dep" onchange="depPlaceChange(this.value)">
							<option>::출발역::</option>
							<c:forEach items="${placeArr}" var="p">
								<option id="dep${p.placename}">${p.placename}</option>
							</c:forEach>
						</select>
		            </li> 
		            <li class="inputs botbar">
		                <label for="arrival">도착역</label>
			                <select id="arr" name="arr">
								<option>::도착역::</option>
								<c:forEach items="${placeArr}" var="p">
									<option id="arr${p.placename}">${p.placename}</option>
								</c:forEach>
							</select>
		               <!--  <span class="usericonbox"></span>
		                <input type="text" name="arrival" id="arrival"> -->
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


<c:import url="/foot"/>