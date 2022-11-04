<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Café SERA - LOCATION</title>
</head>
<body>


<%@ include file="header.jsp" %>

 <section class="location_section">

        <div class="location_title">LOCATION</div>

        <div class="location_section_div">             
            <!-- Tab links -->
            <div class="tabBox">
                <div class="tab">
                    <button class="tablinks" onclick="opentab(event, 'time')">영업시간</button>
                    <button class="tablinks" onclick="opentab(event, 'day')">휴무일</button>
                    <button class="tablinks" onclick="opentab(event, 'come')">오시는길</button>
                    <button class="tablinks" onclick="opentab(event, 'parking')">주차</button>
                </div>
            </div>
            <!-- Tab content -->
            <div id="time" class="tabcontent">               
                <p class="location_li_li" style="padding-top: 130px; font-size: 25px;"> &nbsp;&nbsp;평일 : 10:00 - 17:00</p>
                <p class="location_li_li"style="font-size: 25px;"> &nbsp;&nbsp;주말 / 공휴일 : 10:00 - 21:00</p>
            </div>

            <div id="day" class="tabcontent">
                <p class="location_li_li" style="padding-top: 140px; font-size: 25px;"> &nbsp;&nbsp;둘째, 넷째주 화요일 &amp; 공휴일</p>
            </div> 

            <div id="come" class="tabcontent">
                <p class="location_li_li" style=" font-size: 25px;"> &nbsp;&nbsp;서울시 양천구 목동로 1234</p>  
                <div class="location_imgBlock" >
                    <img id="location_img" src="./images/cafeSera/location.jpg">
                </div>
            </div>  

            <div id="parking" class="tabcontent" >
                <p class="location_li_li"style="padding-top: 150px; font-size: 25px;"> &nbsp;&nbsp;주차 불가능<br>(주변 공용주차장 이용)</p>
            </div>                     
                           
        </div>
    </section>
  	
	<script>
	
        function opentab(evt, cityName) {
            
            var i, tabcontent, tablinks;
           
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
           
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
            }
        
    </script>

    


<%@ include file="footer.jsp" %>


</body>
</html>