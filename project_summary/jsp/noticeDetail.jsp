<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"      uri="http://java.sun.com/jsp/jstl/functions" %>

 <c:set var="content" value="${fn:replace(noticeVO.content,newline,'<br>') }" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOTICE</title>

<link rel="stylesheet" href="css/cafeSera/reset.css" type="text/css">
<link rel="stylesheet" href="css/cafeSera/main.css" type="text/css">

</head>

<style>
</style>

<script src="/project_cafe/script/jquery-1.12.4.js"> </script>
<script src="/project_cafe/script/jquery-ui.js"> </script>



<body>

<%@ include file="header.jsp" %>

<section class="notice_section">

       
	<div class="notice_sectionTable">
		<div class="notice_title">NOTICE</div>		
			<form id="frm"> 
			<input type="hidden" name="unq" value="${noticeVO.unq }">
				<table>	        
					<caption>게시판 내용</caption>
					
					<tr> 
						<th width="15%" style="border-right:1px solid #32618D; border-bottom:1px solid #32618D;">제목</th>
						<td width="85%" style="text-align:left; padding-left:20px;">${noticeVO.title }</td>
					</tr>
					
					<tr>				
						<th style="border-right:1px solid #32618D; border-bottom:1px solid #32618D;">등록일</th>
						<td style="text-align:left; padding-left:20px;">${noticeVO.rdate }</td>
					</tr>
					
					<tr>
				
						<th style="border-right:1px solid #32618D; border-bottom:1px solid #32618D;">조회수</th>
						<td style="text-align:left; padding-left:20px;">${noticeVO.hits }</td>
					</tr>
					
					<tr>
						<th style="border-right:1px solid #32618D; border-bottom:1px solid #32618D;">내용</th>
						<td style="text-align:left; padding-left:20px; height:200px;">${noticeVO.content }</td>
					</tr>				

				</table>
			</form>	
					<!-- button -->
					<div  style="margin-top:20px;">
						<button class="button" type="button" onclick="location='cafeSeraNotice.do'">
								목록</button>							
									
						
					</div>                
	                        
				
		
	</div>

 </section>


<%@ include file="footer.jsp" %>

</body>
</html>