<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>店铺详情</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>
    <script type="text/javascript" src="/js/front/cart.js"></script>
    <script type="text/javascript" src="/js/front/jquery.easyui.min.js"></script>
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
        var mt = 0;
        window.onload = function () {
            var Topcart = document.getElementById("Topcart");
            var mt = Topcart.offsetTop;
            window.onscroll = function () {
                var t = document.documentElement.scrollTop || document.body.scrollTop;
                if (t > mt) {
                    Topcart.style.position = "fixed";
                    Topcart.style.margin = "";
                    Topcart.style.top = "200px";
                    Topcart.style.right = "191px";
                    Topcart.style.boxShadow = "0px 0px 20px 5px #cccccc";
                    Topcart.style.top = "0";
                    Topcart.style.border = "1px #636363 solid";
                }
                else {
                    Topcart.style.position = "static";
                    Topcart.style.boxShadow = "none";
                    Topcart.style.border = "";
                }
            }
        }
    </script>

</head>
<body>
<%@include file="topnav.jsp"%>
<!--Start content-->
<section class="Shop-index">
    <article>
        <div class="shopinfor">
            <div class="title">
                <img src="${enterInfoForUser.enterImg}" class="shop-ico">
                <span>${enterInfoForUser.companyName}</span>
                <span>
     <img src="images/star-on.png">
     <img src="images/star-on.png">
     <img src="images/star-on.png">
     <img src="images/star-on.png">
     <img src="images/star-off.png">
    </span>
                <span>4.8</span>
            </div>
            <div class="imginfor">
                <div class="shopimg">
                    <img src="${enterInfoForUser.enterImg}" id="showimg">
                    <ul class="smallpic">
                        <li><img src="${enterInfoForUser.enterImg}" onmouseover="show(this)" onmouseout="hide()"></li>
                    </ul>
                </div>
                <div class="shoptext">
                    <p><span>地址：</span>${enterInfoForUser.address}</p>
                    <p><span>电话：</span>${enterInfoForUser.phoneNum}</p>
                    <p><span>特色菜品：</span>${enterInfoForUser.featureItems}</p>
                    <p><span>优惠活动：</span>${enterInfoForUser.preferentialActivities}</p>
                    <p><span>停车位：</span>${enterInfoForUser.parkingSpace}</p>
                    <p><span>营业时间：</span>${enterInfoForUser.businessHours}</p>
                    <p><span>WIFI：</span>${enterInfoForUser.wifi}</p>
                    <p><span>人均价格：</span>${enterInfoForUser.averagePrice}</p>
                    <div class="Button">
                        <a href="#ydwm"><span class="DCbutton">查看菜谱点菜</span></a>
                    </div>
                    <div class="otherinfor">
                        <a href="#" class="icoa"><img src="images/collect.png">收藏店铺（1293）</a>
                        <div class="bshare-custom"><a title="分享"
                                                      class="bshare-more bshare-more-icon more-style-addthis">分享</a>
                        </div>
                        <script type="text/javascript" charset="utf-8"
                                src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=1&amp;lang=zh"></script>
                        <script type="text/javascript" charset="utf-8"
                                src="http://static.bshare.cn/b/bshareC0.js"></script>
                    </div>
                </div>
            </div>
            <div class="shopcontent">
                <div class="title2 cf">
                    <ul class="title-list fr cf ">
                        <li class="on">菜谱</li>
                        <li>累计评论（5）</li>
                        <li>商家详情</li>
                        <li>店铺留言</li>
                        <p><b></b></p>
                    </ul>
                </div>
                <div class="menutab-wrap">
                    <a name="ydwm">
                        <!--case1-->
                        <div class="menutab show">
                            <ul class="products">
                                <%--菜谱展示--%>
                                <c:forEach items="${tItems}" var="tItem">
                                    <li>
                                        <a href="/todetailsp?itemId=${tItem.itemId}" target="_blank" title="${tItem.itemName}">
                                            <img src="${tItem.itemPic}" class="foodsimgsize">
                                        </a>
                                        <a href="javascript:addItemToCartFromShop('${tItem.itemId }')" class="item">
                                            <div>
                                                <p>${tItem.itemName}</p>
                                                <p class="AButton">添加到购物车:￥${tItem.itemPrice}</p>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>

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
                            </ul>
                        </div>
                    </a>
                    <!--case2-->
                    <div class="menutab">
                        <div class="shopcomment">
                            <div class="Spname">
                                <a href="#" target="_blank" title="酸辣土豆丝">酸辣土豆丝</a>
                            </div>
                            <div class="C-content">
                                <q>还不错，速度挺快,还不错，速度挺快还不错，速度挺快还不错，速度挺快还不错，速度挺快还不错，速度挺快还不错，速度挺快。。。</q>
                                <i>2014年09月17日 19:36 </i>
                            </div>
                            <div class="username">
                                DeatGhost
                            </div>
                        </div>
                    </div>
                    <!--case4-->
                    <div class="menutab">
                        <div class="shopdetails">
                            <div class="shopmaparea">
                                <img src="upload/testimg.jpg"><!--此处占位图调用动态地图后将其删除即可-->
                            </div>
                            <div class="shopdetailsT">
                                <p><span>店铺：外婆家</span></p>
                                <p><span>地址：</span>陕西省西安市雁塔区丈八北路***号</p>
                                <p><span>电话：</span>029-88888888</p>
                                <p><span>乘车路线：</span>300路、115路、14路、800路到西辛庄站下车往东100米</p>
                                <p><span>店铺介绍：</span>***于2005年3月28日开业，立于西安市碑林区***于2005年3月28日开业，立于西安市碑林区***于2005年3月28日开业，立于西安市碑林区***于2005年3月28日开业，立于西安市碑林区***
                                </p>
                            </div>
                        </div>
                    </div>
                    <!--case5-->
                    <div class="menutab">
                        <span class="Ask"><i>DeathGhost</i>:这里是测试问答？</span>
                        <span class="Answer"><i>管理员回复</i>：这里是测试回答！</span>

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

                        <form class="A-Message" action="#">
                            <p><i>姓名：</i><input name="usr_name" type="text" autofocus placeholder="张三" required></p>
                            <p><i>手机：</i><input name="" type="text" placeholder="15825518***" pattern="[0-9]{11}"
                                                required></p>
                            <p><i>邮件：</i><input type="email" name="email" autocomplete="off"
                                                placeholder="admin@admin.com" required/></p>
                            <p><i>问题补充：</i><textarea name="" cols="" rows="" required
                                                     placeholder="详细说明您的问题..."></textarea></p>
                            <p><input type="submit" class="Abutt"/></p>
                        </form>
                    </div>
                </div>
            </div>
    </article>
    <aside>
        <%--<div class="cart" id="Topcart">
            <span class="Ctitle Block FontW Font14"><a href="/user/cart" target="_blank">我的购物车</a></span>
            <table id="cartcontent" fitColumns="true">
                <thead>
                <tr>
                    <th width="33%" align="center" field="name">商品</th>
                    <th width="33%" align="center" field="quantity">数量</th>
                    <th width="33%" align="center" field="price">价格</th>
                </tr>
                </thead>
            </table>
            <p class="Ptc"><span class="Cbutton"><a href="/user/cart" target="进入购物车">进入购物车</a></span><span class="total">共计金额: ￥0</span>
            </p>
        </div>--%>

        <div class="Nearshop">
            <span class="Nstitle">附近其他店铺</span>
            <ul>
                <li>
                    <img src="upload/cc.jpg">
                    <p>
                        <span class="shopname" title="动态调用完整标题"><a href="detailsp.jsp" target="_blank"
                                                                   title="肯德基">肯德基</a></span>
                        <span class="Discolor">距离：1.2KM</span>
                        <span title="完整地址title">地址：西安市雁塔区2000号...</span>
                    </p>
                </li>
            </ul>
        </div>

        <div class="History">
            <span class="Htitle">浏览历史</span>
            <ul>
                <li>
                    <a href="detailsp.jsp" target="_blank" title="清真川菜馆"><img src="upload/cc.jpg"></a>
                    <p>
                        <span class="shopname" title="动态调用完整标题"><a href="detailsp.jsp" target="_blank" title="正宗陕北小吃城">正宗陕北小吃城</a></span>
                        <span>西安市莲湖区土门十西安市莲湖区土门十字西安市莲湖区土门十字.</span>
                    </p>
                </li>
                <span>[ <a href="#">清空历史记录</a> ]</span>
            </ul>
        </div>
    </aside>

</section>
<!--End content-->
<div class="F-link">

</div>
<%@include file="footer.jsp"%>

</body>
</html>
