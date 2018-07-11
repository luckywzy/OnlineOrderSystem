<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>新增菜品</title>
    <meta name="description" content="这是一个form页面">
    <meta name="keywords" content="form">
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
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">菜品</strong> /
                <small>新增</small>
            </div>
        </div>

        <div class="am-tabs am-margin" data-am-tabs>
            <ul class="am-tabs-nav am-nav am-nav-tabs">
                <li class="am-active"><a href="#tab1">新增菜品</a></li>
            </ul>

            <div class="am-tabs-bd">
                <div class="am-tabs am-margin" data-am-tabs>
                    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                        <form id="additemform" class="am-form">
                            <div class="am-g am-margin-top-sm">
                                <div class="am-u-sm-2 am-text-right">
                                    菜品名
                                </div>
                                <div class="am-u-sm-4 am-u-end">
                                    <input name="itemName" type="text" value="${item.itemName}" class="am-input-sm"
                                           required>
                                </div>
                            </div>

                            <div class="am-g am-margin-top-sm">
                                <div class="am-u-sm-2 am-text-right">
                                    菜品价格
                                </div>
                                <div class="am-u-sm-4 am-u-end">
                                    <input name="itemPrice" type="number" value="${item.itemPrice}" min="0"
                                           max="9999999"
                                           class="am-input-sm" required>
                                </div>
                            </div>

                            <div class="am-g am-margin-top-sm">
                                <div class="am-u-sm-2 am-text-right">
                                    菜品描述
                                </div>
                                <div class="am-u-sm-4 am-u-end">
                                    <textarea name="itemDesc" rows="4">${item.itemDesc}</textarea>
                                </div>
                            </div>

                            <div class="am-g am-margin-top-sm">
                                <div class="am-u-sm-2 am-text-right">
                                    所属类型
                                </div>
                                <div class="am-u-sm-4 am-u-end">
                                    <select name="itemType" form="additemform">
                                        <c:forEach items="${itemTypeList}" var="itemType">
                                            <option value="${itemType.itemTypeId}">${itemType.itemTypeDesc}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <input id="itemPic" name="itemPic" type="hidden"/>

                        </form>
                        <form id="imgForm" enctype="multipart/form-data">
                            <div class="am-g am-margin-top-sm">
                                <div class="am-u-sm-2 am-text-right">
                                    菜品配图
                                </div>
                                <div class="am-u-sm-4 am-u-end">
                                    <input id="uploadimg" name="uploadimg" type="file" accept="image/jpeg,image/png,image/gif"/>

                                </div>
                                <input id="imgbtn" type="button" value="上传图片" onclick="uploadFile()"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="am-margin">
            <button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="newItem()">提交保存</button>
            <%--<button type="button" class="am-btn am-btn-primary am-btn-xs" >放弃保存</button>--%>
        </div>
    </div>
    <!-- content end -->

</div>


<footer>
    <hr>
    <p class="am-padding-left">© 版权所有 2018 SUST 技术支持：<a href="http://www.sust.edu.cn" title="SUST">SUST</a></p>
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
