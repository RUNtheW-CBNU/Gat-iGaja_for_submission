<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="crawling.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--=============== FAVICON ===============-->
    <link rel="shortcut icon" href="../../../../../Downloads/runtheW/assets/img/favicon.png" type="image/png">

    <!--=============== REMIXICONS (nav 깜빡 동작) ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <!--=============== SWIPER CSS ===============-->
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">

    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/each_style.css">
    <link rel="stylesheet" href="assets/css/map.css">
    <link rel="stylesheet" type="text/css" href="assets/css/Weather.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"/>
    <title>Australia</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<main class="main">
    <!--==================== HOME ====================-->
    <section class="home" id="home">
        <img src="assets/img/syd.jpg" alt="Australia" class="each_home__img a">

        <div class="each_home__container container grid">
            <div class="home__data">
                <span class="home__data-subtitle">Let's go to</span>
                <h1 class="home__data-title"><b>Australia</b></h1>
                <a href="https://www.australia.com/ko-kr" target="_blank" class="button" title=" 호주 관광청으로 이동합니다.">Explore</a>
            </div>
        </div>
    </section>

    <!--==================== 입국정보 ====================-->
    <%!  String [] arrT= new String[5];%>
    <%  TravelInfo botT = new TravelInfo("https://travel.naver.com/overseas/AU255055/country/prepare#hentrance");
        arrT = botT.activateBot();
    %>
    <section>
        <ul class="entry_info">
            <li>
                <div class="condition">입국가능여부</div>
                <div class="result"><%= arrT[0]%> </div>
            </li>
            <li>
                <div class="condition">백신필수여부</div>
                <div class="result"><%= arrT[1]%> </div>
            </li>
            <li>
                <div class="condition">여행지격리여부</div>
                <div class="result"><%= arrT[2]%> </div>
            </li>
            <li>
                <div class="condition">한국 귀국시</div>
                <div class="result2"><span>[백신 접종자] </span><%= arrT[3]%><br>
                    <span>[백신 미접종자] </span> <%= arrT[4]%></div>
            </li>
        </ul>
    </section>

    <!--==================== 나라 소개 ====================-->
    <section>
        <div class="about__container container grid country_info">
            <div class="about__data">
                <h2 class="section__title about__title"><b>호주</b></h2>
                <p class="about__description">"호주는 세계에서 가장 큰 섬이고 가장 작은 대륙입니다. 또한 대륙 전체를 영토로 가지고 있는 유일한 나라입니다. 세계 각국 문화의 교차점이자 교집합이며, 하나의 대륙으로 압축된 지구와 같죠.
                    꽤 큰 대륙이라서 한 번에 다 둘러보려면 매우 힘들 거예요. <br>
                    각각 고유한 환경, 문화, 사람들로 이루어져 있어서 매우 다양한 여행 경험을 선사하는데요.호주 여행은 도시와 아웃백 모험, 미식 체험, 해변의 안식처가 다가 아닙니다. 호주 대륙 전체에 걸쳐 놀랍도록 다양한 자연 경관과 문화가 존재하기 때문에
                    마이애미와 로스앤젤레스 같이 매우 세련된 파티 장소, 뉴욕과 같은 번화한 대도시,샌프란시스코와 같은 여유로운 도시,
                    라스베이거스와 같은 독특하고 기발한 장소 등이 있어요. 활기차고 다양한 대륙을 탐험해 보세요."
                </p>
            </div>
            <div class="experience__img grid">
                <div class="experience__overlay">
                    <img src="assets/img/ul.jpg" alt="" class="experience__img-one"/>
                </div>

                <div class="experience__overlay">
                    <img src="assets/img/kangaroo.jpg" class="experience__img-two"/>
                </div>
            </div>
        </div>
    </section>
    <!--==================== 바로가기 버튼 ====================-->
    <div class="bg-2">
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="여행 정보"
                    onClick="location.href='#aus_info'"><span>여행 정보 <i class="fa-solid fa-plane"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="코로나 상황"
                    onClick="location.href='#aus_covid'"><span>코로나 상황 <i class="fa-solid fa-virus"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="날씨"
                    onClick="location.href='#aus_weather'"><span>날씨 <i class="fa-solid fa-cloud-sun"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="환율"
                    onClick="location.href='#aus_ex'"><span>환율 <i class="fa-solid fa-sack-dollar"></i></span></button>
        </div>
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="맛집"
                    onClick="location.href='#aus_rest'"><span>맛집 <i class="fa-solid fa-utensils"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="뉴스"
                    onClick="location.href='NEWS_AU.jsp'"><span>뉴스 <i class="fa-solid fa-newspaper"></i> </span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="리뷰"><span>리뷰 <i class="fa-solid fa-comment-dots"></i></span></button>
        </div>
    </div>

    <!--==================== 여행 정보 ====================-->
    <section class="about section" id="aus_info">
        <div class="about__container container gird">
            <h2 class="section__title about__title">여행 정보 <i class="fa-solid fa-plane"></i></h2>
            <div class="info_img" style="width: 40%; float: left; margin-left: -2em;">
                <div id="map"></div>
            </div>
            <div class="about__data" style="width: 55%; float: right; ">
                <ul class="about__description">
                    <li style="float: left; margin-right:0.5em">
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-plane-departure"></i>  항공</h3> <br>직항 <b>10시간</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-brands fa-cc-visa"></i>  비자</h3> <br>ETA 필요 <b>90일 무비자</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-plug"></i>  전압</h3> <br>50hz <b>230V</b></li>
                        </ul>
                    </li>
                    <li style="float: left">
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-language"></i>  언어</h3> <br> <b>영어</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-clock"></i>  시차</h3> <br>한국대비 <b>1시간 빠름</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-coins"></i>  팁</h3> <br>없음 <b>10%</b></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!--==================== 코로나 상황 ====================-->
    <%!  String [] arrC= new String[6];%>
    <%  Covid botC = new Covid("https://news.google.com/covid19/map?hl=ko&mid=%2Fm%2F0chghy&gl=KR&ceid=KR%3Ako");
        arrC = botC.activateBot();
    %>
    <section class="about section" style="margin-top: 20em;">
        <div class="about__container container gird gap" id="aus_covid">
            <div class="about__data covid_parent" >
                <h2 class="section__title about__title">코로나 상황 <i class="fa-solid fa-virus"></i></h2>
                <ul class="covid">
                    <li>
                        <strong>신규 확진자(1일 평균)</strong>
                    </li>
                    <ul>
                        <li>
                            <img src="<%= arrC[0]%>" class="dt3Iuf zC7z7b FS6bed" loading="lazy" alt="14일 동향 차트" aria-label="14일 동향 차트">
                        </li>
                        <li>
                            <%= arrC[4]%>
                        </li>
                    </ul>
                </ul>
                <ul class="covid">
                    <li>
                        <strong>인구 중 접종 완료자 비율(%)</strong>
                    </li>
                    <ul>
                        <li>
                            <img src="<%= arrC[2]%>" class="dt3Iuf krHqHb FS6bed" loading="lazy" alt="14일 동향 차트" aria-label="14일 동향 차트">
                        </li>
                        <li>
                            <%= arrC[5]%>
                        </li>
                    </ul>
                </ul>
                <span class="source">출처: OWID, 존스 홉킨스 대학교</span>
                <ul class="covid" style="margin-bottom: 10vh;">
                    <h4 style="margin-bottom: 2vh"><a href="https://news.google.com/search?q=%ED%98%B8%EC%A3%BC%20%EC%BD%94%EB%A1%9C%EB%82%98%20when%3A7d&hl=ko&gl=KR&ceid=KR%3Ako">최신 코로나 관련 뉴스 확인하기</a></h4>

                </ul>
            </div>
        </div>
    </section>

    <!--==================== 날씨 정보 ====================-->
    <section class="about section" >
        <div class="about__container container gird gap" id="aus_weather">
            <h2 class="section__title about__title">날씨 정보 <i class="fa-solid fa-plane"></i></h2>
            <div class="about__data" style="width: 55%; float: left; margin-right: 1em;">
                <ul class="about__description">
                    <li>
                        <b>여행 추천기간(시드니 기준)</b> :  12월~2월
                        <br>1년 내내 여행하기 좋은 나라. 북반구와 계절이 정반대라 북반구의 겨울 12~2월이 성수기. 하나의 나라이지만 가장 작은 대륙이기도 해서 각 지역마다 기후 차이가 크다. <br>
                        여름에는 울룰루 쪽 사막의 경우 너무 뜨겁고, 호주 서북쪽(브룸~다윈)은 우기로 길이 끊겨 이동이 어려우니 여행 준비 시 각 지역의 날씨를 확인해야 한다.<br>
                    </li>
                    <li>
                        <b>추천 옷차림</b> : 여행하는 지역의 계절에 맞는 옷을 준비한다. 특히 호주의 강한 자외선을 차단할 자외선 차단제나 모자, 선글라스 등은 필수. 한국에 비해 일교차가 큰 편이므로 걸칠 옷을 준비하는 것도 좋다. 지역에 따라 모기 벌레 퇴치제, 파리망이 필요한 경우도 있으니 여행 전 확인하자.

                    </li>
                </ul>
                <canvas class="line_chart" id="line-chart_aus" ></canvas>
            </div>
            <div class="info_img" style="width: 40%; float: right;">
                <!-- 날씨 api container에 받아옴 -->
                <div class="container">
                    <div class = "card">
                        <h2><i>&#x2708 </i> <span id="location"></span></h2>
                        <h5 id="weather"></h5>
                        <h4><span id="temp"></span><sup>o</sup>C</h4>
                        <img src ="" id ="icon">
                        <!--<button onclick="window.location.reload();" class="refresh"><i>&#x2708</i></button>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--==================== 환율 ====================-->
    <%!  String sale="";%>
    <%  Exchange_Rate bot1 = new Exchange_Rate("https://finance.naver.com/marketindex/exchangeList.naver");
    sale = bot1.activateBot(12);
    %>
    <section class="about section" >
        <div class="about__container container gird gap" id="aus_ex">
            <h2 class="section__title about__title"><span>환율 <i class="fa-solid fa-sack-dollar"></i></span></h2>
            <table class="tg">
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="호주 AUD" width="1" height="1">호주 AUD</th>
                <th rowspan="2" align=center style="padding: 0 10vw 0;"><i class="fa-solid fa-arrows-rotate"></i></th>
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="대한민국 KRW" width="1" height="1">대한민국 KRW</th>

                <tr>
                    <td class="tg-0pky" colspan="4">1 AUD</td>
                    <!-- 환율 정보 입력 -->
                    <td class="tg-0pky" colspan="4"><%= sale%> 원</td>
                </tr>
            </table>
        </div>
    </section>
    <section class="gap"></section>

    <!--==================== 맛집 ====================-->
    <%!  String [] arrR= new String[21];%>
    <%  Restaurant botR = new Restaurant("https://www.yelp.com/search?find_desc=Restaurants&find_loc=Sydney%2C+New+South+Wales%2C+Australia");
    arrR = botR.activateBot();
    %>
    <section class="place section" id="place" style="margin-bottom: 20em;">
    <div class="about__container container gird gap" id="aus_rest">
        <h2 class="section__title about__title">맛집 <i class="fa-solid fa-utensils"></i></h2>
        <div class="place__container container grid">
            <!------맛집1------>
            <div class="place__card">
                <img src="<%= arrR[10]%>" alt="" class="place__img">
                <div class="place__content">
                    <div class="place__data">
                        <h3 style="margin-top: 7em; color:white;"><%= arrR[0]%></h3>
                    </div>
                </div>
            </div>

            <div class="place__card">
                <img src="<%= arrR[11]%>" alt="" class="place__img">
                <div class="place__content">
                    <div class="place__data">
                        <h3 class="place__title"  style="margin-top: 7em;" ><%= arrR[1]%></h3>
                    </div>
                </div>
            </div>

            <div class="place__card">
                <img src="<%= arrR[12]%>" alt="" class="place__img">
                <div class="place__content">
                    <div class="place__data">
                        <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[2]%></h3>
                    </div>
                </div>
            </div>

            <div class="place__card">
                <img src="<%= arrR[13]%>" alt="" class="place__img">
                <div class="place__content">
                    <div class="place__data">
                        <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[3]%></h3>
                    </div>
                </div>
            </div>

            <div class="place__card">
                <img src="<%= arrR[14]%>" alt="" class="place__img">
                <div class="place__content">
                    <div class="place__data">
                        <h3 class="place__title" style="margin-top: 7em;"><%= arrR[4]%></h3>
                    </div>
                </div>
            </div>

            <div class="place__card">
                <img src="<%= arrR[15]%>" alt="" class="place__img">
                <div class="place__content">
                    <div class="place__data">
                        <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[5]%></h3>
                    </div>
                </div>
            </div>
            <div class="place__card">
                <img src="<%= arrR[16]%>" alt="" class="place__img">
                <div class="place__content">
                    <div class="place__data">
                        <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[6]%></h3>
                    </div>
                </div>
            </div>
            <div class="place__card">
                <img src="<%= arrR[17]%>" alt="" class="place__img">
                <div class="place__content">
                    <div class="place__data">
                        <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[7]%></h3>
                    </div>
                </div>
            </div>
            <div class="place__card">
                <img src="<%= arrR[18]%>" alt="" class="place__img">
                <div class="place__content">
                    <div class="place__data">
                        <h3 class="place__title"  style="margin-top: 7em;"><%= arrR[8]%></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


</main>

<!--=============== FOOTER ===============-->
<jsp:include page="footer.jsp"></jsp:include>

<!--=============== SCROLL UP ===============-->
<a href="#" class="scrollup" id="scroll-up">
    <i class="ri-arrow-up-line scrollup__icon"></i>
</a>
<!--=============== SCROLL REVEAL ===========-->
<script src="assets/js/scrollreveal.min.js"></script>
<!--=============== SWIPER JS ===============-->
<script src="assets/js/swiper-bundle.min.js"></script>

<!--=============== MAIN JS ===============-->
<script src="assets/js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="assets/js/chart/aus_chart.js"></script>
<script src="assets/js/map/au_map.js"></script>
<script src="assets/js/weather/au_weather.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWNwND17k49S529e1b23yG20JexwvWPKs&callback=initMap&v=weekly" defer></script>
</body>
</html>

