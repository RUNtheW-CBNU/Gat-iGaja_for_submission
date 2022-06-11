
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        <link rel="stylesheet" href="assets/css/news.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>ArabNews</title>
    </head>
</head>
<body>
<jsp:include page="newsheader.jsp"></jsp:include>
<main class="main">
    <!--==================== HOME ====================-->
    <section class="home" id="home">
        <img src="assets/img/news_main.jpg" alt="" class="home__img">

        <div class="home__container container grid">
            <div class="home__data">
                <span class="home__data-subtitle">COVID-19</span>
                <h1 class="home__data-title">Explore The <br> World <b>NEWS</b></h1>
            </div>
        </div>
    </section>

    <!--==================== ABOUT ====================-->
    <section class="about section" id="about">
        <form class="d-flex">
            <input class="form-control me-2" type="text" id="newsQuery" placeholder="Search news">
            <button class="btn btn-outline-warning" type="button" id="searchBtn">Search</button>
        </form>
        <br>
        <div class="wrapper">
            <div class="row m-3" id="newsType"></div>
            <div class="row me-2 ms-2" id="newsdetails"></div>
        </div>
    </section>
</main>
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
<script src="assets/js/news/arab_news.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
