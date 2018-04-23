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
    <title>菜品新增</title>
    <script type="text/javascript"
            src="/js/commons/jQuery.js"></script>
    <script type="text/javascript"
            src="/js/list.js"></script>
</head>
<body>

<form>
    <table width="80%" align="center">
        <tr>
            <td width="25%">菜品名</td>
            <td><input type="text" name="itemName" minlength="3" maxlength="20"/></td>
        </tr>
        <tr>
            <td width="25%">菜品价格</td>
            <td><input type="number" name="itemPrice" min="0" max="100000"/></td>
        </tr>
        <tr>
            <td width="10%">菜品描述</td>
            <td><textarea name="itemDesc"/></td>
        </tr>
        <tr>
            <td width="10%">所属类型</td>
            <%--TODO：是一个下拉框需要从后台获取--%>
            <td><select id="itemType">

            </select></td>
        </tr>
    </table>
</form>
</body>
</html>
