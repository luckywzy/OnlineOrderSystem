<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>用户中心</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/order.js"></script>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>

</head>
<body>
<%@include file="topnav.jsp"%>
<!--Start content-->
<section class="Psection MT20">
    <nav class="U-nav Font14 FontW">
        <ul>
            <li><i></i><a href="user_orderlist.html">我的订单</a></li>
            <li><i></i><a href="user_address.html">收货地址</a></li>
            <li><i></i><a href="user_message.html">我的留言</a></li>
            <%--<li><i></i><a href="user_coupon.html">我的优惠券</a></li>
            <li><i></i><a href="user_favorites.html">我的收藏</a></li>--%>
            <li><i></i><a href="user_account.html">账户管理</a></li>
            <li><i></i><a href="javascript:" onclick="quit()">安全退出</a></li>
        </ul>
    </nav>
    <article class="U-article Overflow">
        <!--user Coupon-->
        <section class="M-coupon Overflow">
            <span class="coupontitle Block Font14 FontW Lineheight35">我的优惠券</span>
            <ul>
                <a href="shop.html" class="Fontfff" target="_blank">
                    <li>
                        <p class="U-price FontW"><i>￥</i>20<span class="Font14 FontW">全店通用</span></p>
                        <p>发行店铺：好味来快餐店</p>
                        <p>使用条件：满299元即可使用</p>
                        <p>有效期：2014-09-21至2014-09-30</p>
                    </li>
                </a>
            </ul>
        </section>
    </article>
</section>
<!--End content-->
<div class="F-link">
</div>
<%@include file="footer.jsp"%>
</body>
</html>
