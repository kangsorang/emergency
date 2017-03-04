<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<style>
		table {
		    width:100%;
		}
		table, th, td {
		    border: 1px solid black;
		    border-collapse: collapse;
		}
		th, td {
		    padding: 5px;
		    text-align: left;
		}
		table#t01 tr:nth-child(even) {
		    background-color: #eee;
		}
		table#t01 tr:nth-child(odd) {
		   background-color:#fff;
		}
		table#t01 th {
		    background-color: black;
		    color: white;
		}
	</style>
</head>
<body>
	<div data-role="page" id="pageone">
	  <div data-role="header">
	    <h1>관리자 페이지</h1>
	  </div>
	  
	  <div data-role="main" class="ui-content" id="myContent">
	  	<table style="width:100%" id="admin_table">
	  		<tr>
	  			<th>번호</th>
	  			<th>이름</th>
	  			<th>생일</th>
	  			<th>학생 휴대폰</th>
	  			<th>어머님 휴대폰</th>
	  			<th>아버님 휴대폰</th>
	  			<th>집 전화</th>
	  			<th>집주소</th>
	  		<tr>
	  	</table>
	  </div>
	  
	  <div data-role="footer">
	    <h1>powered by sorang</h1>
	  </div>
	</div>
	<script>
		$(document).ready(function(){
			console.log("admin page ready");
			$.ajax({
		        type: "GET",
		        contentType: 'application/x-www-form-urlencoded; charset=utf-8;', 
		        url: "/baselist",
		        dataType:"json",
		        data: null,//{"startNum":startNum, "endNum":endNum},
		        async: true, 
		        cache: false,
		        success: function(data){
		        	for(var i = 0; i < data.length;i++){		
		        		var html = "";
		        		// data-rel="popup" class="ui-btn" data-transition="slide"
		        		html += "<tr>";
		        		html += 	"<td>";
		        		html += 	i + 1;
		        		html += 	"</td>";

		        		html += 	"<td>";
		        		html += 	data[i].name;
		        		html += 	"</td>";
		        		
		        		html += 	"<td>";
		        		html += 	data[i].birthday;
		        		html += 	"</td>";
		        		
		        		html += 	"<td>";
		        		html += 	data[i].mobile_number_student;
		        		html += 	"</td>";
		        		
		        		html += 	"<td>";
		        		html += 	data[i].mobile_number_mother;
		        		html += 	"</td>";
		        		
		        		html += 	"<td>";
		        		html += 	data[i].mobile_number_father;
		        		html += 	"</td>";
		        		
		        		html += 	"<td>";
		        		html += 	data[i].phone_number_home;
		        		html += 	"</td>";
		        		
		        		html += 	"<td>";
		        		html += 	data[i].address;
		        		html += 	"</td>";
		        		
		        		html += "</tr>";
		        		$("#admin_table").append(html);
		        	}
		        	/*$(".ui-btn").unbind('click').bind('click',function(a,b,c,d){
		        		debugger;
		        		console.log("asd");
		            });*/
		        	
		        },
		        error:function (){
		            alert("서버와 통신중 에러가 발생하였습니다.");
		        }
		        
			});
		});
	</script>
</body>

</html>