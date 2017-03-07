<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<script src="/js/intro.js" type="text/javascript"></script>
	<style>
	th {
	    /* border-bottom: 1px solid #d6d6d6; */
	    padding-top: 12px;
	    padding-bottom: 12px;
	    text-align: left;
	    background-color: #4CAF50;
	    color: white;
	}
	tr:hover {
		background-color: #ddd;
	}
	
	tr:nth-child(even) {
	    background: #e9e9e9;
	}
	
	</style>
</head>
<body>
    <div data-role="page" id="pageone">
	  <div data-role="header">
	    <h1>Welcome ^^</h1>
	  </div>
	  
	  <div data-role="main" class="ui-content" id="myContent">
  	  <p>9반의 비상연락망을 입력하는 페이지에요.</p>
  	  <p><b>사용법:</b> 자기 이름을 누르고 생일을 입력합니다.그리고 나타나는 페이지에 자신의 비상연락망 정보를 적어주세요.</p>
	  </div>
	  
	  <div data-role="footer">
	    <h1>powered by sorang</h1>
	  </div>
	</div> 
	  
	  
	
	
    <div data-role="page" id="pagetwo">
       <div data-role="header">
	      <h1>생일 입력 페이지</h1>
	   </div>
	   <div data-role="main" class="ui-content">
	   
       <div data-role="main" class="ui-content">
       	  <h3 id="selected_name"></h3>
	      <form method="post" action="/selectstudent">
	        <fieldset data-role="controlgroup" data-type="horizontal" data-mini="false">
	          <label for="day">생일을 입력하세요</label>
	          <input type="text" id="name" name="name"></input>
	          <select name="month" id="month" >
	            <option value="1">1월</option>
	            <option value="2">2월</option>
	            <option value="3">3월</option>
	            <option value="4">4월</option>
	            <option value="5">5월</option>
	            <option value="6">6월</option>
	            <option value="7">7월</option>
	            <option value="8">8월</option>
	            <option value="9">9월</option>
	            <option value="10">10월</option>
	            <option value="11">11월</option>
	            <option value="12">12월</option>
	          </select>
	          <select name="day" id="day" >
	          <option value="1">1일</option>
	          <option value="2">2일</option>
	          <option value="3">3일</option>
	          <option value="4">4일</option>
	          <option value="5">5일</option>
	          <option value="6">6일</option>
	          <option value="7">7일</option>
	          <option value="8">8일</option>
	          <option value="9">9일</option>
	          <option value="10">10일</option>
	          <option value="11">11일</option>
	          <option value="12">12일</option>
	          <option value="13">13일</option>
	          <option value="14">14일</option>
	          <option value="15">15일</option>
	          <option value="16">16일</option>
	          <option value="17">17일</option>
	          <option value="18">18일</option>
	          <option value="19">19일</option>
	          <option value="20">20일</option>
	          <option value="21">21일</option>
	          <option value="22">22일</option>
	          <option value="23">23일</option>
	          <option value="24">24일</option>
	          <option value="25">25일</option>
	          <option value="26">26일</option>
	          <option value="27">27일</option>
	          <option value="28">28일</option>
	          <option value="29">29일</option>
	          <option value="30">30일</option>
	          <option value="31">31일</option>
	          </select>
	          
	      </fieldset>
	      <input type="submit" value="생일을 다 입력했으면 여기를 클릭 !!" style="min-width: 100%;">
	    </form>
	    <a class='ui-btn' onclick='finishClick()'>메인 페이지로 돌아가기</a>
		<script>
		function finishClick(objButton){
			location.href="http://uisoon.cf";
		}
		</script>
	  </div>
	  <div data-role="footer">
	    <h1>powered by sorang</h1>
	  </div>
	</div> 

</body>
</html>