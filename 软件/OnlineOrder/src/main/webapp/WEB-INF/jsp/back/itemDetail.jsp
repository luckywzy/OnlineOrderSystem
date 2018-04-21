<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zongyu.wang
  Date: 2018/4/19
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>菜品管理页面</title>
    <script type="text/javascript"
            src="/js/commons/jQuery.js"></script>
    <script type="text/javascript"
            src="/js/list.js"></script>
</head>
<body>

<table width="80%" align="center">
    <tr>
        <td width="5%">名称</td>
        <td width="25%">信息</td>
        <td>操作</td>
    </tr>
    <tr>
        <td width="25%">菜品编号</td><td>${item.itemId}</td>
    </tr>
    <tr>
    <td width="25%">菜品名</td><td>${item.itemName}</td>
    </tr>
    <tr>
    <td width="25%">菜品价格</td><td>${item.itemPrice}</td>
    </tr>
    <tr>
    <td width="25%">菜品配图</td><td><img src="${item.itemPic}" /></td>
    </tr>
    <tr>
    <td width="25%">菜品描述</td><td>${item.itemDesc}</td>
    </tr>
    <tr>
        <td width="10%">所属类型</td><td>${item.itemType}</td>
    </tr>
</table>
</body>
</html>
