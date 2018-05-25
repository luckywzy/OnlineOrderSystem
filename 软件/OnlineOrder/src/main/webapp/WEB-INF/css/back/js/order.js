

/**
 * 更新
 * @param itemId
 */
function goToDispatch(orderId) {

    var data = {"orderId": orderId};

    $.ajax({
        url: "/admin/order/updateStatus",
        type:
            "POST",
        data: data,
        success: function (data) {
            if (data.status == 0) {
                alert(data.msg);
                window.location.href("/admin/admin-pre-order.html");
            }
        },
        error: function (data) {
            if (data.status != 0) {
                alert(data.msg);
            }
        }
    })
}

function finish(orderId) {

    var data = {"orderId": orderId};

    $.ajax({
        url: "/admin/order/finish",
        type:
            "POST",
        data: data,
        success: function (data) {
            if (data.status == 0) {
                alert(data.msg);
                window.location.href("/admin/admin-dis-order.html");
            }
        },
        error: function (data) {
            if (data.status != 0) {
                alert(data.msg);
            }
        }
    })
}