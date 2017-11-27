
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <title>Community</title>
    <link rel="icon" href="/image/kek.bmp">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="boot/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="../../../../fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../boot/css/bootstrap.css">
    <link rel="stylesheet" href="../css/dopstyle.css" media="screen">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../../assets/js/html5shiv.js"></script>
    <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="container border-container">
    <div class="row">

        <div class=" col-lg-12 head-block">
            <h1></h1>
        </div>
        <div class=" col-lg-7 left-sidebar">
            <div class="col-lg-12  hello">
                <h3>Вітаємо </h3>
                <a>Community - це універсальний засіб для комунікації і пошуку людей,які оточують вас.</a>
                <h3>Реєстрація</h3>

                <form:form  action="/save" method="post" modelAttribute="user">
                <div class="reggg">
                    <label>Введіть ваш e-mail:<br>
                        <form:input class="email"  path="email"  required="required"   type="email"/>
                    </label>
                    <br>
                    <label>Введіть ваше імя:<br>
                        <form:input class="name"  path="name"   required="required"    type="text" />
                    </label>
                    <br>
                    <label>Введіть ваше прізвище:<br>
                        <form:input class="lastName"  path="lastName"  required = "required"     type="text"/>
                    </label>
                    <label>Виберіть країну народження:<br>

                        <form:select  path="userCountry">
                            <c:forEach items ="${country}" var = "country">
                                <option value="${country.id}">${country.nameCountry}</option>
                            </c:forEach>
                        </form:select>
                    </label>
                    <br>
                    <script>
                        window.addEventListener("load",function(){
                            document.getElementById("regBtn").addEventListener("click",function(){
                                var inp1 = document.getElementById("pas1"), inp2 = document.getElementById("pas2");
                                if(inp1.value!=inp2.value){
                                    alert("Пароли не совпадают")
                                    inp1.value = "";
                                    inp2.value = "";
                                }
                            });
                        })
                    </script>

                    <label>Введіть пароль:<br>
                        <form:input class="pass" id="pas1"  path="password"       type="password" required = "required"/>
                    </label>
                    <br>
                    <label>Повторіть пароль:<br>
                        <input class="pass2"     id="pas2"  type="password"       required = "required">
                    </label>

                    <br>

                    <button class="zReg" id="regBtn">Зареєструватись</button>


                </div>
                </form:form>

                <h3>В чому допоможе "Community"?</h3><br>
                <a> • Знайти людей з якими ви колись вчились/працювали.</a><br>
                <a> • Дізнатись більше про людей,що вас оточують.</a><br>
                <a> • Завжди залишатись на звязку з тими хто вам дорогий.</a>
            </div>
        </div>
        <div class="col-md-6 col-sm-4 col-lg-4 right-sidebar">
            <h2>Вхід</h2>
            <form:form action="loginprocesing" method="POST" >
            <label class="e-mailLog">Ваш e-mail :<br>

                <input class="inEMAIL" path="email" name="email" type="email" required><br>

            </label>
            <label class="passLog">Ваш пароль :<br>

                <input class="inPASS" path = "password" name="password" type=password required><br>

            </label>
            <br>
            <button class="in" type="submit" >
                Вхід
            </button>
            </form:form>
            <p class="oops"><a href="">Забули пароль?</a></p>
        </div>
        <div class=" col-lg-7 footer">
            <a href="#">Про сайт</a>
            <a href="#">Допомога</a>
            <a href="#">Правила</a>
            <a href="#">Реклама</a>
            <a href="#">Розробнику</a>
        </div>
        <a class="col-md-3 col-sm-3 col-lg-3 about">Community © 2017-2017</a>
    </div>



</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="//code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../../../js/bootstrap.min.js"></script>
</body>

</html>
