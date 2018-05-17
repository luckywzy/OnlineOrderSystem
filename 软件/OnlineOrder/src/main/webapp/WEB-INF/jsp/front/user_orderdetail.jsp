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

        <span class="Font14 FontW Lineheight35 Block">订单编号：${orderId}</span>
        <span class="Font14 FontW Lineheight35 Block">订单信息：</span>
        <table class="U-order-D">
            <th>订单产品</th>
            <th>订购数量</th>
            <th>单价</th>
            <th>小计</th>
            <%--<tr>
                <td>201409243195</td>
                <td><a href="detailsp.jsp" target="_blank" title="酸辣土豆丝">酸辣土豆丝</a></td>
                <td>1</td>
                <td>￥8.00</td>
                <td>￥8.00</td>
                <td>￥2.00</td>
                <td>￥10.00</td>
                <td>支付宝</td>
                <!--如果未付款，则显示立即付款按钮-->
                <td style="display:none;"><a href="#" target="_blank">立即付款</a></td>
            </tr>--%>
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
        <span class="Font14 FontW Lineheight35 Block">来给个评价吧：
            <input type="text" id="access" class="input_addr" value="来说说你的感受"/>
            <input type="hidden" id="orderId" value="${orderId}"/>
            <input type="button" id="access_sub_btn" class="Submit" value="评价" onclick="access_sub()"/>
        </span>
        <%--<form action="#">
            <table>
                <tr>
                    <td width="30%" class="Font14 FontW Lineheight35" align="right">所在地：</td>
                    <td>
                        <input name="province" class="input_pri" value="${address.province}" required>
                        <input name="city" class="input_pri" value="${address.city}" required>
                        <input name="district" class="input_pri" value="${address.district}" required>
                    </td>
                </tr>
                <tr>
                    <td width="30%" class="Font14 FontW Lineheight35" align="right">收件人姓名：</td>
                    <td><input type="text" name="consignee" required value="${address.consignee}" class="input_name"></td>
                </tr>
                <tr>
                    <td width="30%" class="Font14 FontW Lineheight35" align="right">街道地址：</td>
                    <td><input type="text" name="detailAddr" size="50" value="${address.detailAddr}" class="input_addr" required></td>
                </tr>
                <tr>
                    <td width="30%" class="Font14 FontW Lineheight35" align="right">邮政编码：</td>
                    <td><input type="text" name="postCode" required size="10" pattern="[0-9]{6}" value="${address.postCode}"
                               class="input_zipcode"></td>
                </tr>
                <tr>
                    <td width="30%" class="Font14 FontW Lineheight35" align="right">手机号码：</td>
                    <td><input type="text" name="phoneNum" required pattern="[0-9]{11}" value="${address.phoneNum}"
                               class="input_tel"></td>
                </tr>
                <tr>
                    <td align="right" width="30%" class="Font14 FontW Lineheight35"></td>
                    <td class="Lineheight35"><input name="" type="submit" value="确认修改" class="Submit"><input
                            name=""
                            type="submit"
                            value="删除"
                            class="Submit">
                    </td>
                </tr>
            </table>
        </form>--%>
    </article>
</section>
<!--End content-->
<div class="F-link">
</div>
<%@include file="footer.jsp"%>
</body>
</html>
