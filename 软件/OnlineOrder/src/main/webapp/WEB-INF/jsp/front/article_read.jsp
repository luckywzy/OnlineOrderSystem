<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>文章详情页</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/order.js"></script>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>
</head>
<body>
<header>
    <%@include file="topnav.jsp"%>
</header>
<!--Start content-->
<section class="Psection MT20">
    <article class="A-left Overflow">
        <h1 class="Font16 FontW classtitle">以后的畅想</h1>
        <div class="A-read">
                《将进酒》<br>
            君不见黄河之水天上来，奔流到海不复回。<br/>
            君不见高堂明镜悲白发，朝如青丝暮成雪。<br/>
            人生得意须尽欢，莫使金樽空对月。<br/>
            天生我材必有用，千金散尽还复来。<br/>
            烹羊宰牛且为乐，会须一饮三百杯。<br/>
            岑夫子，丹丘生，将进酒，杯莫停。<br/>
            与君歌一曲，请君为我侧耳听。<br/>

            钟鼓馔玉不足贵，但愿长醉不复醒。<br/>

            古来圣贤皆寂寞，惟有饮者留其名。<br/>

            陈王昔时宴平乐，斗酒十千恣欢谑。<br/>

            主人何为言少钱，径须沽取对君酌。<br/>

            五花马，千金裘，呼儿将出换美酒，与尔同消万古愁。<br/>

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

</div>
<footer>
    <%@include file="footer.jsp" %>
</footer>
>
</body>
</html>
