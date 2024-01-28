<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="./js/jquery-1.12.4.js"></script>
    <script src="./js/script.js"></script>
<meta charset="UTF-8">
<title>일루컴 홈페이지</title>
</head>
<body>
<div id ="mid_content">
            <header style = "text-align :center;">
                <a href ="index.jsp">
                    <img src= "./image/logo.JPG" width = "200">
                </a>    
                <div id="home_page">
                    <a href ="index.jsp" target = "_self"><B>&nbsp;&nbsp;&nbsp; 홈 </B>  &nbsp;&nbsp; </a> 
                    <a href ="intro.jsp" target = "_self"> <B> 소개 </B>  &nbsp;&nbsp; </a> 
                    <a href ="shoppingPD.jsp" target = "_self"> <B> 쇼핑몰 </B> </a> <br><br> 
                </div>
                    
            </header>
    <div>
        <div class = "screen1" id = "left">
            <div class="nav">
                    <ul class="menu">
                    <li><a href="#">CPU</a>
                        <ul class="submenu">
                            <li><a href="#">인텔</a></li>
                            <li><a href="#">인텔 12세대</a></li>
                            <li><a href="#">인텔 11세대</a></li>
                            <li><a href="#">인텔 10세대(R)</a></li>
                        </ul>
                    </li>
                    <li><a href="#">GPU</a>
                        <ul class="submenu">
                            <li><a href="#">NVIDIa 칩셋</a></li>
                            <li><a href="#">AMD 칩셋</a></li>
                            <li><a href="#">기타 칩셋</a></li>
                        </ul>
                    </li>
                    <li><a href="#">RAM</a>
                        <ul class="submenu">
                            <li><a href="#">4GB</a></li>
                            <li><a href="#">8GB</a></li>
                            <li><a href="#">16GB</a></li>
                        </ul>
                    </li>
                    <li><a href="#">파워서플라이</a>
                        <ul class="submenu">
                            <li><a href="#">ATX파워</a></li>
                            <li><a href="#">M-ATX(SFX)파워</a></li>
                            <li><a href="#">모듈러 파워</a></li>
                            <li><a href="#">TFX,Flex-ATX파워</a></li>
                            <li><a href="#">80 PLUS 인증 파워</a></li>
                            <li><a href="#">화이트 색상 파워</a></li>
                        </ul>
                    </li>
                    <li><a href="#">SSD/HDD</a>
                        <ul class="submenu">
                            <li><a href="#">128GB</a></li>
                            <li><a href="#">256GB</a></li>
                            <li><a href="#">512GB</a></li>
                            <li><a href="#">1TB</a></li>
                            <li><a href="#">2TB</a></li>
                        </ul>
                    </li>
                    <li><a href="#">메인보드</a>
                        <ul class="submenu">
                            <li><a href="#">인텔용 메인보드</a></li>
                            <li><a href="#">AMD용 메인보드</a></li>
                            <li><a href="#">DDR5 메모리 지원</a></li>
                            <li><a href="#"> PCld5.0 지원</a></li>
                            <li><a href="#">XMP / EXPO 지원</a></li>
                            <li><a href="#">WI-FI지원 메인보드</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        
        
        <div style ="margin-left:20%;">
            <img src = "./image/MAIN1.png" style = "width:70%;">
        </div>
    </div>
        <h2>인기 상품</h2>

        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="./image/sample.png" style="display:block;"></div>
                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0692.jpg"></div>
                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0143.jpg"></div>
                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0299.jpg"></div>
                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0436.jpg"></div>
                <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0411.jpg"></div>
                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0541.jpg"></div>
                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0554.jpg"></div>
                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0276.jpg"></div>
                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0382.jpg"></div>
                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0738.jpg"></div>
                <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0348.jpg"></div>
                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0067.jpg"></div>
                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0670.jpg"></div>
                <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0623.jpg"></div>
            </div>
        
            <!-- 네비게이션 -->
            <div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
            <div class="swiper-button-prev"></div><!-- 이전 버튼 -->
        
            <!-- 페이징 -->
            <div class="swiper-pagination"></div>
        </div>

        <div style = "font-family : sans-serif;">
            <h2>소개</h2><br>

            <h3>고객을 가장 먼저 생각하는 쇼핑몰<br><br>
             최고의 품질을 자랑하는 상품을 판매하고 컴퓨터를 구매하는데에 어려움을 겪는 고객분들에게<br>
            필요한 서비스와 지식을 제공할 수 있는 홈페이지를 만들자는 생각으로<br>
            친절한 설명이 고객의 궁금증을 말끔히 해결해 드리고 필요한 상품을 찾으실 수 있도록 도와드립니다.<br><br>
            고객들에게 높은 품질 기준과 다양한 상품으로 만족스러운 쇼핑을 약속합니다.<br><br>
            일루컴의 고객 중심 서비스를 지금 경험해보세요.</h3><br><br>

            <button class="button type3" onclick="location.href='shoppingPD.jsp';">

                구매하러 가기
            </button>
            <br><br><br>
        </div>
        <div style = "text-align: center;">
            <img src = "./image/MAIN2.JPG"> <br><br>

        <h2> 찾아 오시는 길 </h2> <br>

        <h3>인천 미추홀구 소성로 71 인하학원<br>학익동 336-1   우 22212</h3><br>
        
        <p align="middle">
            <iframe width = "1077" height = "650" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3167.538071612378!2d126.65531005068134!3d37.4480157797212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b79abdbb01089%3A0x4443efd7cade27cc!2z7J247ZWY6rO17JeF7KCE66y464yA7ZWZ!5e0!3m2!1sko!2skr!4v1667276143045!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </p>
        <br><br>


        <p align="middle" style = "font-weight:bold";>
          ⓒ 2022 Create Project_IWS 일루컴</p> <br>
        </div>
    </div>
    <script>

        new Swiper('.swiper-container', {
        
            slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
            spaceBetween : 30, // 슬라이드간 간격
            slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
        
            // 그룹수가 맞지 않을 경우 빈칸으로 메우기
            // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
            loopFillGroupWithBlank : true,
        
            loop : true, // 무한 반복
        
            pagination : { // 페이징
                el : '.swiper-pagination',
                clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
            },
            navigation : { // 네비게이션
                nextEl : '.swiper-button-next', // 다음 버튼 클래스명
                prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
            },
        });
        
        </script>
</body>
</html>
