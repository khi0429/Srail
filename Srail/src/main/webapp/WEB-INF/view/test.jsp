<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
	</head>
	<body>
	
		<script type="text/javascript">
		function jsonTest(){
		      $.ajax({
		         type:'GET',
		         url: 'jsonTest.do',
		         dataType:'json',
		         success:function(res){
		        	 	//console.log(JSON.stringify(res));
		            str='';
		             $.each(res.response.body.items.item,function(i,item){
		            	str+="@@@@"+i+item.depplandtime;
		            	//str+=JSON.stringify(item);
		            	//console.log(item.arrplacename);
		            }); 
		            $('#info').html(str);
		         },
		         error:function(e){
		            alert('error: '+e.status);
		         }
		      });
		   }
		</script>
	
		<c:set var="trArr" value="${jsonArr.response.body.items}"/>
		
		<button onclick="jsonTest()">jsonTest</button>
		<div id="info"></div>
		
	</body>
</html>
