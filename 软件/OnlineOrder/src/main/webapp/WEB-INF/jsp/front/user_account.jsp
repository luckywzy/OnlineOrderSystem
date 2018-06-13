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
            <%--<li><i></i><a href="user_favorites.html">我的收藏</a></li>--%>
            <li><i></i><a href="user_account.html">账户管理</a></li>
            <li><i></i><a href="javascript:" onclick="quit()">安全退出</a></li>
        </ul>
    </nav>
    <article class="U-article Overflow">
        <!--user Account-->
        <section class="AccManage Overflow">
            <span class="AMTitle Block Font14 FontW Lineheight35">账户管理</span>
            <form>
                <span class="AMTitle Block Font14 FontW Lineheight35">修改密码</span>
               <table>
                   <tr>
                       <td width="30%" align="right">原密码：</td>
                       <td><input type="password" name="" value=""></td>
                   </tr>
                   <tr>
                       <td width="30%" align="right">新密码：</td>
                       <td><input type="password" name="" value=""></td>
                   </tr>
                   <tr>
                       <td></td>
                       <td><input name="" type="submit" value="保 存"></td>
                   </tr>
               </table>
            </form>
            <form>
                <span class="AMTitle Block Font14 FontW Lineheight35">修改其他项</span>
                <table>
                    <tr>
                        <td width="30%" align="right">*用户名：</td>
                        <td><input type="text" name="" value="${user.username}"></td>
                    </tr>
                    <tr>
                        <td width="30%" align="right">*邮箱：</td>
                        <td><input type="email" name="" value="${user.email}"></td>
                    </tr>
                    <tr>
                        <td width="30%" align="right">*手机：</td>
                        <td><input type="tel" name="" value="${user.phoneNum}"></td>
                    </tr>
                    <tr>
                        <td width="30%" align="right">*生日：</td>
                        <td><input type="date" name="" defaultValue="2012-03-12"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input name="" type="submit" value="保 存"></td>
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
