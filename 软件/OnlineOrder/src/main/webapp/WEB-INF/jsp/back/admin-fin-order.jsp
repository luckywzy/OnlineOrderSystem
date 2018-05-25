<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>已完成的订单</title>
    <meta name="description" content="这是一个 gallery 页面">
    <meta name="keywords" content="gallery">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="/css/back/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/css/back/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="/css/back/css/amazeui.min.css"/>
    <link rel="stylesheet" href="/css/back/css/admin.css">
</head>
<body>
<%@include file="admin-header.jsp" %>

<div class="am-cf admin-main">
    <!-- sidebar start -->
    <%@include file="admin-sidebar.jsp" %>
    <!-- sidebar end -->

    <!-- content start -->

    <div class="admin-content">

        <div class="am-cf am-padding">
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">已完成</strong> /
                <small>订单列表</small>
            </div>
        </div>

        <div class="am-g">
            <div class="am-u-md-6 am-cf">
                <div class="am-fl am-cf">
                    <div class="am-btn-toolbar am-fl">
                        <div class="am-btn-group am-btn-group-xs">
                            <%--<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
                            <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
                            <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
                            <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>--%>
                        </div>

                        <div class="am-form-group am-margin-left am-fl">

                        </div>
                    </div>
                </div>
            </div>
            <div class="am-u-md-3 am-cf">
                <div class="am-fr">
                    <div class="am-input-group am-input-group-sm">
                        <input type="text" class="am-form-field">
                        <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="button">搜索</button>
                </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="am-g">
            <div class="am-u-sm-12">
                <form class="am-form">
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr>
                            <th class="table-check"><input type="checkbox"/></th>
                            <th class="table-id">ID</th>
                            <th class="table-title">订单编号</th>
                            <th class="table-type">订单价格</th>
                            <th class="table-author">订购人</th>
                            <th class="table-date">修改日期</th>
                            <th class="table-set">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orderList}" var="order" varStatus="status">
                            <tr>
                                <td><input type="checkbox"/></td>
                                <td>${order.id}</td>
                                <td><a href="/admin/order/orderDetail?orderId=${order.orderId}">${order.orderId}</a>
                                </td>
                                <td>${order.orderPrice}</td>
                                <td>${order.userId}</td>
                                <td>${order.updateTime}</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><a
                                                    href="/admin/order/orderDetail?orderId=${order.orderId}"><span
                                                    class="am-icon-pencil-square-o"></span> 查看详情</a>
                                            </button>
                                                <%--<button class="am-btn am-btn-default am-btn-xs am-text-danger"><span
                                                        class="am-icon-trash-o"></span> 删除
                                                </button>--%>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="am-cf">
                        共 7 条记录
                        <div class="am-fr">
                            <ul class="am-pagination">
                                <li class="am-disabled"><a href="#">首页</a></li>
                                <li class="am-active"><a href="#">上一页</a></li>
                                <li><a href="#">下一页</a></li>
                                <li><a href="#">尾页</a></li>
                            </ul>
                        </div>
                    </div>
                    <hr/>
                    <p>注：.....</p>
                </form>
            </div>

        </div>
    </div>
    <%--<div class="admin-content">

      <div class="am-cf am-padding">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">相册</strong> / <small>Gallery</small></div>
      </div>

      <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://cn.bing.com/az/hprichv/LondonTrainStation_GettyRR_139321755_ZH-CN742316019.jpg" alt=""/>
            <div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://pic.33.la/tt/1920x1080/webshots_zhiwu-027.jpg" alt=""/>
            <div class="gallery-title">君可见漫天落霞</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.cn.bing.net/az/hprichbg/rb/CardinalsBerries_ZH-CN10679090179_1366x768.jpg" alt=""/>
            <div class="gallery-title">此刻鲜花满天幸福在身边</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.cn.bing.net/az/hprichbg/rb/QingdaoJiaozhou_ZH-CN10690497202_1366x768.jpg" alt=""/>
            <div class="gallery-title">你当我是浮夸吧</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.cn.bing.net/az/hprichbg/rb/FennecFox_ZH-CN13720911949_1366x768.jpg" alt=""/>
            <div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://cn.bing.com/az/hprichv/LondonTrainStation_GettyRR_139321755_ZH-CN742316019.jpg" alt=""/>
            <div class="gallery-title">斜阳染幽草 几度飞红</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://cn.bing.com/az/hprichv/LondonTrainStation_GettyRR_139321755_ZH-CN742316019.jpg" alt=""/>
            <div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.cn.bing.net/az/hprichbg/rb/FennecFox_ZH-CN13720911949_1366x768.jpg" alt=""/>
            <div class="gallery-title">你当我是浮夸吧</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.cn.bing.net/az/hprichbg/rb/QingdaoJiaozhou_ZH-CN10690497202_1366x768.jpg" alt=""/>
            <div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://pic.33.la/tt/1920x1080/webshots_zhiwu-027.jpg" alt=""/>
            <div class="gallery-title">君可见漫天落霞</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://s.cn.bing.net/az/hprichbg/rb/FennecFox_ZH-CN13720911949_1366x768.jpg" alt=""/>
            <div class="gallery-title">你当我是浮夸吧</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://pic.33.la/tt/1920x1080/webshots_zhiwu-027.jpg" alt=""/>
            <div class="gallery-title">君可见漫天落霞</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="http://cn.bing.com/az/hprichv/LondonTrainStation_GettyRR_139321755_ZH-CN742316019.jpg" alt=""/>
            <div class="gallery-title">斜阳染幽草 几度飞红</div>
            <div class="gallery-desc">2375-09-26</div>
          </a>
        </li>
      </ul>

      <div class="am-margin am-cf">
        <hr/>
        <p class="am-fl">共 15 条记录</p>
        <ol class="am-pagination am-fr">
          <li class="am-disabled"><a href="#">&laquo;</a></li>
          <li class="am-active"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">&raquo;</a></li>
        </ol>
      </div>

    </div>--%>
    <!-- content end -->

</div>

<footer>
    <hr>
    <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="/css/back/js/polyfill/rem.min.js"></script>
<script src="/css/back/js/polyfill/respond.min.js"></script>
<script src="/css/back/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="/css/back/js/jquery.min.js"></script>
<script src="/css/back/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="/css/back/js/app.js"></script>
</body>
</html>
