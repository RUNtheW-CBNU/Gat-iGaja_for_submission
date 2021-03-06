<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="crawling.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--=============== FAVICON ===============-->
    <link rel="shortcut icon" href="../../../../../Downloads/runtheW/assets/img/favicon.png" type="image/png">

    <!--=============== REMIXICONS (nav ๊น๋นก ๋์) ===============-->
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
    <title>Arab</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<main class="main">
    <!--==================== HOME ====================-->
    <section class="home" id="home">
        <img src="assets/img/arab_main.jpg" alt="Arab" class="each_home__img arb">

        <div class="each_home__container container grid">
            <div class="home__data">
                <span class="home__data-subtitle">Let's go to</span>
                <h1 class="home__data-title"><b>United Arab Emirates</b></h1>
                <a href="https://tcaabudhabi.ae/en/default.aspx" target="_blank" class="button" title="์๋์๋ฏธ๋ฆฌํธ ๊ด๊ด์ฒญ์ผ๋ก ์ด๋ํฉ๋๋ค.">Explore</a>
            </div>
        </div>
    </section>

    <!--==================== ์๊ตญ์?๋ณด ====================-->
    <%!  String [] arrT= new String[5];%>
    <%  TravelInfo botT = new TravelInfo("https://travel.naver.com/overseas/AE294012/country/prepare#hentrance");
        arrT = botT.activateBot();
    %>
    <section>
        <ul class="entry_info">
            <li>
                <div class="condition">์๊ตญ๊ฐ๋ฅ์ฌ๋ถ</div>
                <div class="result"><%= arrT[0]%> </div>
            </li>
            <li>
                <div class="condition">๋ฐฑ์?ํ์์ฌ๋ถ</div>
                <div class="result"><%= arrT[1]%> </div>
            </li>
            <li>
                <div class="condition">์ฌํ์ง๊ฒฉ๋ฆฌ์ฌ๋ถ</div>
                <div class="result"><%= arrT[2]%> </div>
            </li>
            <li>
                <div class="condition">ํ๊ตญ ๊ท๊ตญ์</div>
                <div class="result2"><span>[๋ฐฑ์? ์?์ข์] </span><%= arrT[3]%><br>
                    <span>[๋ฐฑ์? ๋ฏธ์?์ข์] </span> <%= arrT[4]%></div>
            </li>
        </ul>
    </section>

    <!--==================== ๋๋ผ ์๊ฐ ====================-->
    <section>
        <div class="about__container container grid country_info">
            <div class="about__data">
                <h2 class="section__title about__title"><b>์๋์๋ฏธ๋ฆฌํธ</b></h2>
                <p class="about__description">์๋์๋ฏธ๋ฆฌํธ ํ๋ฉด ๋จธ๋ฆฟ์์ ๋?์ค๋ฅด๋ ๋ ๊ฐ์ง!
                    ๋ฐ๋ก ๋๋ฐ์ด์ ์ธ๊ณ ์ด๊ณ?์ธต ๋ง์ฒ๋ฃจ ๋ถ๋ฅด์ธ? ํ?๋ฆฌํ์ ๊ตญ์? ์๋์ฐจ ๊ฒฝ์ฃผ๋ํ F-1์ด ํผ์ณ์ง๋ ๊ดํํ ์ฌ๋ง์ด์ฃ?.
                    ํ์ง๋ง, ์ด์ธ์๋ ํ๋ฅด์์๋ง ์ฐ์๊ตญ๊ฐ์ธ ์๋์๋ฏธ๋ฆฌํธ๊ฐ ์ต๊ทผ ์ธ๊ธฐ ์ฌํ์ง๋ก ๊ธ๋ถ์ํ ๋ฐ๋ ๋ค ์ด์?๊ฐ ์์ต๋๋ค.
                    ๋๋ฐ์ด์ ์ธ์?ํด ์๋ ์ค๋ฅด์์์๋ ๊ธ์๋ณด์ ์์?์ธ ๋ธ๋ฃจ ์ํฌ์์ ๋์ด ํ๋ฅ๊ทธ๋?์ง ๋งํผ ํ๋?คํ ๊ท๊ธ์์ ๊ตฌ๊ฒฝํ๊ณ? ๊ธฐ๋ํ์ ์ผํํ? ์ ์์ด์. <br>
                    ํ์ ๋ชจ๋์ฌ์ฅ์ผ๋ก ์?๋ชํ ํธ์์ด๋ผ์ ๋ฐ๋ค์๋ ์๋ก๋ฌ๋กํ ์๊น์ ๋ฝ๋ด๋ ์ฐํธ์ด์ ๋ค์ํ ํด์ ์๋ฌผ๋ค์ด ๋ง์ด ์ด๊ณ? ์์ด ์ค๋ธํด๋ง์ด๋ ์ค์ฟ?๋ฒ ๋ค์ด๋น์ ์ฆ๊ธฐ๊ธฐ์ ์ข์ต๋๋ค.
                    18์ธ๊ธฐ ๊ณ?๋ ์์๋ฅผ ๊ฐ์กฐํด ๋ง๋? ์์ง๋ง ๋ฐ๋ฌผ๊ด์ด๋, ์ธ๊ณ์์ ๊ฐ์ฅ ๊ท๋ชจ๊ฐ ํฐ ์ํฐํํฌ์ธ ์ ์์นด์ด์์ธ์ ๋๋ฆผ๋๋ ์์ฟ?์ํํฌ๋ ์๋์๋ฏธ๋ฆฌํธ๋ฅผ ์ฌํํ๋ฉฐ ๋ฐฉ๋ฌธํด ๋ณด์๊ธฐ๋ฅผ ์ถ์ฒํฉ๋๋ค.
                    7๊ฐ์ ํ?ํ๊ตญ์ผ๋ก ์ด๋ฃจ์ด์?ธ ๋์ฑ๋ ๋ค์ฑ๋กญ๊ณ? ์?๋น๋ก์ด ๋ชจํ์ด ๊ธฐ๋๋๋ ์๋์๋ฏธ๋ฆฌํธ๋ก ๋?๋๋ณด์ธ์!</p>
            </div>
            <div class="experience__img grid">
                <div class="experience__overlay">
                    <img src="assets/img/arab1.jpg" alt="" class="experience__img-one"/>
                </div>

                <div class="experience__overlay">
                    <img src="assets/img/arab2.jpg" class="experience__img-two"/>
                </div>
            </div>
        </div>
    </section>
    <!--==================== ๋ฐ๋ก๊ฐ๊ธฐ ๋ฒํผ ====================-->
    <div class="bg-2">
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="์ฌํ ์?๋ณด"
                    onClick="location.href='#arb_info'"><span>์ฌํ ์?๋ณด <i class="fa-solid fa-plane"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="์ฝ๋ก๋ ์ํฉ"
                    onClick="location.href='#arb_covid'"><span>์ฝ๋ก๋ ์ํฉ <i class="fa-solid fa-virus"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋?์จ"
                    onClick="location.href='#arb_weather'"><span>๋?์จ <i class="fa-solid fa-cloud-sun"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="ํ์จ"
                    onClick="location.href='#arb_ex'"><span>ํ์จ <i class="fa-solid fa-sack-dollar"></i></span></button>
        </div>
        <div class="box">
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋ง์ง"
                    onClick="location.href='#arb_rest'"><span>๋ง์ง <i class="fa-solid fa-utensils"></i></span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋ด์ค"
                    onClick="location.href='NEWS_ARAB.jsp'"><span>๋ด์ค <i class="fa-solid fa-newspaper"></i> </span></button>
            <button class="button1 button--winona button--border-thick button--round-l button--text-upper button--text-thick" data-text="๋ฆฌ๋ทฐ"><span>๋ฆฌ๋ทฐ <i class="fa-solid fa-comment-dots"></i></span></button>
        </div>
    </div>

    <!--==================== ์ฌํ ์?๋ณด ====================-->
    <section class="about section" id="arb_info">
        <div class="about__container container gird">
            <h2 class="section__title about__title">์ฌํ ์?๋ณด <i class="fa-solid fa-plane"></i></h2>
            <div class="info_img" style="width: 40%; float: left; margin-left: -2em;">
                <div id="map"></div>
            </div>
            <div class="about__data" style="width: 55%; float: right; ">
                <ul class="about__description">
                    <li style="float: left; margin-right:0.5em">
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-plane-departure"></i>  ํญ๊ณต</h3> <br>์งํญ <b>10์๊ฐ</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-brands fa-cc-visa"></i>  ๋น์</h3> <br>90์ผ <b>๋ฌด๋น์</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-plug"></i>  ์?์</h3> <br>50hz <b>230V</b></li>
                        </ul>
                    </li>
                    <li style="float: left">
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-language"></i>  ์ธ์ด</h3> <br> <b>์๋์ด, ์์ด</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-clock"></i>  ์์ฐจ</h3> <br>ํ๊ตญ๋๋น <b>5์๊ฐ ๋๋ฆผ</b></li>
                        </ul>
                        <ul class="ul_box border_rounded">
                            <li class="li_box"><h3><i class="fa-solid fa-coins"></i>  ํ</h3> <br>์์ <b>10%</b></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!--==================== ์ฝ๋ก๋ ์ํฉ ====================-->
    <%!  String [] arrC= new String[6];%>
    <%  Covid botC = new Covid("https://news.google.com/covid19/map?hl=ko&mid=%2Fm%2F0j1z8&gl=KR&ceid=KR%3Ako");
        arrC = botC.activateBot();
    %>
    <section class="about section" style="margin-top: 20em;">
        <div class="about__container container gird gap" id="arb_covid">
            <div class="about__data covid_parent" >
                <h2 class="section__title about__title">์ฝ๋ก๋ ์ํฉ <i class="fa-solid fa-virus"></i></h2>
                <ul class="covid">
                    <li>
                        <strong>์?๊ท ํ์ง์(14์ผ)</strong>
                    </li>
                    <ul>
                        <li>
                            <img src="<%= arrC[0]%> " class="dt3Iuf zC7z7b FS6bed" loading="lazy" alt="14์ผ ๋ํฅ ์ฐจํธ" aria-label="14์ผ ๋ํฅ ์ฐจํธ">
                        </li>
                        <li>
                            <%= arrC[4]%>
                        </li>
                    </ul>
                </ul>
                <ul class="covid">
                    <li>
                        <strong>์?๊ท ๋ฐฑ์? ์?์ข์(14์ผ)</strong>
                    </li>
                    <ul>
                        <li>
                            <img src="<%= arrC[2]%>" class="dt3Iuf krHqHb FS6bed" loading="lazy" alt="14์ผ ๋ํฅ ์ฐจํธ" aria-label="14์ผ ๋ํฅ ์ฐจํธ">
                        </li>
                        <li>
                            <%= arrC[5]%>
                        </li>
                    </ul>
                </ul>
                <span class="source">์ถ์ฒ: OWID, ์กด์ค ํํจ์ค ๋ํ๊ต</span>
                <ul class="covid" style="margin-bottom: 10vh;">
                    <h4 style="margin-bottom: 2vh"><a href="https://news.google.com/search?q=%EC%95%84%EB%9E%8D%20%EC%97%90%EB%AF%B8%EB%A6%AC%ED%8A%B8%20%EC%BD%94%EB%A1%9C%EB%82%98%20when%3A7d&hl=ko&gl=KR&ceid=KR%3Ako">์ต์? ์ฝ๋ก๋ ๊ด๋?จ ๋ด์ค ํ์ธํ๊ธฐ</a></h4>
                </ul>
            </div>
        </div>
    </section>

    <!--==================== ๋?์จ ์?๋ณด ====================-->
    <section class="about section" >
        <div class="about__container container gird gap" id="arb_weather">
            <h2 class="section__title about__title">๋?์จ ์?๋ณด <i class="fa-solid fa-plane"></i></h2>
            <div class="about__data" style="width: 55%; float: left; margin-right: 1em;">
                <ul class="about__description">
                    <li>
                        <b>์ฌํ ์ถ์ฒ๊ธฐ๊ฐ</b> :  11์~3์
                        <br>๋ฆ๊ฐ์๋ถํฐ ์ด๋ด๊น์ง๋ ํ๊ตญ์ ๋ด๊ฐ์ ๊ฐ์ ๋?์จ๋ก ์?์?ํ๋ค. ํฉ์ฌ๊ฐ ๊ฐํ 3~4์๊ณผ ์ต๋๊ฐ ๋์ 6~8์์ ์?์ธํ๋ฉด, ์จ๋๊ฐ ๋๋๋ผ๋ ๊ฑด์กฐํ๊ธฐ ๋๋ฌธ์ ๋ถ์พ์ง์๊ฐ ๋์ง๋ ์๋ค. ํนํ 11์๋ถํฐ 3์๊น์ง๋ ์?์?ํ ๋ฐ๋์ด ๋ถ์ด ์ฌํํ๊ธฐ ์?ํฉํ ๋?์จ๋ค.<br><br>
                    </li>
                    <li>
                        <b>์ถ์ฒ ์ท์ฐจ๋ฆผ</b> : ์ค๋ด์์๋ 24์๊ฐ ์์ด์ปจ์ด ๊ฐ๋๋๋ฏ๋ก ๊ฐ๋๊ฑด ๋ฑ์ ๊ผญ ์ฑ๊ฒจ๊ฐ๋ ๊ฒ์ด ์ข๋ค. ํ๊ฒจ์ธ์๋ ์ต์? ์จ๋๊ฐ ์ฝ 15๋๊น์ง ๋ด๋?ค๊ฐ๋ฉฐ, ์ผ๊ต์ฐจ๊ฐ ํฌ๊ธฐ ๋๋ฌธ์ ๊ฐ๋๊ฑด ๋๋ ๋ฐ๋๋ง์ด๋ฅผ ์ค๋นํ? ๊ฒ์ ์ถ์ฒํ๋ค.
                    </li>
                </ul>
                <canvas class="line_chart" id="line-chart_arb" ></canvas>
            </div>
            <div class="info_img" style="width: 40%; float: right;">
                <!-- ๋?์จ api container์ ๋ฐ์์ด -->
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
    <!--==================== ํ์จ ====================-->
    <%!  String sale="";%>
    <%  Exchange_Rate bot1 = new Exchange_Rate("https://finance.naver.com/marketindex/exchangeList.naver");
    sale = bot1.activateBot(24);
    %>
    <section class="about section" >
        <div class="about__container container gird gap" id="arb_ex">
            <h2 class="section__title about__title"><span>ํ์จ <i class="fa-solid fa-sack-dollar"></i></span></h2>
            <table class="tg">
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="์๋์๋ฏธ๋ฆฌํธ AED" width="1" height="1">์๋์๋ฏธ๋ฆฌํธ AED </th>
                <th rowspan="2" align=center style="padding: 0 10vw 0;"><i class="fa-solid fa-arrows-rotate"></i></th>
                <th class="tg-0pky" colspan="4"><img src="https://ssl.pstatic.net/sstatic/keypage/image/direct/img_blank.gif" class="_img" alt="๋ํ๋ฏผ๊ตญ KRW" width="1" height="1">๋ํ๋ฏผ๊ตญ KRW</th>

                <tr>
                    <td class="tg-0pky" colspan="4">1 ๋๋ฅดํจ</td>
                    <!-- ํ์จ ์?๋ณด ์๋?ฅ -->
                    <td class="tg-0pky" colspan="4"><%= sale%> ์</td>
                </tr>
            </table>
        </div>
    </section>
    <section class="gap"></section>

    <!--==================== ๋ง์ง ====================-->
    <%!  String [] arrR= new String[21];%>
    <%  Restaurant botR = new Restaurant("https://www.yelp.com/search?find_desc=Restaurants&find_loc=Manila");
    arrR = botR.activateBot();
    %>
    <%!  String [] arrA= new String[21];%>
    <%  RestaurantUAE botA = new RestaurantUAE("https://www.tripadvisor.com/Tourism-g295424-Dubai_Emirate_of_Dubai-Vacations.html");
    arrA = botA.activateBot();
    %>
    <section class="place section" id="place" style="margin-bottom: 20em;">
        <div class="about__container container gird gap" id="arb_rest">
            <h2 class="section__title about__title">๋ง์ง <i class="fa-solid fa-utensils"></i></h2>

            <div class="place__container container grid">
                <!------๋ง์ง1------>
                <div class="place__card">
                    <img src="<%= arrR[10]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 style="margin-top: 7em; color:white;"><%= arrA[0]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[11]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;" ><%= arrA[1]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[12]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrA[2]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[13]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrA[3]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[14]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title" style="margin-top: 7em;"><%= arrA[4]%></h3>
                        </div>
                    </div>
                </div>

                <div class="place__card">
                    <img src="<%= arrR[15]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrA[5]%></h3>
                        </div>
                    </div>
                </div>
                <div class="place__card">
                    <img src="<%= arrR[16]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrA[6]%></h3>
                        </div>
                    </div>
                </div>
                <div class="place__card">
                    <img src="<%= arrR[17]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrA[7]%></h3>
                        </div>
                    </div>
                </div>
                <div class="place__card">
                    <img src="<%= arrR[18]%>" alt="" class="place__img">
                    <div class="place__content">
                        <div class="place__data">
                            <h3 class="place__title"  style="margin-top: 7em;"><%= arrA[8]%></h3>
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
<script src="assets/js/chart/arb_chart.js"></script>
<script src="assets/js/map/arab_map.js"></script>
<script src="assets/js/weather/arab_weather.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWNwND17k49S529e1b23yG20JexwvWPKs&callback=initMap&v=weekly" defer></script>
</body>
</html>
