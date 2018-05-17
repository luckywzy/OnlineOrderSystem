<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>不错哦订餐-注册</title>
<meta name="author" content="DeathGhost"/>
 <link href="/css/front/style.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="/js/front/public.js"></script>
 <script type="text/javascript" src="/js/front/jquery.js"></script>
 <script type="text/javascript" src="/js/front/jqpublic.js"></script>
</head>
<body>
<%@include file="topnav.jsp"%>
<!--Start content-->
<section class="Psection MT20">
 <form>
  <table class="Register">
  <tr>
  <td width="40%" align="right" class="FontW">用户名：</td>
  <td><input type="text" name="" required autofocus></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">密码：</td>
  <td><input type="password" name="" required></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">再次确认：</td>
  <td><input type="password" name="" required></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">电子邮件：</td>
  <td><input type="email" name="" required></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">手机号码：</td>
  <td><input type="text" name="" required pattern="[0-9]{11}"></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">手机校验码：</td>
  <td><input type="text" name="" required pattern="[0-9]{6}"></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">验证码：</td>
  <td><input type="text" name="" required><img src="upload/captcha.png" style="margin-left:8px; vertical-align:bottom" width="83" height="36"></td>
  </tr>
  <tr>
  <td width="40%" align="right"></td>
  <td><input type="submit" name="" class="Submit_b" value="注 册">( 已经是会员，<a href="login.jsp" class="BlueA">请登录</a> )</td>
  </tr>
  </table>
 </form>
</section>

<%@include file="footer.jsp"%>
</body>
</html>
