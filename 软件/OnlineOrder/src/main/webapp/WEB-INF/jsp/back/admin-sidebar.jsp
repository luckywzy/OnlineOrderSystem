<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="no-js">

<body>
<!-- sidebar start -->
<div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
        <li><a href="admin-index.html"><span class="am-icon-home"></span> 首页</a></li>
        <li class="admin-parent">
            <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 订单管理 <span
                    class="am-icon-angle-right am-fr am-margin-right"></span></a>
            <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
                <li><a href="admin-pre-order.html" class="am-cf"><span class="am-icon-check"></span> 准备中订单<span
                        class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
                <li><a href="admin-dis-order.html"><span class="am-icon-puzzle-piece"></span> 派送中的订单</a></li>
                <li><a href="admin-fin-order.html"><span class="am-icon-th"></span> 已完成的订单<span
                        class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
                <li><a href="admin-log.html"><span class="am-icon-calendar"></span> 系统日志</a></li>
                <li><a href="admin-404.html"><span class="am-icon-bug"></span> 404</a></li>
            </ul>
        </li>
        <li><a href="admin-item-manager.html"><span class="am-icon-table"></span> 菜品管理</a></li>
        <li><a href="admin-add-item.html"><span class="am-icon-pencil-square-o"></span> 新增菜品</a></li>
        <li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
        <div class="am-panel-bd">
            <p><span class="am-icon-bookmark"></span> 公告</p>
            <p>时光静好，与君语；细水流年，与君同。—— Amaze</p>
        </div>
    </div>

    <div class="am-panel am-panel-default admin-sidebar-panel">
        <div class="am-panel-bd">
            <p><span class="am-icon-tag"></span> wiki</p>
            <p>Welcome to the Amaze wiki!</p>
        </div>
    </div>
</div>
<!-- sidebar end -->

</body>
</html>
