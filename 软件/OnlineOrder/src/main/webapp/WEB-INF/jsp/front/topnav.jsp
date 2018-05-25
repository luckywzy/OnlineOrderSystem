<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>

<body>
<header>
    <section class="Topmenubg">
        <div class="Topnav">
            <div class="LeftNav">
                <a href="/register.html">注册</a>/<a href="/login.html">登录</a>
            </div>
            <div class="RightNav">
                <a href="/user/user_center.html">用户中心</a> <a href="/user/user_orderlist" target="_blank"
                                                             title="我的订单">我的订单</a> <a href="/user/tocart">购物车</a> <a
                    href="/user/user_favorites.html" target="_blank" title="我的收藏">我的收藏</a>
            </div>
        </div>
    </section>
    <div class="Logo_search">
        <div class="Logo">
            <a href="/home">
            <img src="/images/logo.jpg" title="不错哦" alt="logo">
            </a>
            <i></i>
            <span>西安市 [ <a href="#">莲湖区</a> ]</span>
        </div>
        <div class="Search">
            <form method="POST" id="main_a_serach" onsubmit="return check_search(this)" >
                <div class="Search_nav" id="selectsearch">
                    <a href="javascript:;" onfocus="selectsearch(this,'restaurant_name')" class="choose">餐厅</a>
                    <a href="javascript:;" onfocus="selectsearch(this,'food_name')">食物名</a>
                </div>
                <div class="Search_area">
                    <input type="search" id="fkeyword" name="keyword" placeholder="请输入您所需查找的餐厅名称或食物名称..."
                           class="searchbox"/>
                    <input type="hidden" id="search_type"/>
                    <input type="button" class="searchbutton" onclick="sub_search()" value="搜 索"/>
                </div>
            </form>
            <p class="hotkeywords"><a href="#" title="酸辣土豆丝">酸辣土豆丝</a><a href="#" title="这里是产品名称">螃蟹炒年糕</a><a href="#"
                                                                                                              title="这里是产品名称">牛奶炖蛋</a><a
                    href="#" title="这里是产品名称">芝麻酱凉面</a><a href="#" title="这里是产品名称">滑蛋虾仁</a><a href="#" title="这里是产品名称">蒜汁茄子</a>
            </p>
        </div>
    </div>
    <nav class="menu_bg">

    </nav>
</header>

</body>
</html>
