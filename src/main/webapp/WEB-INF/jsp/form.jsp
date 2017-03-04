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
	<script src="/js/form.js" type="text/javascript"></script>
	<style>
		/* #contact label{
			display: inline-block;
			width: 100%;
			text-align: left;
			font-size : 20px;
			margin-bottom : 10px
		}
		#contact_submit{
			padding-left: 10px;
			padding-right: 10px;
			height: 100%
		}
		#contact div{
			margin-top: 1em;
		}
		textarea{
			vertical-align: top;
			font-size: 20px;
			height: 5em;
			width: 100%;
		}
		input.invalid, textarea.invalid{
			border: 2px solid red;
		}
		input{
			font-size: 20px;
			width: 100%;
			height:50px;
		}
		
		input.valid, textarea.valid{
			border: 2px solid green;
		}
		.error{
			display: none;
			margin-left: 10px;
		}		
		
		.error_show{
			color: red;
			margin-left: 10px;
		}
		form{
			padding-left : 10px;
			padding-right: 10px;
			width: 100%;
			
		}
		button{
			font-size: 20px;
			width: 100%;
			height: 100%;
		} */
		.myerror{
			display: none;
			margin-left: 10px;
		}	
		.myerror_show{
			color: red;
			margin-left: 10px;
		}
		input.myinvalid, textarea.myinvalid{
			border: 2px solid red;
		}
		input.myvalid, textarea.myvalid{
			border: 2px solid green;
		}
		.mybox {
			border: 1px solid gold;
		}
	
	</style>
</head>
<body>
	<div data-role="page" id="pagetwo">
       <div data-role="header">
	      <h1>${name}의 비상연락망</h1>
	   </div>
       <div data-role="main" class="ui-content">
         <form method="post" action="/enterform">
       	    <!-- Name -->
			<input type="text" id="contact_name" class="myvalid" name="contact_name" value="${name}" style="display:none;"></input><br>
			<br>
			<!-- Email -->
			<div style="border:1px solid gold; padding:7px;">
				<label for="contact_email">휴대폰 번호 : ex) 01012345678</label><br>
				<label for="contact_email">통일성 있게 - 이거 빼고 숫자만!!</label><br>
				<input type="tel" id="mobile_student" name="mobile_student" value="${mobile_number_student}" }></input><br>
			</div>		<br>				
			<!-- Message -->
			<div style="border:1px solid gold; padding:7px;">
				<label for="contact_message">어머니 휴대폰 번호 : ex) 01012345678</label><br>
				<input type="tel" id="mobile_mother" name="mobile_mother" value="${mobile_number_mother}"></input><br>
			</div>	<br>
			<!-- Message -->
			<div style="border:1px solid gold; padding:7px;">
				<label for="contact_message">아버지 휴대폰 번호 : ex) 01012345678</label><br>
				<input type="tel" id="mobile_father" name="mobile_father" value="${mobile_number_father}"></input><br>
			</div>		<br>
			<!-- Message -->
			<div style="border:1px solid gold; padding:7px;">
				<label for="contact_message2">집 전화번호 : ex) 0278901234</label><br>
				<input type="tel" id="phone" name="phone" value="${phone_number_home}"></input><br>
			</div>			<br>		
			
			<!--Website -->
			<div style="border:1px solid gold; padding:7px;">
				<label for="contact_website">집주소 : ex) 경기도 하안로 364-1 하안주공 9단지</label><br>
				<textarea id="address" name="address">${home_address}</textarea><br>
			</div>				<br>		
			<!-- Submit Button -->
			<div id="contact_submit">				
				<button type="submit" style="min-width: 100%;">저장하기</button>
			</div>
	    </form>
	    <a href="#" class="ui-btn" data-rel="back">메인 페이지로 돌아가기</a>
	  </div>
	  <div data-role="footer">
	    <h1>powered by sorang</h1>
	  </div>
	</div> 
</body>
</html>