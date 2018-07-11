<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>店铺搜索页面</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>
</head>
<body>
<%@include file="topnav.jsp" %>
<!--Start content-->
<section class="Psection MT20">
    <article class="Searchlist Overflow">
        <ul class="Overflow">


                <div class="DCcontent">

                    <c:forEach items="${enterInfoForDispatchList}" var="enterInfoForDispatch">
                        <li>
                        <a href="shop.html?enterpriseId=${enterInfoForDispatch.enterpriseId}" target="_blank"
                           title="${enterInfoForDispatch.companyName}">
                            <figure>
                                <img src="${enterInfoForDispatch.enterImg}">
                                <figcaption>
                                    <span class="title">${enterInfoForDispatch.companyName}</span>
                                    <span class="price">预定折扣：<i>暂无</i></span>
                                </figcaption>

                                <p class="p2">
                                    店铺评分：
                                    <c:forEach var="i" begin="1" end="5" step="1">
                                        <c:if test="${i <= enterInfoForDispatch.rank}">
                                            <img src="images/star-on.png">
                                        </c:if>
                                        <c:if test="${i > enterInfoForDispatch.rank}">
                                            <img src="images/star-off.png">
                                        </c:if>
                                    </c:forEach>

                                </p>
                                <p class="p3">起送：￥${enterInfoForDispatch.sendPrice} &nbsp; &nbsp;
                                    配送费用：￥${enterInfoForDispatch.dispatchPrice} &nbsp; &nbsp; &nbsp;<img
                                            class="imgc"
                                            src="/images/icon_timer.png">${enterInfoForDispatch.dispatchTime}
                                </p>
                            </figure>
                        </a>
                        <%--<a href="shop.html?enterpriseId=${enterInfoForDispatch.enterpriseId}" target="_blank" title="${enterInfoForDispatch.companyName}"><img src="${enterInfoForDispatch.enterImg}"></a>
                        <p class="P-shop Overflow"><span class="sa"><a href="shop.html?enterpriseId=${enterInfoForDispatch.enterpriseId}" target="_blank"
                                                                       title="好味来快餐店">好味来快餐店</a></span><span
                                class="sp">西安·莲湖区</span></p>
                        <p class="P-shop Overflow">西安市莲湖区土门十字往西100米...</p>--%>
                        </li>
                    </c:forEach>
                </div>


        </ul>
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
    </article>
    <aside class="Sraside">
        <div class="bestshop">
            <%--<span class="Bpt Block FontW Font14">推荐店铺</span>
            <ul>
                <li>
                    <a href="shop.html" title="好味来快餐店" target="_blank"><img src="upload/cc.jpg"></a>
                    <p>
                        <span class="Block FontW Font14"><a href="detailsp.jsp" title="好味来快餐店" target="_blank"
                                                            class="CorRed">好味来快餐店</a></span>
                        <span class="Block Overflow">西安 · 莲湖区</span>
                        <span class="Block Overflow">西安市莲湖区土门十字...</span>
                    </p>
                </li>
            </ul>--%>
        </div>
        <!--广告位或其他推荐版块-->
        <%--<img src="upload/ggw.jpg">--%>
    </aside>
</section>
<!--End content-->
<div class="F-link">
</div>
<%@include file="footer.jsp" %>
</body>
</html>
