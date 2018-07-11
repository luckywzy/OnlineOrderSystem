<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>订单详情</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/order.js"></script>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>

</head>
<body>
<%@include file="topnav.jsp" %>
<!--Start content-->
<section class="Psection MT20">
    <nav class="U-nav Font14 FontW">
        <ul>
            <li><i></i><a href="user_center.html">用户中心首页</a></li>
            <li><i></i><a href="user_orderlist.html">我的订单</a></li>
            <li><i></i><a href="user_address.html">收货地址</a></li>
            <li><i></i><a href="user_message.html">我的留言</a></li>
            <li><i></i><a href="user_account.html">账户管理</a></li>
            <li><i></i><a href="javascript:" onclick="quit()">安全退出</a></li>
        </ul>
    </nav>
    <article class="U-article Overflow">

        <span class="Font14 FontW Lineheight35 Block">订单编号：${orderId}</span>
        <span class="Font14 FontW Lineheight35 Block">订单信息：</span>
        <table class="U-order-D">
            <th>订单产品</th>
            <th>订购数量</th>
            <th>单价</th>
            <th>小计</th>
            <c:forEach items="${orderContentDtoList}" var="orderContentDto">
                <tr>
                    <td><a href="/todetailsp?itemId=${orderContentDto.itemId}" target="_blank"
                           title="${orderContentDto.itemName}">${orderContentDto.itemName}</a></td>
                    <td>${orderContentDto.cnt}</td>
                    <td>￥${orderContentDto.itemPrice}</td>
                    <td>￥${orderContentDto.total}</td>
                    <!--如果未付款，则显示立即付款按钮-->
                    <td style="display:none;"><a href="#" target="_blank">立即付款</a></td>
                </tr>
            </c:forEach>
        </table>
        <span class="Font14 FontW Lineheight35 Block">配送费用：￥${dispatchPrice}</span>
        <span class="Font14 FontW Lineheight35 Block">共计金额：￥${orderPrice}</span>
        <span class="Font14 FontW Lineheight35 Block">收件地址：${address.province} ${address.city} ${address.district} ${address.detailAddr}</span>
        <span class="Font14 FontW Lineheight35 Block">收件人：	&nbsp;&nbsp;${address.consignee}</span>
        <span class="Font14 FontW Lineheight35 Block">电话：	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${address.phoneNum}</span>
        <c:choose>
            <c:when test="${orderStatus == 2}">
        <span class="Font14 FontW Lineheight35 Block">来给个评价吧：
            <input type="text" id="access" class="input_addr" placeholder="来说说你的感受" minlength="24" maxlength="300"
                   required/>
            <input type="hidden" id="orderId" value="${orderId}"/>
            <input type="button" id="access_sub_btn" class="Submit" value="评价" onclick="access_sub()"/>
        </span>
            </c:when>
            <c:when test="${orderStatus == 3}">
                <span class="Font14 FontW Lineheight35 Block">你的评价：${orderaccess}
                </span>
            </c:when>
        </c:choose>
    </article>
</section>
<!--End content-->
<div class="F-link">
</div>
<%@include file="footer.jsp" %>
</body>
</html>
