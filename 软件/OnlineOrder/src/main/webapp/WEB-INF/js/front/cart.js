$(document).ready(function () {
    // 全选
    $(".allselect").click(function () {
        $(".gwc_tb2 input[name=newslist]").each(function () {
            $(this).attr("checked", true);
        });
        GetCount();
    });

    //反选
    $("#invert").click(function () {
        $(".gwc_tb2 input[name=newslist]").each(function () {
            if ($(this).attr("checked")) {
                $(this).attr("checked", false);

            } else {
                $(this).attr("checked", true);

            }
        });
        GetCount();
    });
    //取消
    $("#cancel").click(function () {
        $(".gwc_tb2 input[name=newslist]").each(function () {
            $(this).attr("checked", false);

        });
        GetCount();
    });

    // 所有复选(:checkbox)框点击事件
    $(".gwc_tb2 input[name=newslist]").click(function () {
        if ($(this).attr("checked")) {

        } else {

        }
    });

    // 输出
    $(".gwc_tb2 input[name=newslist]").click(function () {

        GetCount();
    });
});

//******************
function GetCount() {
    var conts = 0.0;
    var aa = 0;
    $(".gwc_tb2 input[name=newslist]").each(function () {
        if ($(this).attr("checked")) {
            for (var i = 0; i < $(this).length; i++) {
                var cnt = $(this).parent().next().next().next().next().children().siblings(":input[name=selectCnt]").val();
                var price = $(this).val();
                conts += parseInt(cnt) *  parseFloat(price);
                aa += parseInt(cnt);
                var url = $(this).parent().next().children().first().attr("href");
                var id = getURLParam(url,"itemId");
                writingCookie(id,cnt);
            }
        }
    });

    $("#shuliang").text(aa);
    $("#zong1").html((conts).toFixed(2));
    $("#jz1").css("display", "none");
    $("#jz2").css("display", "block");

}

function getURLParam(url,variable) {
    var query = url;
    var vars = query.split("?");
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        if (pair[0] == variable) {
            return pair[1];
        }
    }
    return (false);
}


function writingCookie(itemId,cnt){
    //请求
    var data = {"itemId":itemId,"cnt":cnt};
    $.ajax({
        url: "/user/changeCookie",
        type:
            "POST",
        data:
            data
    })
}

//ADD:对删除链接进行处理
$(document).ready(function () {
    /*$("#delcart1").click(function () {
        $("#table1").remove();
    });
    $("#delcart2").click(function () {
        $("#table2").remove();
    });*/
});
/*<
!---商品加减算总数--
-- >*/

$(function () {

    $(":input[name=min1]").click(function () {
        var  cnt =$(this).siblings(":input[name=selectCnt]");
        cnt.val(parseInt(cnt.val()) -1 );
        cnt.val(1);
        GetCount();
    });

    $(":input[name=add1]").click(function () {
        var  cnt =$(this).siblings(":input[name=selectCnt]");
        cnt.val(parseInt(cnt.val()) + 1 );

        GetCount();
    })

});
/*< !---总数--
-- >*/
$(function () {
    $(".quanxun").click(function () {
        setTotal();
        //alert($(lens[0]).text());
    });

    function setTotal() {
        var len = $(".tot");
        var num = 0.0;
        for (var i = 0; i < len.length; i++) {
            num = parseFloat(num) + parseFloat($(len[i]).text());

        }
        //alert(len.length);
        $("#zong1").text(parseFloat(num).toFixed(2));
        $("#shuliang").text(len.length);
    }

    //setTotal();
})
//add to cart shoppage
var data = {"total": 0, "rows": []};
var totalCost = 0;

/*$(function () {
    $('#cartcontent').datagrid({
        singleSelect: true
    });
    $('.item').draggable({
        revert: true,
        proxy: 'clone',
        onStartDrag: function () {
            $(this).draggable('options').cursor = 'not-allowed';
            $(this).draggable('proxy').css('z-index', 2);
        },
        onStopDrag: function () {
            $(this).draggable('options').cursor = 'move';
        }
    });
    $('.cart').droppable({
        onDragEnter: function (e, source) {
            $(source).draggable('options').cursor = 'auto';
        },
        onDragLeave: function (e, source) {
            $(source).draggable('options').cursor = 'not-allowed';
        },
        onDrop: function (e, source) {
            var name = $(source).find('p:eq(0)').html();
            var price = $(source).find('p:eq(1)').html();
            addProduct(name, parseFloat(price.split('￥')[1]));
        }
    });
});*/

function addProduct(name, price) {
    function add() {
        for (var i = 0; i < data.total; i++) {
            var row = data.rows[i];
            if (row.name == name) {
                row.quantity += 1;
                return;
            }
        }
        data.total += 1;
        data.rows.push({
            name: name,
            quantity: 1,
            price: price
        });
    }

    add();
    totalCost += price;
    $('#cartcontent').datagrid('loadData', data);
    $('div.cart .total').html('共计金额: ￥' + totalCost);
}

/**
 * 传递结算的金额的到结算页面
 */
function toConfirmOrder() {
    //alert($('#zong1').html());
    var total = $('#zong1').html();
    $.ajax({
        url: "/user/toconfirm_order",
        type:
            "POST",
        data:
            {"total":total},
        contentType:"application/json",
        success:function (data) {
          if(data.status == 0){
              ;
          }
        },
        error:function (data) {
            if(data.status != 0){
                showTips(data.msg);
            }
        }
    })
}

/**
 * 从店铺直接添加商品到购物车
 */
function addItemToCartFromShop(itemId) {

    var data = {"itemId":itemId,"Number":1};
    $.ajax({
        url: '/user/additemtocart',
        type: 'post',
        dataType: "json",
        data: data,
        /* beforeSubmit: function () {
         },*/
        success: function (data) {
            if (data.status == 0) {
                showTips(data.msg);
            } else {
                //showTips(data.Msg);
            }
        }
    });
}

function del_item_from_cart(itemId) {
    var data = {"itemId":itemId};
    $.ajax({
        url: '/user/delitemfromcart',
        type: 'post',
        dataType: "json",
        data: data,
        success: function (data) {
            if (data.status == 0) {
                showTips(data.msg);
                location.reload(true);
            } else {
                showTips(data.msg);
            }
        }
    });
}