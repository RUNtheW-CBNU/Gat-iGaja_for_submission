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
    <title>France</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<main class="main">
    <!--==================== HOME ====================-->
    <section class="home" id="home">
        <img src="assets/img/france_main.jpg" alt="france" class="each_home__img f">

        <div class="each_home__container container grid">
            <div class="home__data">
                <span class="home__data-subtitle">Let's go to</span>
                <h1 class="home__data-title"><b>France</b></h1>
                <a href="https://kr.france.fr/ko" target="_blank" class="button" title=" 프랑스 관광청으로 이동합니다.">Explore</a>
            </div>
        </div>
    </section>

    <!--==================== 입국정보 ====================-->
    <%!  String [] arrT= new String[5];%>
    <%  TravelInfo botT = new TravelInfo("https://travel.naver.com/overseas/FR187070/country/prepare#hentrance\n");
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
                <h2 class="section__title about__title"><b>프랑스</b></h2>
                <p class="about__description">"프랑스는 서유럽에서 가장 큰 국가이고 정말 다양한 여행지가 있어요. 3,000km가 넘는 해안선, 3개의 주요 산맥, 150,000제곱킬로미터의 숲 등 다양한 자연 풍경을 선택할 수 있어요.
                    나라의 길고 풍부한 역사가 남긴 많은 성과 요새 도시가 있어서 중세 기사 시대로 여행을 떠날 수 있죠.<br>
                    역사와 지리 외에도 프랑스는 특히 요리로 유명해요. 지역마다 마르세유 해산물 부야베스나 푸짐한 부르고뉴의 스튜 요리인 코코뱅처럼 맛있는 특선 요리가 있어요. 프랑스 치즈와 와인은 특히 유명하죠.
                    또한 파리에서는 예술과 우아한 패션을 탐험할 수 있어요. 훌륭한 교통 네트워크를 갖추고 있어서 대도시의 고급스런 럭셔리함과 세련미부터 전원의 소박한 매력까지 쉽게 이동하며 즐길 수 있어요.
                    파리의 로맨틱한 주말, 리옹의 맛집 탐방, 프렌치 리비에라의 해변 휴양지, 발 디제르의 스키 여행 등 기분에 따라 다양하게 선택해보세요.</p>
            </div>
            <div class="experience__img grid">
                <div class="experience__overlay">
                    <img src="assets/img/france1.jpg" alt="" class="experience__img-one"/>
                </div>

                <div class="experience__overlay">
                    <img src="assets/img/france2.jpg" class="experience__img-two"/>
                </div>
            </div>
        </div>
    </section>
    <!--==================== 바로가기 버튼 ====================-->
    <div class="bg-2">
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="여행 정보"
                    onClick="location.href='#f_info'"><span>여행 정보 <i class="fa-solid fa-plane"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="코로나 상황"
                    onClick="location.href='#f_covid'"><span>코로나 상황 <i class="fa-solid fa-virus"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="날씨"
                    onClick="location.href='#f_weather'"><span>날씨 <i class="fa-solid fa-cloud-sun"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="환율"
                    onClick="location.href='#f_ex'"><span>환율 <i class="fa-solid fa-sack-dollar"></i></span></button>
        </div>
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="맛집"
                    onClick="location.href='#f_rest'"><span>맛집 <i class="fa-solid fa-utensils"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="뉴스"
                    onClick="location.href='NEWS_FR.jsp'"><span>뉴스 <i class="fa-solid fa-newspaper"></i> </span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="리뷰"><span>리뷰 <i class="fa-solid fa-comment-dots"></i></span></button>
        </div>
    </div>

    <!--==================== 여행 정보 ====================-->
    <section class="about section" id="f_info">
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
                            <li class="li_box"><h3><i class="fa-brands fa-cc-visa"></i>  비자</h3> <br>90일 <b>무비자</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-plug"></i>  전압</h3> <br>50hz <b>230V</b></li>
                        </ul>
                    </li>
                    <li style="float: left">
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-language"></i>  언어</h3> <br> <b>프랑스어</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-clock"></i>  시차</h3> <br>한국대비 <b>7시간 느림</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-coins"></i>  팁</h3> <br>있음 <b>10~15%</b></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!--==================== 코로나 상황 ====================-->
    <%!  String [] arrC= new String[6];%>
    <%  Covid botC = new Covid("https://news.google.com/covid19/map?hl=ko&mid=%2Fm%2F0f8l9c&gl=KR&ceid=KR%3Ako");
        arrC = botC.activateBot();
    %>
    <!---스크래핑 정보 필요-->
    <section class="about section" style="margin-top: 20em;">
        <div class="about__container container gird gap" id="f_covid">
            <div class="about__data covid_parent" >
                <h2 class="section__title about__title">코로나 상황 <i class="fa-solid fa-virus"></i></h2>
                <ul class="covid">
                    <li>
                        <strong>신규 확진자(14일)</strong>
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
                        <strong>신규 백신 접종자(14일)</strong>
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
                    <h4 style="margin-bottom: 2vh"><a href="https://news.google.com/search?q=%ED%94%84%EB%9E%91%EC%8A%A4%20%EC%BD%94%EB%A1%9C%EB%82%98%20when%3A7d&hl=ko&gl=KR&ceid=KR%3Ako">최신 코로나 관련 뉴스 확인하기 [click!]
                    </a></h4>
                </ul>
            </div>
        </div>


    </section>

    <!--==================== 날씨 정보 ====================-->
    <section class="about section" >
        <div class="about__container container gird gap" id="f_weather">
            <h2 class="section__title about__title">날씨 정보 <i class="fa-solid fa-plane"></i></h2>
            <div class="about__data" style="width: 55%; float: left; margin-right: 1em;">
                <ul class="about__description">
                    <li>
                        <b>여행 추천기간</b> :  4월~5월 / 9~10월 <br>
                        <br>봄과 가을이 우리에게 가장 친숙한 날씨이다. 다만 일교차가 크니 얇은 겉옷은 항상 챙기도록 하자. 연평균 기온은 11.3도. 가장 더운 달은 7월로 평균 20도, 가장 추운 달은 1월로 5도 정도 된다. 연중 강우량이 높으며 비가 오는 날에도 건조한 편. 겨울에는 온도가 0도 이하로 내려가거나 눈이 내리는 날은 드물다.<br>
                    </li>
                    <li>
                        <b>추천 옷차림</b> : 실시간 날씨 체크가 중요하다. 봄이나 가을에는 여름처럼 덥다가도 다음날 온도가 10도 이상 떨어져 두꺼운 재킷이 필요할 때도 있고, 여름에도 비가 오면 제법 쌀쌀해져 얇은 재킷이 필요할 수도. 일교차도 큰 편이니 최저기온과 최고기온을 함께 확인 하자.
                    </li>
                </ul>
                <canvas class="line_chart" id="line-chart_f" ></canvas>
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
        sale = bot1.activateBot(2);
    %>
    <section class="about section bg" >
        <div class="about__container container gird gap" id="f_ex">
            <h2 class="section__title about__title"><span>환율 <i class="fa-solid fa-sack-dollar"></i></span></h2>
            <table class="tg">
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="유럽연합 EUR" width="1" height="1">유럽연합 ERU</th>
                <th rowspan="2" align=center style="padding: 0 10vw 0;"><i class="fa-solid fa-arrows-rotate"></i></th>
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="대한민국 KRW" width="1" height="1">대한민국 KRW</th>

                <tr>
                    <td class="tg-0pky" colspan="4">1 유로</td>
                    <!-- 환율 정보 입력 -->
                    <td class="tg-0pky" colspan="4"><%= sale%>  원</td>
                </tr>
            </table>
        </div>
    </section>
    <section class="gap"></section>
    <!--==================== 맛집 ====================-->
    <%!  String [] arrR= new String[21];%>
    <%  Restaurant botR = new Restaurant("https://www.yelp.com/search?find_desc=Restaurants&find_loc=Paris%2C+France");
        arrR = botR.activateBot();
    %>
    <section class="place section" id="place"style="margin-bottom: 20em;">
        <div class="about__container container gird gap" id="f_rest">
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
<script src="assets/js/chart/f_chart.js"></script>
<script src="assets/js/map/fr_map.js"></script>
<script src="assets/js/weather/fr_weather.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWNwND17k49S529e1b23yG20JexwvWPKs&callback=initMap&v=weekly" defer></script>
</body>
</html>
