<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>确认订单</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/order.js"></script>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>
</head>
<body>
<header>
    <section class="Topmenubg">
        <div class="Topnav">
            <div class="LeftNav">
                <a href="register.jsp">注册</a>/<a href="login.jsp">登录</a><a href="#">QQ客服</a><a href="#">微信客服</a><a
                    href="#">手机客户端</a>
            </div>
            <div class="RightNav">
                <a href="user_center.jsp">用户中心</a> <a href="user_orderlist.jsp" target="_blank" title="我的订单">我的订单</a>
                <a href="cart.jsp">购物车（0）</a> <a href="user_favorites.html" target="_blank" title="我的收藏">我的收藏</a> <a
                    href="#">商家入驻</a>
            </div>
        </div>
    </section>
    <div class="Logo_search">
        <div class="Logo">
            <img src="/images/logo.jpg" title="DeathGhost" alt="模板">
            <i></i>
            <span>西安市 [ <a href="#">莲湖区</a> ]</span>
        </div>
        <div class="Search">
            <form method="get" id="main_a_serach" onsubmit="return check_search(this)">
                <div class="Search_nav" id="selectsearch">
                    <a href="javascript:;" onClick="selectsearch(this,'restaurant_name')" class="choose">餐厅</a>
                    <a href="javascript:;" onClick="selectsearch(this,'food_name')">食物名</a>
                </div>
                <div class="Search_area">
                    <input type="search" id="fkeyword" name="keyword" placeholder="请输入您所需查找的餐厅名称或食物名称..."
                           class="searchbox"/>
                    <input type="submit" class="searchbutton" value="搜 索"/>
                </div>
            </form>
            <p class="hotkeywords"><a href="#" title="酸辣土豆丝">酸辣土豆丝</a><a href="#" title="这里是产品名称">螃蟹炒年糕</a><a href="#"
                                                                                                              title="这里是产品名称">牛奶炖蛋</a><a
                    href="#" title="这里是产品名称">芝麻酱凉面</a><a href="#" title="这里是产品名称">滑蛋虾仁</a><a href="#" title="这里是产品名称">蒜汁茄子</a>
            </p>
        </div>
    </div>
    <nav class="menu_bg">
        <ul class="menu">
            <li><a href="index.jsp">首页</a></li>
            <li><a href="list.jsp">订餐</a></li>
            <li><a href="category.jsp">积分商城</a></li>
            <li><a href="article_read.jsp">关于我们</a></li>
        </ul>
    </nav>
