<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8"/>
    <title>不错哦订餐-登录</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="${pageContext.request.contextPath}/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>

</head>
<body>

<%@include file="topnav.jsp"%>
<!--Start content-->
<section class="Psection MT20">
    <form id="user_form"  action="/userlogin" method="post">
        <table class="login">
            <tr>
                <td width="40%" align="right" class="FontW">账号：</td>
                <td><input type="text" id="username" name="username" required autofocus placeholder="账号"></td>
            </tr>
            <tr>
                <td width="40%" align="right" class="FontW">密码：</td>
                <td><input type="password" id="password" name="password" required></td>
            </tr>

            <tr>
                <td width="40%" align="right"></td>
                <td><input type="submit" id="login_btn" value="登 录" class="Submit_b">
                    <a href="/register.html" class="Submit_b">注 册</a>
                </td>
            </tr>
        </table>
    </form>
</section>
<!--End content-->
<div class="F-link">
</div>

<%@include file="footer.jsp"%>
</body>
</html>
