<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
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
<%@include file="topnav.jsp" %>
<!--Start content-->
<section class="Psection MT20">
    <nav class="U-nav Font14 FontW">
        <ul>
            <li><i></i><a href="user_orderlist.html">我的订单</a></li>
            <li><i></i><a href="user_address.html">收货地址</a></li>
            <li><i></i><a href="user_message.html">我的留言</a></li>
            <li><i></i><a href="user_account.html">账户管理</a></li>
            <li><i></i><a href="javascript:" onclick="quit()">安全退出</a></li>
        </ul>
    </nav>
    <article class="U-article Overflow">
        <!--user message-->
        <section class="Mymessage Overflow">
            <span class="Mmtitle Block Font14 FontW Lineheight35">我的留言</span>
            <c:forEach items="${leaveWordsForOrderList}" var="leaveWordsForOrder">
                <p class="FontW">
                    <%--<fmt:parseDate value="${param.date}" var="date" pattern="yyyy/MM/dd:HH:mm:ss>--%>
                    <%--<time>${leaveWordsForOrder.createTime} </time>--%>
                <time><fmt:formatDate value="${leaveWordsForOrder.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /></time><span>我：</span>${leaveWordsForOrder.leaveWords}
                </p>
                <p class="CorRed">
                    <time><fmt:formatDate value="${leaveWordsForOrder.updateTime}" pattern="yyyy-MM-dd HH:mm:ss" /></time>
                    <span>店家回复：</span>${leaveWordsForOrder.reply}
                </p>
            </c:forEach>
            <%-- <p class="CorRed">
                 <time>2014-09-22 13:09</time>
                 <span>重庆川菜馆回复：</span>这这里回答，详情登录 http://www.deathghost.cn！
             </p>--%>
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
<%@include file="footer.jsp" %>
</body>
</html>
