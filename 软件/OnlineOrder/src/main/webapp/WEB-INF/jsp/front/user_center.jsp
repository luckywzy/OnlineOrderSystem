<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>用户中心</title>
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
    <nav class="U-nav Font14 FontW">
        <ul>
            <li><i></i><a href="/user/user_orderlist.html">我的订单</a></li>
            <li><i></i><a href="/user/user_address.html">收货地址</a></li>
            <li><i></i><a href="/user/user_message.html">我的留言</a></li>
            <li><i></i><a href="/user/user_coupon.html">我的优惠券</a></li>
            <li><i></i><a href="/user/user_favorites.html">我的收藏</a></li>
            <li><i></i><a href="/user/user_account.html">账户管理</a></li>
            <li><i></i><a href="#">安全退出</a></li>
        </ul>
    </nav>
    <article class="U-article Overflow">
        <!--"引用“user_page/user_index.html”"-->
    </article>
</section>
<!--End content-->
<div class="F-link">
   </div>
<%@include file="footer.jsp"%>
</body>
</html>
