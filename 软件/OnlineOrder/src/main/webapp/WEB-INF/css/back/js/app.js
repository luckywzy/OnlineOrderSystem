(function($) {
  'use strict';

  $(function() {
    var $fullText = $('.admin-fullText');
    $('#admin-fullscreen').on('click', function() {
      $.AMUI.fullscreen.toggle();
      $.AMUI.fullscreen.isFullscreen ? $fullText.text('关闭全屏') : $fullText.text('开启全屏');
    });
  });
})(jQuery);


function sub_leaveWordsReply(orderid) {
    var data = {"orderid":orderid,"reply":$('#reply').val()};
    $.ajax({
        url: '/admin/order/replyleavewords',
        type: 'post',
        dataType: "json",
        data: data,
        success: function (data) {
            if (data.status == 0) {
                window.location.href="/admin/admin-pre-order.html";
            } else {
                //alert(data.Msg);
            }
        }
    });
}

/**
 * 管理员登录
 * @private
 */
function _admin_login() {
    var username = $("#username").val();
    var password = $("#password").val();
    var data = {"username": username, "password": password};
        $.ajax({
            url: "/admin/login",
            type:
                "POST",
            data: data,
            dataType: "json",
            success: function (data) {
                if (data.status == 0) {
                    //成功跳转首页
                    window.location.href = "/admin/admin-index.html";
                }else {
                    alert(data.msg);
                }
            },
            error: function (data) {
                if (data.status != 0) {
                    alert(data.msg);
                }
            }
        })
}
function adminQuit(){
    var con = confirm("确定注销用户？");
    if(con == false){
        return;
    }
    $.ajax({
        url: "/admin/quit",
        type:
            "POST",
        dataType: "json",
        success: function (data) {
            if (data.status == 0) {
                //成功跳转首页
                window.location.href = "/admin/admin-login.html";
            } else {
                //alert(data.msg);
                showTips(data.msg,1000,1);
            }
        },
        error: function (data) {
            if (data.status != 0) {
                showTips(data.msg,1000,0);
            }
        }
    })
}




/**
 * 分页
 * @param currentPage
 */
function changeCurrentPage(currentPage) {
    //var data={"curpage":currentPage};
    window.location.href = "/admin/admin-pre-order.html?curpage=" + currentPage;

}
function changeCurrentPage1(currentPage) {
    //var data={"curpage":currentPage};
    window.location.href = "/admin/admin-dis-order.html?curpage=" + currentPage;

}
function changeCurrentPage2(currentPage) {
    //var data={"curpage":currentPage};
    window.location.href = "/admin/admin-fin-order.html?curpage=" + currentPage;

}
function changeCurrentPage3(currentPage) {
    //var data={"curpage":currentPage};
    window.location.href = "/admin/admin-item-manager.html?curpage=" + currentPage;

}