</header>
<!--Start content-->
<section class="Psection MT20" id="Cflow">
    <!--如果用户未添加收货地址，则显示如下-->
    <div class="confirm_addr_f">
        <span class="flow_title">收货地址：</span>
        <!--如果未添加地址，则显示此表单-->
        <form class="add_address" action="#" style="display:none;">
            <p><i>收件人姓名：</i><input type="text" name="" required></p>
            <p>
                <i>选择所在地：</i>
                <select name="">
                    <option>陕西省</option>
                </select>
                <select name="">
                    <option>西安市</option>
                </select>
                <select name="">
                    <option>莲湖区</option>
                </select>
            </p>
            <p><i>街道地址：</i><input type="text" required size="50"></p>
            <p><i>邮政编码：</i><input type="text" required size="10" pattern="[0-9]{6}"></p>
            <p><i>手机号码：</i><input type="text" name="" required pattern="[0-9]{11}"></p>
            <p><i></i><input name="" type="submit" value="确定"></p>
        </form>
        <!--已保存的地址列表-->
        <form action="#">
            <ul class="address">
                <c:forEach items="${userAddressList}" var="addr">
                    <li id="style${addr.id}"><input  type="radio" value="${addr.id}" id="${addr.id}" name="rdColor" onclick="changeColor(${addr.id})"/><label
                            for="${addr.id}"> ${addr.province} ${addr.city} ${addr.district} ${addr.detailAddr}（${addr.consignee}收）<span class="fontcolor">${addr.phoneNum}</span></label></li>

                </c:forEach>

                <%--<li id="style1"><input  type="radio" value="" id="1" name="rdColor" onclick="changeColor(1)"/><label
                        for="1"> 浙江省 杭州市 余杭区 航海路1588号（孙先生收）<span class="fontcolor">183092***73</span></label></li>
                <li id="style2"><input type="radio" value="" id="2" name="rdColor" onclick="changeColor(2)"/><label
                        for="2"> 陕西省 西安市 雁塔区 丈八路22号（孙先生收）<span class="fontcolor">183092***73</span></label></li>--%>
                <li><a href="javascript:void(0)"
                       onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"><img
                        src="/images/newaddress.png"/></a></li>
            </ul>
        </form>
        <!--add new address-->
        <form id="address_form" action="/user/add_address" method="post">
            <div id="light" class="O-L-content">
                <ul>
                    <li><span><label for="">选择所在地：</label></span>
                        <p><em>*</em><select name="province">
                            <option>陕西省</option>
                        </select> <select name="city">
                            <option>西安市</option>
                        </select> <select name="district">
                            <option>雁塔区</option>
                        </select></p>
                    </li>
                    <li><span><label for="">邮政编码：</label></span>
                        <p><em>*</em><input name="postCode" type="text" class="Y_N" pattern="[0-9]{6}" required></p>
                    </li>
                    <li><span><label for="">街道地址：</label></span>
                        <p><em>*</em><textarea name="detailAddr" cols="80" rows="5"></textarea></p></li>
                    <li><span><label for="">收件人姓名：</label></span>
                        <p><em>*</em><input name="consignee" type="text"></p></li>
                    <li><span><label for="">手机号码：</label></span>
                        <p><em>*</em><input name="phoneNum" type="text" pattern="[0-9]{11}" required></p></li>

                    <div class="button-a"><input id="new_address" type="submit" value="确 定" class="C-button" />
                        <a href="javascript:void(0)"
                           onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
                            <span><input name="" type="button" value="取 消" class="Cancel-b"/></span>
                        </a>
                    </div>
                    <div class="close-botton"><a href="javascript:void(0)"
                                                 onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"></a>
                    </div>
                </ul>
            </div>
            <div id="fade" class="overlay"></div>
            <!--End add new address-->
        </form>
    </div>
    <!--配送方式及支付，则显示如下-->
    <!--check order or add other information-->
    <div class="pay_delivery">
        <span class="flow_title">配送方式：</span>
        <table>
            <th width="30%">配送方式</th>
            <th width="30%">运费</th>
            <th width="40%">说明</th>
            <tr>
                <td>送货上门</td>
                <td>￥0.00</td>
                <td>配送说明信息...</td>
            </tr>
        </table>
        <span class="flow_title">在线支付方式：</span>
        <form action="#">
            <ul>
                <li><input type="radio" name="pay" id="alipay" value="alipay"/><label for="alipay"><i
                        class="alipay"></i></label></li>
            </ul>
        </form>
    </div>
    <form action="/user/order/create_order" id="order_form" method="post">
        <div class="inforlist">
            <span class="flow_title">商品清单</span>
            <%--显示订单商品列表--%>
            <table>
                <th>名称</th>
                <th>数量</th>
                <th>价格</th>
                <th>小计</th>
                <c:forEach items="${itemDetailDtos}" var="itemDetailDto">
                    <tr>
                        <td>${itemDetailDto.itemName}</td>
                        <td>${itemDetailDto.cnt}</td>
                        <td>￥${itemDetailDto.itemPrice}</td>
                        <td>￥${itemDetailDto.itemPrice * itemDetailDto.cnt}</td>
                    </tr>
                </c:forEach>
            </table>
            <div class="Order_M">
                <p><em>订单附言:</em><input name="leaveWords" type="text"></p>
                <%--<p><em>优惠券:</em>
                    <select name="">
                        <option>￥10元优惠券</option>
                    </select>
                </p>--%>
            </div>
            <div class="Sum_infor">
                <p class="p1">配送费用：￥${dispatchPrice}+商品费用：￥${total}<%---优惠券：￥00.00--%></p>
                <p class="p2">合计：<span>￥${total+dispatchPrice}</span></p>
                <input type="hidden" id="orderPrice" name="orderPrice" value="${total+dispatchPrice}">
                <input type="hidden" id="addressid" name="addressid">
                <input type="button" id="order_submit" value="提交订单" class="p3button" onclick="odr_sub()">
            </div>
        </div>

    </form>
    </div>
