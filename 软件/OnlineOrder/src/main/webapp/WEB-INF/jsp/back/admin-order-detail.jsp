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

        <%--<div class="am-cf am-padding">
          <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small></div>
        </div>--%>

        <div class="am-tabs am-margin" data-am-tabs>
            <ul class="am-tabs-nav am-nav am-nav-tabs">
                <li><a href="#tab2">订单详情</a></li>
            </ul>

            <div class="am-tabs-bd">
                <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                    <%--<div class="am-g am-margin-top">
                      <div class="am-u-sm-2 am-text-right">所属类别</div>
                      <div class="am-u-sm-10">
                        <select>
                          <option value="option1">选项一...</option>
                          <option value="option2">选项二.....</option>
                          <option value="option3">选项三........</option>
                        </select>
                      </div>
                    </div>--%>

                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-2 am-text-right">订单编号</div>
                        <div class="am-u-sm-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options" id="option1"> ${orderId}
                                </label>
                                <%--<label class="am-btn am-btn-default am-btn-xs">
                                  <input type="radio" name="options" id="option2"> 待审核
                                </label>
                                <label class="am-btn am-btn-default am-btn-xs">
                                  <input type="radio" name="options" id="option3"> 不显示
                                </label>--%>
                            </div>
                        </div>
                    </div>

                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-2 am-text-right">订单详情</div>
                        <div class="am-u-sm-10">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-title">订单产品</th>
                                    <th class="table-title">订购数量</th>
                                    <th class="table-type">单价</th>
                                    <th class="table-author">小计</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${orderContentDtoList}" var="orderContentDto">
                                    <tr>
                                        <td><a href="/admin/admin-modify-item.html?itemId=${orderContentDto.itemId}"
                                        >${orderContentDto.itemName}</a></td>
                                        <td>${orderContentDto.cnt}</td>
                                        <td>￥${orderContentDto.itemPrice}</td>
                                        <td>￥${orderContentDto.total}</td>
                                        <!--如果未付款，则显示立即付款按钮-->
                                        <td style="display:none;"><a href="#" target="_blank">立即付款</a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </div>
                    </div>

                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-2 am-text-right">配送费用</div>
                        <div class="am-u-sm-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options" id="option1"> ￥${dispatchPrice}
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-2 am-text-right">共计金额</div>
                        <div class="am-u-sm-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options" id="option1"> ￥${orderPrice}
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-2 am-text-right">订单留言</div>
                        <div class="am-u-sm-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options" id="option1"> ${leaveWords}
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-2 am-text-right">收件地址</div>
                        <div class="am-u-sm-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options"
                                           id="option1"> ${address.province} ${address.city} ${address.district} ${address.detailAddr}
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-2 am-text-right">收件人</div>
                        <div class="am-u-sm-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options" id="option1"> ${address.consignee}
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-2 am-text-right">电话</div>
                        <div class="am-u-sm-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options" id="option1"> ${address.phoneNum}
                                </label>
                            </div>
                        </div>
                    </div>
                        <div class="am-g am-margin-top-sm">
                            <div class="am-u-sm-2 am-text-right">
                                回复订单留言
                            </div>
                            <div class="am-u-sm-4 am-u-end">
                                <input id="reply" name="reply" type="text"  class="am-input-sm"
                                       required>
                                <input name="sub_orderleaves_btn" type="button"  class="am-input-sm" value="提交" onclick="sub_leaveWordsReply('${orderId}')"
                                       required>
                            </div>
                        </div>
                </div>
            </div>
        </div>

        <div class="am-margin">
            <%--<button type="button" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
            <button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>--%>
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
</body>
</html>
