<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>不错哦订餐-注册</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>
</head>
<body>
<%@include file="topnav.jsp" %>
<!--Start content-->
<section class="Psection MT20">
    <form id="registerForm" <%--action="/register.do"--%> method="post">
        <table class="Register">
            <tr>
                <td width="40%" align="right" class="FontW">用户名：</td>
                <td><input type="text" id="username" name="username" required autofocus></td>
            </tr>
            <tr>
                <td width="40%" align="right" class="FontW">密码：</td>
                <td><input type="password" id="password" name="password" required></td>
            </tr>
            <tr>
                <td width="40%" align="right" class="FontW">再次确认：</td>
                <td><input type="password" id="passwordConfirm" name="passwordConfirm" required></td>
            </tr>
            <tr>
                <td width="40%" align="right" class="FontW">电子邮件：</td>
                <td><input type="email" id="email" name="email" pattern="^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$" required></td>
            </tr>
            <tr>
                <td width="40%" align="right" class="FontW">手机号码：</td>
                <td><input type="text" id="phone_num" name="phone_num" required pattern="[0-9]{11}"></td>
            </tr>
            <tr>
                <td width="40%" align="right"></td>
                <td><input type="button" name="" class="Submit_b" onclick="registerSub()" value="注  册"></td>
            </tr>
        </table>
    </form>
</section>

<%@include file="footer.jsp" %>
</body>
</html>
