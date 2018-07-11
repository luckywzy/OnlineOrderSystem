<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8"/>
    <title>错误页面</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="${pageContext.request.contextPath}/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>

</head>
<body>

<%@include file="topnav.jsp"%>
<!--Start content-->
<section class="Psection MT20">
  <h1>404!</h1>
    <h2>不好意思，服务器出了些小差，正在修复中。。。。。。</h2>
</section>
<!--End content-->
<div class="F-link">
</div>

<%@include file="footer.jsp"%>
</body>
</html>
