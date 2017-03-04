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
	<script>
		function finishClick(objButton){
			$.ajax({
				type: "GET",
				//contentType: 'application/x-www-form-urlencoded; charset=utf-8;', 
				url: "/",
				//dataType:"json",
				data: null,//{"startNum":startNum, "endNum":endNum},
				async: true, 
				cache: false,
				success: function(data){
					debugger;
				},
				error:function (){
					alert("서버와 통신중 에러가 발생하였습니다.");
				}
			});
		}
	</script>
	<style>
		
	</style>
</head>
<body>
	<div data-role="page" id="pageone">
	  <div data-role="header">
	    <h1>End</h1>
	  </div>
	  
	  <div data-role="main" class="ui-content" id="myContent">
  	  <h1>수고했어요 ^^</h1>
  	  <a class='ui-btn' onclick='finishClick()'>메인 페이지로 돌아가기</a>
		<script>
		function finishClick(objButton){
			location.href="http://192.168.25.36:8080";
		}
		</script>
	  </div>
	  
	  <div data-role="footer">
	    <h1>powered by sorang</h1>
	  </div>
	</div> 
</body>

</html>