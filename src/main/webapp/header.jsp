<%--
  Created by IntelliJ IDEA.
  User: SeoMinjung
  Date: 2022-05-31
  Time: 오후 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<header class="header" id="header">
    <nav class="nav container">
        <a href="index.jsp" class="nav__logo">Gat-i Gaja</a>

        <div class="nav__menu" id="nav-menu">
            <ul class="nav__list">
                <li class="nav__item">
                    <a href="UK.jsp" class="nav__link">UK</a>
                </li>
                <li class="nav__item">
                    <a href="France.jsp" class="nav__link">France</a>
                </li>
                <li class="nav__item">
                    <a href="Arab.jsp" class="nav__link">Arab</a>
                </li>
                <li class="nav__item">
                    <a href="PHL.jsp" class="nav__link">Philippines</a>
                </li>
                <li class="nav__item">
                    <a href="Australia.jsp" class="nav__link">Australia</a>
                </li>
                <li class="nav__item">
                    <a href="USA.jsp" class="nav__link">USA</a>
                </li>
            </ul>

            <div class="nav__dark">
                <!-- Theme change button -->
                <span class="change-theme-name">Dark mode</span>
                <i class="ri-moon-line change-theme" id="theme-button"></i>
            </div>

            <i class="ri-close-line nav__close" id="nav-close"></i>
        </div>

        <div class="nav__toggle" id="nav-toggle">
            <i class="ri-function-line"></i>
        </div>
    </nav>
</header>
</body>
</html>
