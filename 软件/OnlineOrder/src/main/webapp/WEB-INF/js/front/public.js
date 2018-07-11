/*public js xianhuachneg.com*/
/**
 * @param txt 字符串 为所提示的信息文字
 * @param time 整数 为自动消失的时间 单位为毫秒，如：1000
 * @param status 整数 1和0 为1时为正确信息提示，背景绿色，图片标示为✔符号，为0时，背景红色，标示为✘红叉
 */
function showTips(txt, time, status) {
    var htmlCon = '';
    if (txt != '') {
        if (status != 0 && status != undefined) {
            htmlCon = '<div class="tipsBox" style="width:220px;padding:10px;background-color:rgba(111,73,253,0);border-radius:4px;-webkit-border-radius: 4px;-moz-border-radius: 4px;box-shadow:0 0 3px #ddd inset;-webkit-box-shadow: 0 0 3px #ddd inset;text-align:center;color:#FFF;position:fixed;top:35%;left:50%;z-index:999999;margin-left:-120px;">' + txt + '</div>'; /*<img src="images/ok.png" style="vertical-align: middle;margin-right:5px;" alt="OK，"/>*/
        } else {
            htmlCon = '<div class="tipsBox" style="width:220px;padding:10px;background-color:#000000;border-radius:4px;-webkit-border-radius: 4px;-moz-border-radius: 4px;box-shadow:0 0 3px #ddd inset;-webkit-box-shadow: 0 0 3px #ddd inset;text-align:center;position:fixed;top:35%;left:50%;z-index:999999;margin-left:-120px;color:#FFF">' + txt + '</div>'; /*<img src="images/err.png" style="vertical-align: middle;margin-right:5px;" alt="Error，"/>*/
        }
        $('body').prepend(htmlCon);
        if (time == '' || time == undefined) {
            time = 1500;
        }
        setTimeout(function () {
            $('.tipsBox').remove();
        }, time);
    }
}

    /*Tab Search style*/
function selectsearch(theA, word) {
    obj = document.getElementById("selectsearch").getElementsByTagName("a");
    $("#search_type").val(word);
    for (var i = 0; i < obj.length; i++) {
        obj[i].className = '';
    }
    theA.className = 'choose';
    if (word == 'restaurant_name') {

        document.getElementById('main_a_serach').action = "/search_restaurant.html";//Test url
    } else if (word == 'food_name') {
        document.getElementById('main_a_serach').action = "/search_food.html";//Test url
    }
}

function sub_search() {
    var word = $("#search_type").val();

    if (word == 'restaurant_name') {

        $('#main_a_serach').action = "/search_restaurant.html";//Test url
    } else if (word == 'food_name') {
        $('#main_a_serach').action = "/search_food.html";//Test url
    }
    $('#main_a_serach').submit();
}

//INDEX TAB LIST
function getQueryVariable(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        if (pair[0] == variable) {
            return pair[1];
        }
    }
    return (false);
}

window.onload = function () {
    var oLi = document.getElementById("Indextab").getElementsByTagName("li");
    var oUl = document.getElementById("Indexcontent").getElementsByTagName("ul");

    for (var i = 0; i < oLi.length; i++) {
        oLi[i].index = i;
        oLi[i].onclick = function () {
            for (var n = 0; n < oLi.length; n++) oLi[n].className = "";
            this.className = "current";
            for (var n = 0; n < oUl.length; n++) oUl[n].style.display = "none";
            oUl[this.index].style.display = "block"
        }
    }
    if (2 == getQueryVariable("type")) {

       oLi[1].click();
    }
}


/*change radio background color*/
function changeColor(arg) {
    var rdCount = document.getElementsByName("rdColor").length;
    for (i = 1; i <= rdCount; i++) {
        document.getElementById("style" + i).style.fontWeight = "normal";
        document.getElementById("style" + i).style.backgroundColor = "";
        document.getElementById("style" + i).style.boxShadow = "none";
        document.getElementById("style" + i).style.border = "none";
    }
    document.getElementById("style" + arg).style.backgroundColor = "#fff5cc";
    document.getElementById("style" + arg).style.fontWeight = "bold";
    document.getElementById("style" + arg).style.boxShadow = "3px 2px 10px #dedede";
    document.getElementById("style" + arg).style.border = "1px #ffe580 solid";

    //设置订单提交的地址ID
    var id = arg;


}


function login_f() {
    var username = $("#username").val();
    var password = $("#password").val();
    var data = {"username": username, "password": password};
    $("#login_btn").click(function () {
        $.ajax({
            url: "/userlogin",
            type:
                "POST",
            data: data,
            dataType: "json",
            success: function (data) {
                if (data.status == 0) {
                    //成功跳转首页
                    window.location.href = "/home";
                }
            },
            error: function (data) {
                if (data.status != 0) {
                    showTips(data.msg);
                }
            }
        })
    })
}

/**
 * 分页操作
 * @param currentPage
 */
function changeCurrentPage(currentPage) {
    //var data={"curpage":currentPage};
    window.location.href = "/home?curpage=" + currentPage + "&type=1";

}

function changeCurrentPage2(currentPage) {
    //var data={"curpage":currentPage};
    window.location.href = "/home?curpage=" + currentPage + "&type=2";


}

function registerSub() {

    $.ajax({
        url: "/register.do",
        type:
            "POST",
        data: $('#registerForm').serialize(),
        dataType: "json",
        success: function (data) {
            if (data.status == 0) {
                //成功跳转首页
                showTips(data.msg);
                window.location.href = "/login.html";
            } else {
                showTips(data.msg);

            }
        },
        error: function (data) {
            if (data.status != 0) {
                showTips(data.msg);
            }
        }
    })
}

/**
 * 登录提交
 */
function doLogin() {
    $.ajax({
        url: "/userlogin",
        type:
            "POST",
        data: $('#user_form').serialize(),
        dataType: "json",
        success: function (data) {
            if (data.status == 0) {
                //成功跳转首页
                showTips(data.msg,5000,1);
                window.location.href = "/home";
            } else {
                //alert(data.msg);
                showTips(data.msg,1000,0);
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
 * 注销用户
 */
function quit() {
    var con = confirm("确定注销用户？");
    if(con == false){
        return;
    }
    $.ajax({
        url: "/quit",
        type:
            "POST",
        dataType: "json",
        success: function (data) {
            if (data.status == 0) {
                //成功跳转首页
                window.location.href = "/";
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