</section>
<script>
    //Test code,You can delete this script /2014-9-21DeathGhost/
    /*$(document).ready(function () {
        var submitorder = $.noConflict();
        submitorder(".p3button").click(function () {
            submitorder("#Cflow").hide();
            submitorder("#Aflow").show();
        });
    });*/
</script>
<section class="Psection MT20 Textcenter" style="display:none;" id="Aflow">
    <!-- 订单提交成功后则显示如下 -->
    <p class="Font14 Lineheight35 FontW">恭喜你！订单提交成功！</p>
    <p class="Font14 Lineheight35 FontW">您的订单编号为：<span class="CorRed">201409205134</span></p>
    <p class="Font14 Lineheight35 FontW">共计金额：<span class="CorRed">￥359</span></p>
    <p>
        <button type="button" class="Lineheight35"><a href="#" target="_blank">支付宝立即支付</a></button>
        <button type="button" class="Lineheight35"><a href="user_center.jsp">进入用户中心</a></button>
    </p>
</section>
<!--End content-->
<div class="F-link">

</div>
<footer>
    <section class="Otherlink">
        <aside>
            <div class="ewm-left">
                <p>手机扫描二维码：</p>
                <img src="/images/Android_ico_d.gif">
                <img src="/images/iphone_ico_d.gif">
            </div>
            <div class="tips">
                <p>客服热线</p>
                <p><i>1830927**73</i></p>
                <p>配送时间</p>
                <p>
                    <time>09：00</time>
                    ~
                    <time>22:00</time>
                </p>
                <p>网站公告</p>
            </div>
        </aside>
        <section>
            <div>
                <span><i class="i1"></i>配送支付</span>
                <ul>
                    <li><a href="article_read.jsp" target="_blank" title="标题">支付方式</a></li>
                    <li><a href="article_read.jsp" target="_blank" title="标题">配送方式</a></li>
                    <li><a href="article_read.jsp" target="_blank" title="标题">配送效率</a></li>
                    <li><a href="article_read.jsp" target="_blank" title="标题">服务费用</a></li>
                </ul>
            </div>
            <div>
                <span><i class="i2"></i>关于我们</span>
                <ul>
                    <li><a href="article_read.jsp" target="_blank" title="标题">招贤纳士</a></li>
                    <li><a href="article_read.jsp" target="_blank" title="标题">网站介绍</a></li>
                    <li><a href="article_read.jsp" target="_blank" title="标题">配送效率</a></li>
                    <li><a href="article_read.jsp" target="_blank" title="标题">商家加盟</a></li>
                </ul>
            </div>
            <div>
                <span><i class="i3"></i>帮助中心</span>
                <ul>
                    <li><a href="article_read.jsp" target="_blank" title="标题">服务内容</a></li>
                    <li><a href="article_read.jsp" target="_blank" title="标题">服务介绍</a></li>
                    <li><a href="article_read.jsp" target="_blank" title="标题">常见问题</a></li>
                    <li><a href="article_read.jsp" target="_blank" title="标题">网站地图</a></li>
                </ul>
            </div>
        </section>
    </section>
    <div class="copyright">© 版权所有 2016 SUST 技术支持：<a href="http://www.sust.edu.cn" title="SUST">SUST</a></div>
</footer>
</body>
</html>
