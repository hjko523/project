<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Café SERA - NOTICE</title>

<link rel="stylesheet" href="css/cafeSera/reset.css" type="text/css">
<link rel="stylesheet" href="css/cafeSera/main.css" type="text/css">


</head>

<style>

#back, #login {
	margin: 4px 8px;
}

</style>

<script src="/project/script/jquery-1.12.4.js"> </script>
<script src="/project/script/jquery-ui.js"> </script>

<script>

function loginPress(event){
	
	if(event.keyCode == 13){
		return fn_submit();
	}
	
}

/* $(function(){ //jquery의 시작문법
	
	$("#login").click(function(){ // jquery의 버튼클릭 코드	 */
		function fn_submit() {	
	
		// password 공백처리
		var pass = $("#pass").val();
		pass = $.trim(pass);
		if(pass == ""){
				alert("암호를 입력해주세요.");
				$("#pass").focus();
				return false;
		}
		
		var name = $("#name").val();
		
		//var sendData = "name='관리자'&pass=" + pass;
		
		var sendData = {"name": name, "pass":pass};
		
		// ajax
		$.ajax({			
			// 전송 전 세팅
			type:"POST",  //전송타입
			data:sendData, // json설정방식
			url:"passCheck.do",
			dataType:"text", 	// return타입

			// 전송 후 세팅
			success: function(result){	// data : controller에서 전해준 매개변수  controller -> 1
				if(result == "ok"){					
					location = "noticeManager.do";
				} 
				else {
					alert("비밀번호가 틀렸습니다.");
				}
				
			},
			error: function(request,status,error){	// 시스템 에러
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		}); 
	}
/* 	}); 
}); */


</script>

<body>

<%@ include file="header.jsp" %>

<section class="notice_section">

       
	<div class="notice_sectionTable">
		<div class="notice_title">NOTICE</div>
			
		<form id="frm">
			<input type="hidden" id="name" value="관리자">
			
			<!-- Table -->			
			<table style="margin-top:20px; width:450px; border:2px solid #32618D; ">
	        	<tr>
					<th style="padding:15px 8px; font-size:25px;">비밀번호</th>
					
				</tr>     
										
				<tr>				
					<td>
						<input type="password" id="pass" onkeypress="loginPress(event)" style="height:45px; font-size:20px;">
					</td>
				</tr>
				
				<tr>				
					<td>	
						<button class="button" id="back" type="button" onclick="location='cafeSeraNotice.do'">돌아가기</button>						
						<button class="button" id="login" type="button" onclick="fn_submit(); return false;">로그인</button>
					</td>				
				</tr>	         
                        
			</table>	
		</form>
	</div>    

		

</section>


<%@ include file="footer.jsp" %>

</body>
</html>