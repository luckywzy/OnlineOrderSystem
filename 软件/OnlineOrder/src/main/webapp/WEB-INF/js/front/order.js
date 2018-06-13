/**
 * 添加新地址
 */
/*function add_new_address() {
    $('#new_address').click(function () {
        $.ajax({
            url: "/user/add_address",
            type:
                "POST",
            data:$('#address_form').serialize(),
            contentType:"application/json",
            dataType:"json",
            success:function (data) {
                if(data.status == 0){
                    //重新加载页面
                    location.reload(true);
                }
            },
            error:function (data) {
                if(data.status != 0){
                    alert(data.msg);
                }
            }
        })
    })

}*/




/**
 * 订单_提交
 */
function odr_sub() {
   /* alert("提交成功");
    $('#order_submit').click(function () {
        $.ajax({
            url: "/user/order/create_order",
            type:
                "POST",
            data:$('#order_form').serialize(),
            contentType:"application/json"
        })
    })*/
   var id = $('input:radio:checked').val();
    /*document.getElementById("addressid").setAttribute("value", id);*/
    $("#addressid").val(id);
   $("#order_form").submit();
}

/**
 * 添加评论
 */
function access_sub() {
    var msg = $("#access").val();
    if(msg.length < 8){
        showTips("再多写些吧");
        return;
    }
    var orderId = $("#orderId").val();
    var data = {"orderId":orderId,"access":msg};
    $.ajax({
        url: "/user/order/create_access",
        type:
            "POST",
        data:data,
        dataType:"json",
        success:function (res) {
            if(res.status == 0){
                //评论成功跳转到订单页面
                showTips(res.msg);
                window.location.href="user_orderlist.html";
            }

        },
        error:function (res) {
            if(res.status != 0){
                showTips(res.msg);
            }
        }
    })

}

/**
 * 取消订单
 */
function cancelOrder(orderId) {
    var con = confirm("确定删除正在准备的订单？");
    if(con == false){
        return;
    }
    var data = {"orderId":orderId};

    $.ajax({
        url: "/user/order/cancel_order",
        type:
            "POST",
        data:data,
        dataType:"json",
        success:function (res) {
            if(res.status == 0){
                //评论成功跳转到订单页面
                alert(res.msg);
                location.reload(true);
            }
        },
        error:function (res) {
            if(res.status != 0){
                alert(res.msg);
            }
        }
    })
}