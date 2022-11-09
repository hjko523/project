<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOTICE</title>


<link rel="stylesheet" href="css/cafeSera/reset.css" type="text/css">
<link rel="stylesheet" href="css/cafeSera/main.css" type="text/css">


</head>


<style>

.input1 {
	width:98%;
	height:50px;
	font-size: 20px;
}
.textarea {
	font-size: 20px;
	width:98%;
	height: 380px;
}

.writeTable {
	border: 2px solid #32618D; 
}

</style>

<script src="/project/script/jquery-1.12.4.js"> </script>
<script src="/project/script/jquery-ui.js"> </script>

<script>

	function fn_submit() {
	
		if($.trim($("#title").val()) == ""){
			alert("제목을 입력해주세요!");
			$("#title").focus();
			return false;
		}
		
		$("#title").val($.trim($("#title").val())); // 앞뒤공백 제거 
		
		if($.trim($("#content").val()) == ""){
			alert("내용를 입력해주세요!");
			$("#content").focus();
			return false;
		}
		
	
	 	var formData = $("#frm").serialize();
		// ajax : 비동기 전송방식을 가진 jquery의 함수
		$.ajax({			
			
			// 전송 전 세팅
			type:"POST",  
			data:formData,
			url:"noticeWriteSave.do",
			dataType:"text", 	
			
			// 전송 후 세팅
			success: function(data){	
				if(data == "ok"){
					alert("저장완료");
					location = "noticeManager.do";
				} else {
					alert("저장실패");
				}
			},
			error: function(){	// 시스템 에러
				alert("오류발생");
			}
		});   
	 
	}
</script> 


<body>

<%@ include file="header.jsp" %>

<section class="notice_section">

       
	<div class="notice_sectionTable">
		<div class="notice_title">NOTICE</div>		
			<form id="frm"> 
				<table>	        
					<caption>게시판 등록</caption>
					
					<!-- content -->
					<tr  class="writeTable" style="margin-top:40px;">
						<th class="writeTable" width="20%"><label for="title">제목</label></th>
						<td class="writeTable" width="80%"><input type="text" name="title" id="title" class="input1"></td>
					</tr>
				
					<tr class="writeTable">
						<th class="writeTable" height="400px">내용</th>
						<td><textarea name="content" id="content" class="textarea"></textarea></td>
					</tr>
					
					<!-- button -->
					<tr class="writeTable" style="background:#f9f9f9;">
						<td colspan="2">
							<button class="button" type="submit" onclick="fn_submit(); return false;">
								저장</button>
							<button class="button" type="button" onclick="location='noticeManager.do'">
								취소</button>
						</td>
						
					</tr>                
	                        
				</table>
			</form>
	</div>

 </section>


<%@ include file="footer.jsp" %>

</body>
</html>