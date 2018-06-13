// language=JQuery-CSS
/**
 * 加入购物车
 */
function addItemToCart() {
    $.ajax({
        url: '/user/additemtocart',
        type: 'post',
        dataType: "json",
        data: $('#addCartForm').serialize(),
       /* beforeSubmit: function () {
        },*/
        success: function (data) {
            if (data.status == 0) {
                showTips(data.msg);
            } else {
                //alert(data.Msg);
            }
        },
        clearForm: false,//禁止清楚表单
        resetForm: false //禁止重置表单
    });
}