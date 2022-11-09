<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Café SERA - MEMBERSHIP</title>
</head>
<body>


<%@ include file="header.jsp" %>


    <div class="membership">
        <div class="membership_title">
            <strong>MEMBERSHIP</strong>
        </div>
        <div class="membership_subTitle">
            <!-- <div class="membership_subTitle_img"><img src="./images/cafeSera/membership.jpg" id="membership_img"></div> -->            
        	
        	<div class="membership_subTitle_txt">
            	<div class="membership_subTitle_txtDiv" >Café SERA 멤버쉽으로 더 많은 혜택을 누리세요!</div>
	            <div class="membership_subTitle_txtDiv2">
	                <p>음료 구매시 영수증당 <b>1 SERA</b> 적립</p>
	                <p>ROSE / DIAMOND는 승급 후 1년 이내에 각 해당 <b>SERA</b> 를 더 모으면 등급이 유지됩니다.</p>
	            </div>    
        	</div>
        </div>
      

        <div class="membership_content">
            <ul class="white">                
                <p style="font-weight: 900; font-size: 30px;">WHITE</p><br>
                <p style="font-weight: 600; font-size: 15px;">무기명 회원</p>
                <br><hr><br>            
                <li><img src="./images/cafeSera/love.png"> &nbsp;12 SERA 적립시마다 <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 아메리카노 무료쿠폰 1장 제공</li>
                <div class="white_grade"><img src="./images/cafeSera/white.jpg"></div>
            </ul>
            <ul class="rose">                
                <p style="font-weight: 900; font-size: 30px;">ROSE</p><br />
                <p style="font-weight: 600; font-size: 15px;">12 SERA 적립시</p>
                <br/><hr/><br/> 
                <li><img src="./images/cafeSera/love.png"> &nbsp;12 SERA 적립시마다 <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 아메리카노 무료쿠폰 1장 제공</li>
                <li><img src="./images/cafeSera/love.png"> &nbsp;생일에 무료 음료 쿠폰 1장 제공</li>
                <li><img src="./images/cafeSera/love.png"> &nbsp;SHOT / SYRUP 추가 무료</li>
                <div class="rose_grade"><img src="./images/cafeSera/rose.jpg"></div>
            </ul>
            <ul class="dia">
                <p style="font-weight: 900; font-size: 30px;">DIAMOND</p>
                <br>
                <p style="font-weight: 600; font-size: 15px;">50 SERA 적립시</p>
                <br><hr><br> 
                <li><img src="./images/cafeSera/love.png"> &nbsp;10 SERA 적립시마다 <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;무료 음료 쿠폰 1장 제공 </li>
                <li><img src="./images/cafeSera/love.png"> &nbsp;SHOT / SYRUP 추가 무료</li>
                <li><img src="./images/cafeSera/love.png"> &nbsp;신메뉴 출시때마다 1잔 무료 제공</li>
                <li><img src="./images/cafeSera/love.png"> &nbsp;생일에 무료 음료 쿠폰 2장 제공</li>
                <li><img src="./images/cafeSera/love.png"> &nbsp;SHOT / SYRUP 추가 무료</li>
                <div class="dia_grade"><img src="./images/cafeSera/dia.jpg"></div>
            </ul>
        </div>
    </div>


<%@ include file="footer.jsp" %>


    <script>
        // Scroll Animation (스크롤 애니메이션)
        const saTriggerMargin = 200;
        const saElementList = document.querySelectorAll('.membership_content');
  
        const saFunc = function() {
          for (const element of saElementList) {
            if (!element.classList.contains('show')) {
              if (window.innerHeight > element.getBoundingClientRect().top + saTriggerMargin) {
                element.classList.add('show');
              }
            }
          }
        }
  
        window.addEventListener('load', saFunc);
        window.addEventListener('scroll', saFunc);
    </script>

</body>
</html>