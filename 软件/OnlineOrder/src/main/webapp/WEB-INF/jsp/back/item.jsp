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
        <td width="5%">id</td>
        <td width="25%">菜品名</td>
        <td width="25%">菜品价格</td>
        <td width="25%">菜品配图</td>
        <td width="10%">菜品名</td>
        <td width="10%">菜品操作</td>

    </tr>
    <c:forEach items="${Items }" var="item" varStatus="status">
        <tr
                <c:if test="${status.index % 2 != 0 }">style='background-color:#ECF6EE;'</c:if>>
            <td>${item.id}</td>
            <td>${item.itemName}</td>
            <td>${item.itemPrice}</td>
            <td>${item.itemPic}</td>
            <td><a href="">删除</a></td>
            <td><a href="">修改</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
