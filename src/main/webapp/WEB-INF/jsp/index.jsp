<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Hello</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
	<script src="/js/title.js" type="text/javascript"></script>
	<style type="text/css">
		#contact label{
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
		}
		
	</style>
</head>
<body>
    <h1>test ${name}</h1>
    <form id="contact" method="post" action="">
		<!-- Name -->
		<div>
			<label for="contact_name">이름 : </label><br>
			<input type="text" id="contact_name" name="name"></input><br>
			<span class="error">This field is required</span>
		</div>
		<!-- Email -->
		<div>
			<label for="contact_email">휴대폰 번호 : </label><br>
			<input type="tel" id="contact_email" name="email"></input><br>
			<span class="error">A valid email address is required</span>				
		</div>						
		<!-- Message -->
		<div>
			<label for="contact_message">어머니 휴대폰 번호 : </label><br>
			<input type="tel" id="contact_email" name="email"></input><br>
			<span class="error">This field is required</span>												
		</div>	
		<!-- Message -->
		<div>
			<label for="contact_message">아버지 휴대폰 번호 : </label><br>
			<input type="tel" id="contact_email" name="email"></input><br>
			<span class="error">This field is required</span>												
		</div>		
		<!-- Message -->
		<div>
			<label for="contact_message2">집 전화번호 : </label><br>
			<input type="tel" id="contact_email" name="email"></input><br>
			<span class="error">This field is required</span>												
		</div>					
		
		<!--Website -->
		<div>
			<label for="contact_website">집주소 : </label><br>
			<textarea id="contact_message2" name="message2"></textarea><br>
			<span class="error">A valid url is required</span>								
		</div>						
		<!-- Submit Button -->
		<div id="contact_submit">				
			<button type="submit">Submit</button>
		</div>
	</form>
</body>
</html>