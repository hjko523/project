<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Café SERA - MENU</title>
</head> 

<body>
<%@ include file="header.jsp" %>

<div class="wrapper">
        <div class="menutitle">MENU</div>
        <!-- filter Items -->
        <nav>
            
            <div class="items">
                <span class="item active" data-name="all"> All</span>
                <span class="item" data-name="coffee">COFFEE</span>
                <span class="item" data-name="ccino">SERACCINO</span>
                <span class="item" data-name="blended">BLENDED</span>
                <span class="item" data-name="tea"> TEA / MILKTEA</span>
                <span class="item" data-name="ade"> ADE</span>
                <span class="item" data-name="etc"> ETC</span>
            
            </div>
           <!--  <div class="items">
                <span class="item  active"  data-name="all" 	onclick="filterItem('all')"> All</span>
                <span class="item "    		data-name="coffee" 	onclick="filterItem('coffee')">COFFEE</span>
                <span class="item " 		data-name="ccino" 	onclick="filterItem('ccino')">SERACCINO</span>
                <span class="item " 		data-name="blended" onclick="filterItem('blended')">BLENDED</span>
                <span class="item " 		data-name="tea" 	onclick="filterItem('tea')"> TEA / MILKTEA</span>
                <span class="item " 		data-name="ade" 	onclick="filterItem('ade')"> ADE</span>
                <span class="item " 		data-name="etc" 	onclick="filterItem('etc')"> ETC</span>
            
            </div> -->
        </nav>
        <!-- filter Images -->
        <!-- The filterable elements. Note that some have multiple class names (this can be used if they belong to multiple categories) -->
        <div class="gallery">

            <div class="newBaverage">
                <div class="image blended" data-name="blended"><span><img src="./images/cafeSera/menu/blen4-mango.jpg" alt=""></span>애플망고 블렌디드</div>
                <div class="image ade" data-name="ade"><span><img src="./images/cafeSera/menu/ade4-pomelo.jpg" alt=""></span>포멜로 모히토</div>
                <div class="image ade" data-name="ade"><span><img src="./images/cafeSera/menu/ade5-green.jpg" alt=""></span>그린티 스파클링</div>        
            </div>

            <div class="Baverage">
                <div class="image" data-name="coffee"><span><img src="./images/cafeSera/menu/coffee1-americano.jpg" alt=""></span>아메리카노</div>
                <div class="image" data-name="coffee"><span><img src="./images/cafeSera/menu/coffee2-latte.jpg" alt=""></span>카페라떼</div>
                <div class="image" data-name="coffee"><span><img src="./images/cafeSera/menu/coffee3-capuccino.jpg" alt=""></span>카푸치노</div>
                <div class="image" data-name="coffee"><span><img src="./images/cafeSera/menu/coffee4-doubleshot.jpg" alt=""></span>더블샷</div>
                <div class="image" data-name="coffee"><span><img src="./images/cafeSera/menu/coffee5-dolce.jpg" alt=""></span>돌체라떼</div>
                <div class="image" data-name="coffee"><span><img src="./images/cafeSera/menu/coffee6-caramel.jpg" alt=""></span>카라멜마끼야또</div>
                <div class="image" data-name="coffee"><span><img src="./images/cafeSera/menu/coffee7-mocha.jpg" alt=""></span>카페모카</div>
                <div class="image" data-name="coffee"><span><img src="./images/cafeSera/menu/coffee8-white.jpg" alt=""></span>화이트모카</div>

                <div class="image" data-name="ccino"><span><img src="./images/cafeSera/menu/ccino1-duble.jpg" alt=""></span>더블 세라치노</div>
                <div class="image" data-name="ccino"><span><img src="./images/cafeSera/menu/ccino2-caramel.jpg" alt=""></span>카라멜 세라치노</div>
                <div class="image" data-name="ccino"><span><img src="./images/cafeSera/menu/ccino3-vanila.jpg" alt=""></span>바닐라 세라치노</div>
                <div class="image" data-name="ccino"><span><img src="./images/cafeSera/menu/ccino4-java.jpg" alt=""></span>자바칩 세라치노</div>
                <div class="image" data-name="ccino"><span><img src="./images/cafeSera/menu/ccino5-mocha.jpg" alt=""></span>초코 세라치노</div>
                <div class="image" data-name="ccino"><span><img src="./images/cafeSera/menu/ccino6-white.jpg" alt=""></span>화이트모카 세라치노</div>
                <div class="image" data-name="ccino"><span><img src="./images/cafeSera/menu/ccino7-green.jpg" alt=""></span>녹차 세라치노</div>

                <div class="image" data-name="blended"><span><img src="./images/cafeSera/menu/blen1-mintchoco.jpg" alt=""></span>민트초코 블렌디드</div>
                <div class="image" data-name="blended"><span><img src="./images/cafeSera/menu/blen2-straw.jpg" alt=""></span>딸기요거트 블렌디드</div>
                <div class="image" data-name="blended"><span><img src="./images/cafeSera/menu/blen3-peach.jpg" alt=""></span>피치 블렌디드</div>

                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea1-english.jpg" alt=""></span>얼그레이</div>
                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea2-earlgrey.jpg" alt=""></span>잉글리쉬브렉퍼스트</div>    
                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea3-youth.jpg" alt=""></span>유스베리</div>
                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea4-green.jpg" alt=""></span>그린티</div>
                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea5-camomail.jpg" alt=""></span>캐모마일</div>
                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea6-mint.jpg"></span>페퍼민트</div>
                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea7-hibiscus.jpg" alt=""></span>히비스커스티</div>
                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea8-blackgrape.jpg" alt=""></span>블랙자몽티</div> 
                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea10-greenlatte.jpg " alt=""></span>녹차라떼</div>
                <div class="image" data-name="tea"><span><img src="./images/cafeSera/menu/tea9-milktea.jpg" alt=""></span>밀크티</div>

                <div class="image" data-name="ade"><span><img src="./images/cafeSera/menu/ade1-peachorange.jpg" alt=""></span>피치오렌지 에이드</div>
                <div class="image" data-name="ade"><span><img src="./images/cafeSera/menu/ade2-lime.jpg" alt=""></span>라임에이드</div>

                <div class="image" data-name="etc"><span><img src="./images/cafeSera/menu/etc1-cocoa.jpg" alt=""></span>초코라떼</div>
                <div class="image" data-name="etc"><span><img src="./images/cafeSera/menu/etc2-affogato.jpg" alt=""></span>아포가토</div>

            </div>
                        
        </div>
    </div>  
    
   
    
    <%@ include file="footer.jsp" %>
    
    <script>
    
  //selecting all required elements
    const filterItem = document.querySelector(".items");
    const filterImg = document.querySelectorAll(".gallery .image");

    window.onload = function(){ //after window loaded
    	
        filterItem.onclick = function(selectedItem){   
    	
            if(selectedItem.target.classList.contains("item")){ 
            	
           		filterItem.querySelector(".active").classList.remove("active"); 
           		
				selectedItem.target.classList.add("active");  
				
                let filterName = selectedItem.target.getAttribute("data-name");   

                
                filterImg.forEach(function(image) {

                      let filterImges = image.getAttribute("data-name");      
                            
                        if((filterImges == filterName) || (filterName == "all"))
                        {                                
                            image.classList.remove("hide"); 
                            image.classList.add("show");    
                        } else {
                            image.classList.add("hide");    
                            image.classList.remove("show");     
                        }
                });
            }
        }

        for (let i = 0; i < filterImg.length; i++) {
            filterImg[i].setAttribute("onclick", "preview(this)"); 
        }
    }
</script>

</body>
</html>