<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>酸辣土豆丝</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>
    <script type="text/javascript" src="/js/front/detailsp.js"></script>
    <script>
        $(function () {
            $('.title-list li').click(function () {
                var liindex = $('.title-list li').index(this);
                $(this).addClass('on').siblings().removeClass('on');
                $('.menutab-wrap div.menutab').eq(liindex).fadeIn(150).siblings('div.menutab').hide();
                var liWidth = $('.title-list li').width();
                $('.shopcontent .title-list p').stop(false, true).animate({'left': liindex * liWidth + 'px'}, 300);
            });

            $('.menutab-wrap .menutab li').hover(function () {
                $(this).css("border-color", "#ff6600");
                $(this).find('p > a').css('color', '#ff6600');
            }, function () {
                $(this).css("border-color", "#fafafa");
                $(this).find('p > a').css('color', '#666666');
            });
        });
    </script>
</head>
<body>
<%@include file="topnav.jsp"%>

<!--Start content-->
<section class="slp">
    <section class="food-hd">
        <div class="foodpic">
            <img src="${item.itemPic}" id="showimg">
            <ul class="smallpic">
                <li><img src="${item.itemPic}" onmouseover="show(this)" onmouseout="hide()"></li>
            </ul>
        </div>
        <div class="foodtext">
            <div class="foodname_a">
                <h1>${item.itemName}</h1>
                <%--TODO:需要加上餐厅的地址--%>
                <p>西安市丈八路220号</p>
            </div>
            <div class="price_a">
                <p class="price01">促销：￥<span>${item.itemPrice}</span></p>
                <p class="price02">价格：￥<s>${item.itemPrice}</s></p>
            </div>
            <div class="Freight">
                <span>配送费用：</span>
                <span><i>未央区</i>至<i>莲湖区</i></span>
                <span>10.00</span>
            </div>
            <ul class="Tran_infor">
                <li>
                    <p class="Numerical">3</p>
                    <p>月销量</p>
                </li>
                <li class="line">
                    <p class="Numerical">${accesscnt}</p>
                    <p>累计评价</p>
                </li>
                <li>
                    <p class="Numerical">59</p>
                    <p>送幸福积分</p>
                </li>
            </ul>
            <form id="addCartForm">
                <div class="BuyNo">
                    <span>我要买：<input type="number" name="Number" required autofocus min="1" value="1"/>份</span>
                    <span>库存：9999</span>
                    <div class="Buybutton">
                        <input id="addTOCart" type="button" onclick="addItemToCart()" value="加入购物车" class="BuyB">
                        <a href="shop.html?enterpriseId=${item.enterpriseId}"><span class="Backhome">进入店铺首页</span></a>
                    </div>
                    <input type="text" name="itemId" hidden value="${item.itemId}"/>
                </div>
            </form>
        </div>
        <div class="viewhistory">
            <span class="VHtitle">看了又看</span>
            <ul class="Fsulist">
                <li>
                    <a href="detailsp.jsp" target="_blank" title="酱爆茄子"><img src="upload/03.jpg"></a>
                    <p>酱爆茄子</p>
                    <p>￥12.80</p>
                </li>
                <li>
                    <a href="detailsp.jsp" target="_blank" title="酱爆茄子"><img src="upload/02.jpg"></a>
                    <p>酱爆茄子</p>
                    <p>￥12.80</p>
                </li>
            </ul>
        </div>
    </section>
    <!--bottom content-->
    <section class="Bcontent">
        <article>
            <div class="shopcontent">
                <div class="title2 cf">
                    <ul class="title-list fr cf ">
                        <li class="on">详细说明</li>
                        <%--TODO: 增加菜品详情页面的评论 和成交记录--%>
                        <li>评价详情（${accesscnt}）</li>
                        <li>成交记录</li>
                        <p><b></b></p>
                    </ul>
                </div>
                <div class="menutab-wrap">
                    <!--case1-->
                    <div class="menutab show">
                        <div class="cont_padding">
                            <%-- <img src="upload/tds.jpg">--%>
                            ${item.itemDesc}
                        </div>
                    </div>
                    <!--case2-->
                    <div class="menutab">
                        <div class="cont_padding">
                            <table class="Dcomment">
                                <th width="80%">评价内容</th>
                                <th width="20%" style="text-align:right">评价人</th>
                                <c:forEach items="${accessDtoList}" var="access">
                                    <tr>
                                        <td>
                                                ${access.accessWords}
                                                <%-- 还不错，速度倒是挺速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快速度倒是挺快快...--%>
                                            <time>${access.createTime}</time>
                                        </td>
                                        <td align="right">${access.userName}</td>
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
                        </div>
                    </div>
                    <!--case4-->
                    <div class="menutab">
                        <div class="cont_padding">

                            <table width="888">
                                <th width="35%">买家</th>
                                <th width="15%">数量</th>
                                <th width="30%">成交时间</th>
                                <c:forEach items="${doneRecordDtoList}" var="doneRecord">
                                    <tr height="40">
                                        <td>${doneRecord.buyer}</td>
                                        <td>${doneRecord.cnt}</td>
                                        <td>${doneRecord.createTime}</td>
                                    </tr>
                                </c:forEach>
                            </table>

                        </div>
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
                    </div>
                </div>
            </div>
        </article>
        <!--ad&other infor-->
        <aside>
            <!--广告位或推荐位-->
            <a href="#" title="广告位占位图片" target="_blank"><img src="upload/2014912.jpg"></a>
        </aside>
    </section>
</section>
<!--End content-->
<div class="F-link">

</div>

<%@include file="footer.jsp"%>

</body>
</html>
