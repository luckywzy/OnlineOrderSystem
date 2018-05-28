<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>菜品管理</title>
    <meta name="description" content="这是一个 table 页面">
    <meta name="keywords" content="table">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="/css/back/css/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/css/back/css/i/app-icon72x72@2x.png">
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
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">店铺菜品列表</strong> /
                <small></small>
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
                            <th class="table-title">菜品编号</th>
                            <th class="table-type">菜品名</th>
                            <th class="table-author">菜品价格</th>
                            <th class="table-date">修改日期</th>
                            <th class="table-set">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${items}" var="item" varStatus="status">
                            <tr>
                                <td><input type="checkbox"/></td>
                                <td>${item.id}</td>
                                <td><a href="/admin/admin-modify-item.html?itemId=${item.itemId}">${item.itemId}</a></td>
                                <td>${item.itemName}</td>
                                <td>${item.itemPrice}</td>
                                <td>${item.updateTime}</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">

                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary" >
                                                <a href="/admin/admin-modify-item.html?itemId=${item.itemId}">
                                                <span
                                                    class="am-icon-pencil-square-o"></span> 编辑</a>
                                            </button>

                                            <button class="am-btn am-btn-default am-btn-xs am-text-danger" onclick="deleteItem('${item.itemId}')"><span
                                                    class="am-icon-trash-o" ></span> 删除
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        <%--<tr>
                          <td><input type="checkbox" /></td>
                          <td>2</td>
                          <td><a href="#">Business management</a></td>
                          <td>default</td>
                          <td>测试1号</td>
                          <td>2014年9月4日 7:28:47</td>
                          <td>
                            <div class="am-btn-toolbar">
                              <div class="am-btn-group am-btn-group-xs">
                                <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                <button class="am-btn am-btn-default am-btn-xs"><span class="am-icon-copy"></span> 复制</button>
                                <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                              </div>
                            </div>
                          </td>
                        </tr>
                        --%>
                        </tbody>
                    </table>
                    <div class="am-cf">
                        共 8 条记录
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
<script src="/css/back/js/item.js"></script>
</body>
</html>
