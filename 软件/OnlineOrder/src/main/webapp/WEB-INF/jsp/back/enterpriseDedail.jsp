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
    </tr>
    <tr>
    <td width="25%">企业社会信用id</td><td>${tEnterpriseInfo.enterpriseId}</td>
    </tr>
    <tr>
    <td width="25%">企业名</td><td>${tEnterpriseInfo.enterpriseCompanyName}</td>
    </tr>
    <tr>
    <td width="25%">企业联系人</td><td>${tEnterpriseInfo.enterpriseLinkMan}</td>
    </tr>
    <tr>
    <td width="25%">企业联系电话</td><td>${tEnterpriseInfo.enterprisePhoneNum}</td>
    </tr>
    <tr>
        <td width="10%">企业地址</td><td>${tEnterpriseInfo.enterpriseAddress}</td>
    </tr>
    <tr>
    <td width="10%">企业邮箱</td><td>${tEnterpriseInfo.enterpriseEmail}</td>
    </tr>
</table>
</body>
</html>
