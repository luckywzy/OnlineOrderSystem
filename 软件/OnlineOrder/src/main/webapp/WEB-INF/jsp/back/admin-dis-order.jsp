<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>派送中的订单</title>
  <meta name="description" content="这是一个 help 页面">
  <meta name="keywords" content="help">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="/css/back/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="/css/back/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="/css/back/css/amazeui.min.css"/>
  <link rel="stylesheet" href="/css/back/css/admin.css">
</head>
<body>
<%@include file="admin-header.jsp"%>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <%@include file="admin-sidebar.jsp"%>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">订单列表</strong> /
        <small>派送中</small>
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
                <td><a href="/admin/order/orderDetail?orderId=${order.orderId}">${order.orderId}</a></td>
                <td>${order.orderPrice}</td>
                <td>${order.userId}</td>
                <td><fmt:formatDate value="${order.updateTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="finish('${order.orderId}')"><span
                              class="am-icon-pencil-square-o"></span> 派送完成
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
            共 ${page.totalNumber} 条记录 &nbsp;&nbsp;&nbsp;<span>当前位于第:${page.currentPage }/${page.totalPage }页</span>
            <div class="am-fr">

              <ul class="am-pagination">
                <li <%--class="am-disabled"--%>><a href="javascript:changeCurrentPage1('1')">首页</a></li>
                <li <%--class="am-active"--%>><a href="javascript:changeCurrentPage1('${page.currentPage-1 }')">上一页</a></li>
                <li><a href="javascript:changeCurrentPage1('${page.currentPage+1 }')">下一页</a></li>
                <li><a href="javascript:changeCurrentPage1('${page.totalPage }')">尾页</a></li>
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
<script src="/css/back/js/order.js"></script>
</body>
</html>
