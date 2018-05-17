<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>搜索商品页面</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>

</head>
<body>
<%@include file="topnav.jsp"%>
<!--Start content-->
<section class="Psection MT20">
    <article class="Searchlist Overflow">
        <section class="Fslmenu slt" style="margin-bottom:5px">
            <a href="#" title="默认排序">
   <span>
   <span>默认排序</span>
   </span>
            </a>
            <a href="#" title="评价">
   <span>
   <span>评价</span>
   <span class="s-up"></span>
   </span>
            </a>
            <a href="#" title="销量">
   <span>
   <span>销量</span>
   <span class="s-up"></span>
   </span>
            </a>
            <a href="#" title="价格排序">
   <span>
   <span>价格</span>
   <span class="s-down"></span>
   </span>
            </a>
            <a href="#" title="发布时间排序">
   <span>
   <span>发布时间</span>
   <span class="s-up"></span>
   </span>
            </a>
        </section>
        <ul class="Overflow">
            <li>
                <a href="detailsp.jsp" target="_blank" target="_blank" title="酸辣土豆丝"><img src="upload/01.jpg"></a>
                <p class="P-price FontW Font16"><span>￥59.00</span></p>
                <p class="P-title"><a href="detailsp.jsp" target="_blank" target="_blank" title="酸辣土豆丝">酸辣土豆丝</a></p>
                <p class="P-shop Overflow"><span class="sa"><a href="shop.html" target="_blank" target="_blank"
                                                               title="酸辣土豆丝">好味来快餐店</a></span><span
                        class="sp">西安·莲湖区</span></p>
            </li>
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
        <div class="bestproduct">
            <span class="Bpt Block FontW Font14">热销商品推荐</span>
            <ul>
                <li>
                    <a href="detailsp.jsp" title="酸辣土豆丝" target="_blank"><img src="upload/02.jpg"></a>
                    <p>
                        <span class="Block FontW Font16 CorRed">￥59.00</span>
                        <span class="Block Overflow"><a href="detailsp.jsp" title="酸辣土豆丝"
                                                        target="_blank">酸辣土豆丝</a></span>
                        <span class="Block Overflow">累计销量：<i>255</i>笔</span>
                    </p>
                </li>
            </ul>
        </div>
        <!--广告位或其他推荐版块-->
        <img src="upload/ggw.jpg">
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
<%@include file="footer.jsp"%>
</body>
</html>
