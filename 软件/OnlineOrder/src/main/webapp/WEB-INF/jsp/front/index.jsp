<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8"/>
    <title>不错哦订餐首页</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>

    <script>

    </script>
</head>

<body>
<%@include file="topnav.jsp" %>

<!--Start content-->
<section class="Cfn">
    <aside class="C-left">
        <div class="S-time">服务时间：周一~周六
            <time>09:00</time>
            -
            <time>23:00</time>
        </div>
        <div class="C-time">
            <img src="upload/dc.jpg"/>
        </div>
        <a href="/list" target="_blank"><img src="images/by_button.png"></a>
        <a href="/list" target="_blank"><img src="images/dc_button.png"></a>
    </aside>
    <div class="F-middle">
        <ul class="rslides f426x240">
            <li><a href="javascript:"><img src="upload/01.jpg"/></a></li>
            <li><a href="javascript:"><img src="upload/02.jpg"/></a></li>
            <li><a href="javascript:"><img src="upload/03.jpg"/></a></li>
        </ul>
    </div>
    <aside class="N-right">
        <div class="login-container">
            <div class="default" style="display:block">
                <div class="head-img-row"><img src="//s0.meituan.net/bs/fe-web-meituan/2d05c2b/img/avatar.jpg" alt="">
                </div>
                <p class="user-name">Hi！你好</p><a class="btn-login"
                                                 href="/register.html">注册</a><a
                    class="btn-login"
                    href="/login.html">立即登录</a>
            </div>
        </div>

    </aside>
</section>
<section class="Sfainfor">
    <article class="Sflist">
        <div id="Indexouter">

            <ul id="Indextab" style="background-color: rgb(190, 164, 116); background-image: linear-gradient(to right, rgb(255, 113, 74) 2%, rgb(252, 66, 66) 97%);">
                <li class="current">点菜</li>
                <li>餐馆</li>
                <p class="class_B">
                    <%--<a href="#">中餐</a>
                    <a href="#">西餐</a>
                    <a href="#">甜点</a>
                    <a href="#">日韩料理</a>
                    <span><a href="#" target="_blank">more ></a></span>--%>
                </p>
            </ul>
            <div id="Indexcontent">
                <ul style="display:block;">
                    <li>

                        <div class="SCcontent">
                            <%--展示菜单信息--%>
                            <c:forEach items="${items}" var="item" varStatus="status">
                                <a href="/todetailsp?itemId=${item.itemId}" target="_blank" title="${item.itemName}">
                                    <figure>
                                        <img src="${item.itemPic}">
                                        <figcaption>
                                            <span class="title">${item.itemName}</span>
                                            <span class="price"><i>￥</i>${item.itemPrice}</span>
                                        </figcaption>
                                    </figure>
                                </a>
                            </c:forEach>
                            <form id="mainForm" action="/list_item" method="get">
                                <input type="hidden" id="curpage">
                            </form>
                        </div>
                        <%--TODO：分页--%>
                        <div class="TurnPage">
                            <span>共计商品:${page.totalNumber}</span>
                            <span>当前位于第:${page.currentPage }/${page.totalPage }页</span>
                            <a href="javascript:changeCurrentPage('1')">
                                <span class="Prev"><i></i>首页</span>
                            </a>
                            <a href="javascript:changeCurrentPage('${page.currentPage-1 }')"><span class="PNumber">上一页</span></a>
                            <a href="javascript:changeCurrentPage('${page.currentPage+1 }')"><span class="PNumber">下一页</span></a>
                            <a href="javascript:changeCurrentPage('${page.totalPage }')">
                                <span class="Next">尾页<i></i></span>
                            </a>
                        </div>
                    </li>
                </ul>
                <ul>
                    <li>

                        <div class="DCcontent">
                            <%--展示店铺信息--%>
                            <c:forEach items="${enterInfoForDispatchList}" var="enterInfoForDispatch">
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
                            </c:forEach>
                        </div>

                        <%--<div>
                            <a href="/list">点击加载更多商家</a>
                        </div>--%>
                    </li>
                    <div class="TurnPage">
                        <span>共计商品:${page2.totalNumber}</span>
                        <span>当前位于第:${page2.currentPage }/${page2.totalPage }页</span>
                        <a href="javascript:changeCurrentPage2('1')">
                            <span class="Prev"><i></i>首页</span>
                        </a>
                        <a href="javascript:changeCurrentPage2('${page2.currentPage-1 }')"><span class="PNumber">上一页</span></a>
                        <a href="javascript:changeCurrentPage2('${page2.currentPage+1 }')"><span class="PNumber">下一页</span></a>
                        <a href="javascript:changeCurrentPage2('${page2.totalPage }')">
                            <span class="Next">尾页<i></i></span>
                        </a>
                    </div>
                </ul>
            </div>
        </div>
    </article>
    <aside class="A-infor">
        <div class="title">热门商家</div>
        <div class="C-list">
            <a href="shop.html" target="_blank" title="店铺名称"><img src="upload/cc.jpg"></a>
            <p><a href="shop.html" target="_blank">[大雁塔]店铺名称</a></p>
            <p>
                <span>人均：20~50元</span>
                <span style=" float:right">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="ALscore">4.8</span>
   </span>
            </p>
        </div>
        <div class="C-list">
            <a href="shop.html" target="_blank" title="店铺名称"><img src="upload/cc.jpg"></a>
            <p><a href="shop.html" target="_blank">[大雁塔]店铺名称</a></p>
            <p>
                <span>人均：20~50元</span>
                <span style=" float:right">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="ALscore">4.8</span>
   </span>
            </p>
        </div>

    </aside>
</section>

<%@include file="footer.jsp" %>

</body>
</html>
