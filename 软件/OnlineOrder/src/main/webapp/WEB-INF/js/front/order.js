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
    alert("提交成功");
    $('#order_submit').click(function () {
        $.ajax({
            url: "/user/order/create_order",
            type:
                "POST",
            data:$('#order_form').serialize(),
            contentType:"application/json"
        })
    })
}