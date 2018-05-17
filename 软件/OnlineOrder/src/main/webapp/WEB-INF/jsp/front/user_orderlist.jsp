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
            <li><i></i><a href="user_center.html">用户中心首页</a></li>
            <li><i></i><a href="user_orderlist.html">我的订单</a></li>
            <li><i></i><a href="user_address.html">收货地址</a></li>
            <li><i></i><a href="user_message.html">我的留言</a></li>
            <li><i></i><a href="user_coupon.html">我的优惠券</a></li>
            <li><i></i><a href="user_favorites.html">我的收藏</a></li>
            <li><i></i><a href="user_account.html">账户管理</a></li>
            <li><i></i><a href="#">安全退出</a></li>
        </ul>
    </nav>
    <article class="U-article Overflow">
        <!--user order list-->
        <section>
            <table class="Myorder">
                <th class="Font14 FontW">订单编号</th>
                <th class="Font14 FontW">下单时间</th>
                <th class="Font14 FontW">收件人</th>
                <th class="Font14 FontW">订单总金额</th>
                <th class="Font14 FontW">订单状态</th>
                <th class="Font14 FontW">操作</th>

                <%--<td class="FontW"><a href="user_orderdetail.html">201409225367</a></td>
                <td>2014-09-22 19:21:38</td>
                <td>DeathGhost</td>
                <td>￥328.00</td>
                <td>未付款,未发货</td>
                <td><a href="#">取消订单</a> | <a href="#">付款</a></td>--%>
                <c:forEach items="${userOrderDtoList}" var="order" varStatus="status">
                    <tr  <c:if test="${status.index % 2 != 0 }">style='background-color:#ECF6EE;'</c:if>>
                        <td class="FontW"><a href="user_orderdetail.html?orderid=${order.orderId}">${order.orderId}</a></td>
                        <td>${order.createTime}</td>
                        <td>${order.consignee}</td>
                        <td>${order.orderPrice}</td>
                        <td>${order.orderStatus}</td>

                        <c:if test="${order.statusCode < 1 }">
                            <%--TODO:完成取消订单--%>
                            <td><a href="javascript:cancelOrder('${order.orderId }')">取消订单</a> | <a href="#">付款</a></td>
                        </c:if>
                        <c:if test="${order.statusCode > 1 }">
                            <td><a href="user_orderdetail.html?orderid=${order.orderId}">查看详情</a></td>
                        </c:if>

                    </tr>
                </c:forEach>
            </table>
            <div class="TurnPage">
                <a href="#">
                    <span class="Prev"><i></i>首页</span>
                </a>
                <a href="#"><span class="PNumber">1</span></a>
                <a href="#"><span class="PNumber">2</span></a>
                <a href="#">
                    <span class="Next">最后一页<i></i></span>
                </a>
            </div>
        </section>
    </article>
</section>
<!--End content-->
<div class="F-link">
</div>
<%@include file="footer.jsp"%>
</body>
</html>
