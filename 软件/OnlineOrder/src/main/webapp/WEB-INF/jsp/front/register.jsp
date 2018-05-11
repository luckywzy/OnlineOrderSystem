<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>不错哦订餐-注册</title>
<meta name="author" content="DeathGhost"/>
 <link href="/css/front/style.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="/js/front/public.js"></script>
 <script type="text/javascript" src="/js/front/jquery.js"></script>
 <script type="text/javascript" src="/js/front/jqpublic.js"></script>
</head>
<body>
<header>
 <section class="Topmenubg">
  <div class="Topnav">
   <div class="LeftNav">
    <a href="register.html">注册</a>/<a href="login.html">登录</a><a href="#">QQ客服</a><a href="#">微信客服</a><a href="#">手机客户端</a>
   </div>
   <div class="RightNav">
    <a href="user_center.jsp">用户中心</a> <a href="user_orderlist.jsp" target="_blank" title="我的订单">我的订单</a> <a href="cart.jsp">购物车（0）</a> <a href="user_favorites.html" target="_blank" title="我的收藏">我的收藏</a> <a href="#">商家入驻</a>
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
   <input type="search" id="fkeyword" name="keyword" placeholder="请输入您所需查找的餐厅名称或食物名称..." class="searchbox" />
   <input type="submit" class="searchbutton" value="搜 索" />
   </div>
   </form>
   <p class="hotkeywords"><a href="#" title="酸辣土豆丝">酸辣土豆丝</a><a href="#" title="这里是产品名称">螃蟹炒年糕</a><a href="#" title="这里是产品名称">牛奶炖蛋</a><a href="#" title="这里是产品名称">芝麻酱凉面</a><a href="#" title="这里是产品名称">滑蛋虾仁</a><a href="#" title="这里是产品名称">蒜汁茄子</a></p>
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
<section class="Psection MT20">
 <form>
  <table class="Register">
  <tr>
  <td width="40%" align="right" class="FontW">用户名：</td>
  <td><input type="text" name="" required autofocus></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">密码：</td>
  <td><input type="password" name="" required></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">再次确认：</td>
  <td><input type="password" name="" required></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">电子邮件：</td>
  <td><input type="email" name="" required></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">手机号码：</td>
  <td><input type="text" name="" required pattern="[0-9]{11}"></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">手机校验码：</td>
  <td><input type="text" name="" required pattern="[0-9]{6}"></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">验证码：</td>
  <td><input type="text" name="" required><img src="upload/captcha.png" style="margin-left:8px; vertical-align:bottom" width="83" height="36"></td>
  </tr>
  <tr>
  <td width="40%" align="right"></td>
  <td><input type="submit" name="" class="Submit_b" value="注 册">( 已经是会员，<a href="login.jsp" class="BlueA">请登录</a> )</td>
  </tr>
  </table>
 </form>
</section>

<footer>
 <section class="Otherlink">
  <aside>
   <div class="ewm-left">
    <p>手机扫描二维码：</p>
    <img src="images/Android_ico_d.gif">
    <img src="images/iphone_ico_d.gif">
   </div>
   <div class="tips">
    <p>客服热线</p>
    <p><i>1830927**73</i></p>
    <p>配送时间</p>
    <p><time>09：00</time>~<time>22:00</time></p>
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
