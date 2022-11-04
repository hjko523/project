<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Café SERA</title>

<link rel="stylesheet" href="css/cafeSera/reset.css" type="text/css">
<link rel="stylesheet" href="css/cafeSera/main.css" type="text/css">

 
</head>
<body>
<%@ include file="header.jsp" %>

	<section class="main_sectionTop">
 		<div class="main_sectionTop_1">           

			<ul class="main_sectionTop_newTittle">
				<h1><strong>Café SERA</strong> 에서 함께 하는 새로운 즐거움!</h1>          
				<li>" Citrus & Sweet "</li>                               
			</ul>
			
			<div class="main_sectionTop_newMenu">
				<!--  <img src="./images/new.png" alt="신메뉴" id="newMenu"><br> -->
				<div>
					<img src="./images/cafeSera/new4-remove.png" alt="신메뉴" id="newName1" class="newName">
					<img src="./images/cafeSera/new2.png" alt="신메뉴" id="newName2" class="newName">
					<img src="./images/cafeSera/new3.png" alt="신메뉴" id="newName3" class="newName">
				</div>
				<div class="main_new_span">
					<span id="main_span1">포멜로 모히토</span>
					<span id="main_span2">애플망고 블렌디드</span>
					<span id="main_span3">그린티 스파클링</span>
				</div>
			</div>
		</div>                 
	</section>
	    
	<section style="height: 15px;"></section>	

     <section class="main_sectionCenter1" style="height:100px;">
        <div class="sa sa-left" id="main_sectionCenter_LocationStore"> 	
            <div class="sa sa-left" id="main_sectionCenter_location">
            	<div><img id="main_sectionCenter_locationPicture" src="./images/cafeSera/위치1.png"></div>
            	<a href="cafeSeraLocation.do" id="main_sectionCenter_locationText">오시는 길</a>
            </div>
        </div>
       
        <div class="sa sa-right" id="main_sectionCenter_new">
            <div id="main_sectionCenter_newMenu">           
            	<a href="cafeSeraNotice.do" id="main_sectionCenter_newMenuText">신메뉴 출시!</a>
            </div>   
        </div>
                      
  
    </section>

	<section style="height: 15px;"></section>

    <section class="main_sectionCenter2">
        <div class="main_sectionCenter2_content"> 
            <video src="./video/cafeSera/production ID_4820118.mp4"autoplay muted loop></video>

                    
            
                <div class="main_sectionCenter2_contentDiv">
                    <b> &nbsp;Café SERA</b> 의 커피는<br>
                    고산지대에서 자란 밀도높은 생두만을 골라 <br>
                    최적의 로스팅을 과정을 거쳐<br>
                    고품질의 원두로 만들었습니다.<br>                    
                </div>
        
        </div>     
    </section>

    <section class="main_sectionBottom">
        <div>

        </div>
    </section>  
    
<%@ include file="footer.jsp" %>
    
    


 
 <script>
 
  document.addEventListener('DOMContentLoaded', function () {

	    const opacityImg = document.querySelector('.main_sectionTop_newMenu');

	    let opacityValue = 0;
	    let timerId = null;         
	    
	    const fadeIn = function()    
	    {   
	        // 적용한다
	        if (opacityValue <= 1)
	        {
	            //console.log('opacityValue=' + opacityValue); 
	            opacityImg.style.opacity = opacityValue;
	            opacityValue += 0.02;
	        }
	        else
	        {
	            // 타이머를 종료한다
	            opacityImg.style.opacity = `1`;
	            opacityValue = 0;
	            clearInterval(timerId);
	            timerId = null;
	     
	            return;
	        }

	        
	    }      
	    // 윈도우 온로드 함수
	    window.onload = function()
	    {      
	        // opacityValue 초기화
	        opacityValue = 0;
	        timerId = setInterval(fadeIn, 20);
	    }
			 // Scroll Animation (sa, 스크롤 애니메이션)
		const saTriggerMargin = 200;
		const saElementList = document.querySelectorAll('.sa');
		
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
	})


 
 </script>
    
    

</body>
</html>