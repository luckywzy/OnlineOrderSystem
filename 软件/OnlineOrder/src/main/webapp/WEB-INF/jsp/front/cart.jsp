<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>我的购物车</title>
    <meta name="author" content="zongyu.wang"/>
    <link href="/css/front/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/front/public.js"></script>
    <script type="text/javascript" src="/js/front/jquery.js"></script>
    <script type="text/javascript" src="/js/front/jqpublic.js"></script>
    <script type="text/javascript" src="/js/front/cart.js"></script>
</head>
<body>

<%@include file="topnav.jsp"%>
<!--Start content-->
<form action="#">
    <div class="gwc" style=" margin:auto;">
        <table cellpadding="0" cellspacing="0" class="gwc_tb1">
            <tr>
                <td class="tb1_td1"><input id="Checkbox1" type="checkbox" class="allselect"/></td>
                <td class="tb1_td1">全选</td>
                <td class="tb1_td3">商品</td>
                <td class="tb1_td4">原价</td>
                <td class="tb1_td5">数量</td>
                <td class="tb1_td6">单价</td>
                <td class="tb1_td7">操作</td>
            </tr>
        </table>

        <c:forEach items="${itemDetailDtos}" var="itemDetailDto" varStatus="status">
            <table cellpadding="0" cellspacing="0" class="gwc_tb2" id="table1">
                <tr>
                    <td colspan="7" class="shopname Font14 FontW">${itemDetailDto.enterpriseCompanyName}</td>
                </tr>
                <tr>
                    <td class="tb2_td1"><input type="checkbox" value="${itemDetailDto.itemPrice}" name="newslist" id="newslist-1"/></td>
                    <td class="tb2_td2"><a href="detailsp.jsp" target="_blank"><img src="${itemDetailDto.itemPic}"/></a>
                    </td>
                    <td class="tb2_td3"><a href="detailsp.jsp" target="_blank">${itemDetailDto.itemName}</a></td>
                    <td class="tb1_td4"><s>￥${itemDetailDto.itemPrice}</s></td>
                    <td class="tb1_td5"><input id="min1" name="" style="width:30px; height:30px;border:1px solid #ccc;"
                                               type="button" value="-"/>
                        <input id="text_box1" name="" type="text" value="${itemDetailDto.cnt}"
                               style=" width:40px;height:28px; text-align:center; border:1px solid #ccc;"/>
                        <input id="add1" name="" style="width:30px; height:30px;border:1px solid #ccc;" type="button"
                               value="+"/>
                    </td>
                    <td class="tb1_td6"><label id="total1" class="tot"
                                               style="color:#ff5500;font-size:14px; font-weight:bold;">${itemDetailDto.itemPrice}</label>
                    </td>
                    <td class="tb1_td7"><a href="#" id="delcart1">删除</a></td>
                </tr>
            </table>
        </c:forEach>

        <table cellpadding="0" cellspacing="0" class="gwc_tb3">
            <tr>
                <td class="tb1_td1"><input id="checkAll" class="allselect" type="checkbox"/></td>
                <td class="tb1_td1">全选</td>
                <td class="tb3_td1"><input id="invert" type="checkbox"/>
                    反选
                    <input id="cancel" type="checkbox"/>
                    取消
                </td>
                <td class="tb3_td2 GoBack_Buy Font14"><a href="#" target="_blank">继续购物</a></td>
                <td class="tb3_td2">已选商品
                    <label id="shuliang" style="color:#ff5500;font-size:14px; font-weight:bold;">0</label>
                    件
                </td>
                <td class="tb3_td3">合计(不含运费):<span>￥</span><span style=" color:#ff5500;">
    <label id="zong1" style="color:#ff5500;font-size:14px; font-weight:bold;">0.00</label>
    </span></td>
                <td class="tb3_td4"><span id="jz1">结算</span><a  href="/user/toconfirm_order" style=" display:none;"
                                                               class="jz2" id="jz2" >结算</a></td>
            </tr>
        </table>
    </div>
</form>
<!--End content-->
<div class="F-link">
</div>
<%@include file="footer.jsp"%>
</body>
</html>
