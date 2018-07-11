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
        <!--user Address-->
        <section class="Myaddress Overflow">
            <span class="MDtitle Font14 FontW Block Lineheight35">收货人信息</span>

            <c:forEach items="${userAddresses}" var="userAddress">
                <form action="#">
                    <table>
                        <tr>
                            <td width="30%" class="Font14 FontW Lineheight35" align="right">所在地：</td>
                            <td>
                                    <%--<select name="" class="select_ssq">
                                        <option>陕西省</option>
                                    </select>--%>
                                    <%--<select name="" class="select_ssq">
                                        <option>西安市</option>
                                    </select>
                                    <select name="" class="select_ssq">
                                        <option>莲湖区</option>
                                    </select>--%>
                                <input name="province" class="input_pri" value="${userAddress.province}" required>
                                <input name="city" class="input_pri" value="${userAddress.city}" required>
                                <input name="district" class="input_pri" value="${userAddress.district}" required>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%" class="Font14 FontW Lineheight35" align="right">收件人姓名：</td>
                            <td><input type="text" name="consignee" required value="${userAddress.consignee}" class="input_name"></td>
                        </tr>
                        <tr>
                            <td width="30%" class="Font14 FontW Lineheight35" align="right">街道地址：</td>
                            <td><input type="text" name="detailAddr" size="50" value="${userAddress.detailAddr}" class="input_addr" required></td>
                        </tr>
                        <tr>
                            <td width="30%" class="Font14 FontW Lineheight35" align="right">邮政编码：</td>
                            <td><input type="text" name="postCode" required size="10" pattern="[0-9]{6}" value="${userAddress.postCode}"
                                       class="input_zipcode"></td>
                        </tr>
                        <tr>
                            <td width="30%" class="Font14 FontW Lineheight35" align="right">手机号码：</td>
                            <td><input type="text" name="phoneNum" required pattern="[0-9]{11}" value="${userAddress.phoneNum}"
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
                </form>

            </c:forEach>
            <!--add new address-->
            <form action="#">
                <table style="margin-top:10px;">
                    <tr>
                        <td width="30%" class="Font14 FontW Lineheight35" align="right">所在地：</td>
                        <td>
                            <select name="" class="select_ssq">
                                <option>陕西省</option>
                            </select>
                            <select name="" class="select_ssq">
                                <option>西安市</option>
                            </select>
                            <select name="" class="select_ssq">
                                <option>莲湖区</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="30%" class="Font14 FontW Lineheight35" align="right">收件人姓名：</td>
                        <td><input type="text" name="" required class="input_name"></td>
                    </tr>
                    <tr>
                        <td width="30%" class="Font14 FontW Lineheight35" align="right">街道地址：</td>
                        <td><input type="text" required class="input_addr"></td>
                    </tr>
                    <tr>
                        <td width="30%" class="Font14 FontW Lineheight35" align="right">邮政编码：</td>
                        <td><input type="text" required pattern="[0-9]{6}" class="input_zipcode"></td>
                    </tr>
                    <tr>
                        <td width="30%" class="Font14 FontW Lineheight35" align="right">手机号码：</td>
                        <td><input type="text" name="" required pattern="[0-9]{11}" class="input_tel"></td>
                    </tr>
                    <tr>
                        <td width="30%" class="Font14 FontW Lineheight35" align="right"></td>
                        <td class="Font14 Font Lineheight35"><input name="" type="submit" value="新增收货地址" class="Submit">
                        </td>
                    </tr>
                </table>
            </form>
        </section>
    </article>
</section>
<!--End content-->
<div class="F-link">

</div>
<%@include file="footer.jsp"%>
</body>
</html>
