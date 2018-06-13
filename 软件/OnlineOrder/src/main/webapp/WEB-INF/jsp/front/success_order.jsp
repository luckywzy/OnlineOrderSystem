<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>确认订单</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/order.js"></script>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>
</head>
<body>
<%@include file="topnav.jsp"%>
<section class="Psection MT20 Textcenter" id="Aflow">
    <!-- 订单提交成功后则显示如下 -->
    <p class="Font14 Lineheight35 FontW">恭喜你！订单提交成功！</p>
    <p class="Font14 Lineheight35 FontW">您的订单编号为：<span class="CorRed">${orderId}</span></p>
    <p class="Font14 Lineheight35 FontW">共计金额：<span class="CorRed">￥${orderPrice}</span></p>
    <p>
        <%--<button type="button" class="Lineheight35"><a href="#" target="_blank" disabled="true">支付宝立即支付</a></button>--%>
        <button type="button" class="Lineheight35"><a href="#" target="_blank">线下支付</a></button>
        <button type="button" class="Lineheight35"><a href="/user/user_center.html">进入用户中心</a></button>
    </p>
</section>
<!--End content-->
<div class="F-link">

</div>
<%@include file="footer.jsp"%>
</body>
</html>
