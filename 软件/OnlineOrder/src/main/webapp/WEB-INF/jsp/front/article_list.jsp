<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>DeathGhost-文章列表页</title>
<meta name="keywords" content="DeathGhost,DeathGhost.cn,web前端设,移动WebApp开发" />
<meta name="description" content="DeathGhost.cn::H5 WEB前端设计开发!" />
<meta name="author" content="DeathGhost"/>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
<script type="text/javascript" src="js/cart.js"></script>
<!--
Author: DeathGhost
Author URI: http://www.deathghost.cn
-->
</head>
<body>
<header>
 <section class="Topmenubg">
  <div class="Topnav">
   <div class="LeftNav">
    <a href="register.jsp">注册</a>/<a href="login.jsp">登录</a><a href="#">QQ客服</a><a href="#">微信客服</a><a href="#">手机客户端</a>
   </div>
   <div class="RightNav">
    <a href="user_center.jsp">用户中心</a> <a href="user_orderlist.jsp" target="_blank" title="我的订单">我的订单</a> <a href="cart.jsp">购物车（0）</a> <a href="user_favorites.html" target="_blank" title="我的收藏">我的收藏</a> <a href="#">商家入驻</a>
   </div>
  </div>
 </section>
 <div class="Logo_search">
  <div class="Logo">
   <img src="images/logo.jpg" title="DeathGhost" alt="模板">
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
 <article class="A-left Overflow">
  <h1 class="Font16 FontW classtitle">企业新闻( 这里是分类标题 )</h1>
  <div class="Articlelist Overflow">
   <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="article_read.jsp" target="_blank" title="这里是文章标题">管理企业最难的应该就是人心</a><time>2014-09-23</time></p>
   <p class="p2">管理企业最难的应该就是人心，就好比恋爱一般，得其人不得其心，也是无济于事，除非你是做表面形式，给别人看。    对于企业管理而言，作为一个领导者如何让自己的小伙伴们死心塌地，心甘情愿跟着自己干事业？靠的不是高薪厚职亦或者是股权分红，而是赢得其心。正所谓得民心者得天下，能够赢得属下的真心支持…</p> 
   <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="article_read.jsp" target="_blank" title="这里是文章标题">HTML5上传图片之FileReader的使用方法</a><time>2014-09-23</time></p>
   <p class="p2">使用FileReader对象,web应用程序可以异步的读取存储在用户计算机上的文件(或者原始数据缓冲)内容,可以使用File对象或者Blob对象来指定所要处理的文件或数据. 创建一个FileReader对象，语法如下： var reader = new FileReader();  FileReader 的实例拥有 4 个方法，其中 3 个用以读取文件，另一个用来中断读取。…</p>   
   <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="article_read.jsp" target="_blank" title="这里是文章标题">calc()在css3中实际应用示例</a><time>2014-09-23</time></p>
   <p class="p2">常常画界面碰到一些左右布局类的，容易出现这个问题，我个人常使用嵌套方法处理，做起来还是比较头疼的，特别是移动web端，今天看到这个calc()方法，倒是挺不错的…再次分享下出来。 The calc() CSS function can be used anywhere a <length>, <frequency>, <angle>, <time>, <…</p>   
   <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="article_read.jsp" target="_blank" title="这里是文章标题">CSS之content的实际应用</a><time>2014-09-23</time></p>
   <p class="p2">content属性早在CSS2.1的时候就被引入，content 属性与 :before 及 :after 伪元素配合使用，来插入生成内容，目前所有浏览器都支持 content 属性。 *注释：如果已规定 !DOCTYPE，那么 Internet Explorer 8 （以及更高版本）支持 content 属性。 该属性用于定义元素之前或之后放置的生成内容。默认地，这往往是…</p>   
   <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="article_read.jsp" target="_blank" title="这里是文章标题">“请在微信客户端打开链接”JavaScript判断</a><time>2014-09-23</time></p>
   <p class="p2">仅显示在微信客户端（webApp），禁止手机浏览器阅读JavaScript判断 “请在微信客户端打开链接”JavaScript判断 var ua = navigator.userAgent.toLowerCase(); var isWeixin = ua.indexOf('micromessenger') != -1; var isAndroid = ua.indexOf('android') != -1; …</p>   
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
 </article>
 <aside class="A-right Overflow">
  <div class="AAlist">
   <span class="AAlt FontW Font14 Block">相关文章推荐版块</span>
   <ul>
    <li><a href="article_read.jsp" target="_blank" title="这里是推荐某分类文章">这里是推荐某分类文章...</a></li>
   </ul>
  </div>
  <!--广告位-->
  <div style="margin:8px 0;">
   <a href="#" target="_blank"><img src="upload/ggw.jpg"></a>
  </div>
 </aside>
</section>
<!--End content-->
<div class="F-link">
  <span>友情链接：</span>
  <a href="http://www.deathghost.cn" target="_blank" title="DeathGhost">DeathGhost</a>
  <a href="http://www.17sucai.com/pins/15966.html" target="_blank" title="免费后台管理模板">绿色清爽版通用型后台管理模板免费下载</a>
  <a href="http://www.17sucai.com/pins/17567.html" target="_blank" title="果蔬菜类模板源码">HTML5果蔬菜类模板源码</a>
  <a href="http://www.17sucai.com/pins/14931.html" target="_blank" title="黑色的cms商城网站后台管理模板">黑色的cms商城网站后台管理模板</a>
 </div>
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
</footer>>
</body>
</html>
