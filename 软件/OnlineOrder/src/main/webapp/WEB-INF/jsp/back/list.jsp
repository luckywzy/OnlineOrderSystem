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
    <title>管理页面</title>
    <script type="text/javascript"
            src="/js/commons/jQuery.js"></script>
    <script type="text/javascript"
            src="/js/list.js"></script>
</head>
<body>
<table width="80%" align="center">
    <tr>
        <td width="5%">id</td>
        <td width="25%">企业ID</td>
        <td width="25%">企业名称</td>
        <td width="25%">企业联系人</td>
        <td width="10%">企业相关操作</td>
        <td width="10%">菜品相关操作</td>

    </tr>
    <c:forEach items="${tEnterpriseInfos }" var="tEnterpriseInfo" varStatus="status">
        <tr
                <c:if test="${status.index % 2 != 0 }">style='background-color:#ECF6EE;'</c:if>>
            <td>${tEnterpriseInfo.id}</td>
            <td>${tEnterpriseInfo.enterpriseId}</td>
            <td>${tEnterpriseInfo.enterpriseCompanyName}</td>
            <td>${tEnterpriseInfo.enterpriseLinkMan}</td>
            <td><a href="/enterpriseDedail?id=${tEnterpriseInfo.enterpriseId}">企业相关操作</a></td>
            <td><a href="/itemOfEnterprise?id=${tEnterpriseInfo.enterpriseId}">菜品相关操作</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
