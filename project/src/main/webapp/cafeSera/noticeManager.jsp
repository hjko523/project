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

</style>

<body>

<%@ include file="header.jsp" %>

<section class="notice_section">

       
	<div class="notice_sectionTable">
		 <div class="notice_title">NOTICE [관리자모드]</div>
			
			<!-- 검색 div -->
			<div class="search">
				<div class="divSearch">
					<form name="searchFrm" method="post" action="noticeManager.do"> 
						<select name="searchGubun" id="searchGubun">
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<input type="text" name="searchText" id="searchText">
						<button type="submit" id="searchBn">검색</button>
					</form>
				</div>
				
				<div class="divButton" id="divButton">
					<button class="button" id="btn1" type="button" onclick="location='cafeSeraNotice.do'" style="margin-right: 10px;">
						관리자모드 나가기</button>
					<button class="button" id="btn2" type="button" onclick="location='noticeWrite.do'" >
						글쓰기</button>					
		        </div>	
			</div>
			
			<!-- Table -->
			<table>
	        	<tr style="border-bottom: 2px solid #32618D;">
	        		<th width="10%">글번호</th>
					<th width="40%">제목</th>
					<th width="20%">등록일</th>
					<th width="10%">조회수</th>
					<th width="20%">관리</th>
				</tr>     
						
				<c:set var="cnt" value="${rowNumber }"/>		
				
				<c:forEach var="result" items="${resultList }">
				
					<input type="hidden" name="unq" value="${result.unq }">
					<tr align="center">
					
						<td><c:out value="${cnt }"/></td>											
						<td align="left"><c:out value="${result.title }"/></td>			
						<td><c:out value="${result.rdate }"/></td>
						<td><c:out value="${result.hits }"/></td>
						<td>
							<button class="button" id="btn" type="button" onclick="location='noticeDetailManager.do?unq=${result.unq  }'">
								수정</button>							
						</td>
					</tr>
							
				<c:set var="cnt" value="${cnt-1 }"/>
				
				</c:forEach>				              
                        
			</table>	
			
			<!-- Page -->
			<div>
				<div id="divPage">		
					<c:forEach var="i" begin="1" end="${totalPage }" >			
						<a id="pageDeco" href="cafeSeraNotice.do?viewPage=${i }">${i }</a>				
					</c:forEach>		
				</div>
			</div>
			
	        
		</div>
		

    </section>


<%@ include file="footer.jsp" %>

</body>
</html>