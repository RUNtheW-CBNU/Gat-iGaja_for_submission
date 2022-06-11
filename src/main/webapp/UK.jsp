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
    <title>United Kingdom</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<main class="main">
    <!--==================== HOME ====================-->
    <section class="home" id="home">
        <img src="assets/img/uk_main.jpg" alt=UK"" class="each_home__img uk">

        <div class="each_home__container container grid">
            <div class="home__data">
                <span class="home__data-subtitle">Let's go to</span>
                <h1 class="home__data-title"><b>United Kingdom</b></h1>
                <a href="https://www.visitbritain.com/gb/" target="_blank" class="button" title="영국 관광청으로 이동합니다.">Explore</a>
            </div>
        </div>
    </section>

    <!--==================== 입국정보 ====================-->
    <%!  String [] arrT= new String[5];%>
    <%  TravelInfo botT = new TravelInfo("https://travel.naver.com/overseas/GB186216/country/prepare#hentrance");
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
                <h2 class="section__title about__title"><b>영국</b></h2>
                <p class="about__description">한때 해가 지지 않는 나라라 불릴 만큼 막강했던 영국!
                    영국은 각각 고유의 색채를 자랑하는 잉글랜드, 웨일스, 스코틀랜드, 북아일랜드 4개의 지역으로 이루어져 있어 지루할 틈이 없는 매력적인 여행지입니다.
                    스톤헨지, 웨스트민스터 사원, 윈저성까지 다양한 볼거리와 즐길 거리가 기다리는 영국으로 떠나보세요.<br>
                    영국의 수도인 런던에서는 빅벤, 런던 아이, 빨간 공중전화 부스 등 상징적인 랜드마크를 찾아다니는 재미가 있어요.
                    축구의 도시이자 비틀즈의 도시, 리버풀을 방문하고 아름다운 자연경관으로 유네스코에서 세계문화유산으로 지정한 에든버러도 꼭 들러 보세요.
                    아일랜드의 모허 절벽을 따라 걸으며 대서양의 검푸른 바다와 장엄한 해안 절벽을 바라봐도 좋아요.</p>
            </div>
            <div class="experience__img grid">
                <div class="experience__overlay">
                    <img src="assets/img/uk1.jpg" alt="" class="experience__img-one"/>
                </div>

                <div class="experience__overlay">
                    <img src="assets/img/uk2.jpg" class="experience__img-two"/>
                </div>
            </div>
        </div>
    </section>
    <!--==================== 바로가기 버튼 ====================-->
    <div class="bg-2">
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="여행 정보"
                    onClick="location.href='#uk_info'"><span>여행 정보 <i class="fa-solid fa-plane"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="코로나 상황"
                    onClick="location.href='#uk_covid'"><span>코로나 상황 <i class="fa-solid fa-virus"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="날씨"
                    onClick="location.href='#uk_weather'"><span>날씨 <i class="fa-solid fa-cloud-sun"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="환율"
                    onClick="location.href='#uk_ex'"><span>환율 <i class="fa-solid fa-sack-dollar"></i></span></button>
        </div>
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="맛집"
                    onClick="location.href='#uk_rest'"><span>맛집 <i class="fa-solid fa-utensils"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="뉴스"><span>뉴스 <i class="fa-solid fa-newspaper"></i> </span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="리뷰"><span>리뷰 <i class="fa-solid fa-comment-dots"></i></span></button>
        </div>
    </div>

    <!--==================== 여행 정보 ====================-->
    <section class="about section" id="uk_info">
        <div class="about__container container gird">
            <h2 class="section__title about__title">여행 정보 <i class="fa-solid fa-plane"></i></h2>
            <div class="info_img" style="width: 40%; float: left; margin-left: -2em;">
                <div id="map"></div>
            </div>
            <div class="about__data" style="width: 55%; float: right; ">
                <ul class="about__description">
                    <li style="float: left; margin-right:0.5em">
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-plane-departure"></i>  항공</h3> <br>직항 <b>12시간</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-brands fa-cc-visa"></i>  비자</h3> <br>180일 <b>무비자</b></li>
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
                            <li class="li_box"><h3><i class="fa-solid fa-clock"></i>  시차</h3> <br>한국대비 <b>8시간 느림</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-coins"></i>  팁</h3> <br>없음 <b>10~15%</b></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!--==================== 코로나 상황 ====================-->
    <<<<<<< HEAD
    <%!  String [] arrC= new String[6];%>
    <%  Covid botC = new Covid("https://news.google.com/covid19/map?hl=ko&mid=%2Fm%2F07ssc&gl=KR&ceid=KR%3Ako");
        arrC = botC.activateBot();
    %>
    <section class="about section" >
        =======
        <section class="about section" style="margin-top: 20em;">
            >>>>>>> 271636a90c597fa65754197d04e485686cc744d2
            <div class="about__container container gird gap" id="uk_covid">
                <div class="about__data covid_parent" >
                    <h2 class="section__title about__title">코로나 상황 <i class="fa-solid fa-virus"></i></h2>
                    <ul class="covid">
                        <li>
                            <strong>신규 확진자(14일)</strong>
                        </li>
                        <ul>
                            <li>
                                <img src="<%= arrC[0]%> " class="dt3Iuf zC7z7b FS6bed" loading="lazy" alt="14일 동향 차트" aria-label="14일 동향 차트">
                            </li>
                            <li>
                                <%= arrC[4]%>
                            </li>
                        </ul>
                    </ul>
                    <ul class="covid">
                        <li>
                            <strong>신규 백신 접종자(14일)</strong>
                        </li>
                        <ul>
                            <li>
                                <img src="<%= arrC[2]%> " class="dt3Iuf krHqHb FS6bed" loading="lazy" alt="14일 동향 차트" aria-label="14일 동향 차트">
                            </li>
                            <li>
                                <%= arrC[5]%>
                            </li>
                        </ul>
                    </ul>
                    <span class="source">출처: OWID, 존스 홉킨스 대학교</span>
                    <ul class="covid" style="margin-bottom: 10vh;">
                        <h4 style="margin-bottom: 2vh"><a href="https://news.google.com/search?q=%EC%98%81%EA%B5%AD%20%EC%BD%94%EB%A1%9C%EB%82%98%20when%3A7d&hl=ko&gl=KR&ceid=KR%3Ako">최신 코로나 관련 뉴스 확인하기</a></h4>
                    </ul>
                </div>
            </div>


        </section>

        <!--==================== 날씨 정보 ====================-->
        <section class="about section" >
            <div class="about__container container gird gap" id="uk_weather">
                <h2 class="section__title about__title">날씨 정보 <i class="fa-solid fa-plane"></i></h2>
                <div class="about__data" style="width: 55%; float: left; margin-right: 1em;">
                    <ul class="about__description">
                        <li>
                            <b>여행 추천기간</b> :  6월~7월
                            <br>영국의 날씨는 변덕스럽고 봄, 가을은 한국보다 춥다. 가장 맑은 날이 많은 시기는 6,7월 맑은 날이라도 금세 비가 내리는 일이 흔하기 때문에 여행 중 가벼운 우산을 가지고 다니거나 모자가 달린 옷을 준비하는 것이 좋다.
                        </li>
                        <li>
                            <b>추천 옷차림</b> : 봄, 가을은 한국보다 춥고 겨울에는 기온이 영하로 떨어지지는 않지만 바람이 많이 불어 체감온도가 낮다. 전반적으로 우리나라보다 따뜻한 옷을 챙겨가는 것이 좋다.
                        </li>
                    </ul>
                    <canvas class="line_chart" id="line-chart_uk" ></canvas>
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
        sale = bot1.activateBot(7);
      %>
        <section class="about section" >
            <div class="about__container container gird gap" id="uk_ex">
                <h2 class="section__title about__title"><span>환율 <i class="fa-solid fa-sack-dollar"></i></span></h2>
                <table class="tg">
                    <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="영국 EUR" width="1" height="1">영국 ERU</th>
                    <th rowspan="2" align=center style="padding: 0 10vw 0;"><i class="fa-solid fa-arrows-rotate"></i></th>
                    <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="대한민국 KRW" width="1" height="1">대한민국 KRW</th>

                    <tr>
                        <td class="tg-0pky" colspan="4">1 파운드</td>
                        <!-- 환율 정보 입력 -->
                        <td class="tg-0pky" colspan="4"><%= sale%> 원</td>
                    </tr>
                </table>
            </div>
        </section>
        <section class="gap"></section>

        <!--==================== 맛집 ====================-->
            <%!  String [] arrR= new String[21];%>
            <%  Restaurant botR = new Restaurant("https://www.yelp.com/search?cflt=restaurants&find_loc=London");
        arrR = botR.activateBot();
    %>
        <section class="place section" id="place">
            <div class="about__container container gird gap" id="uk_rest">
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
<script src="assets/js/chart/uk_chart.js"></script>
<script src="assets/js/map/uk_map.js"></script>
<script src="assets/js/weather/uk_weather.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWNwND17k49S529e1b23yG20JexwvWPKs&callback=initMap&v=weekly" defer></script>
</body>
</html>
