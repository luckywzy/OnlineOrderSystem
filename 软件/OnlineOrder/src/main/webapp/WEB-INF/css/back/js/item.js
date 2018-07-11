/**
 * 更新item
 */
function itemmodify() {
    $.ajax({
        url: "/admin/item/modify",
        type:
            "POST",
        data: $('#itemform').serialize(),
        dataType: "json",
        success: function (data) {
            if (data.status == 0) {
                //重新加载页面
                alert(data.msg);
                window.location.href = "/admin/admin-item-manager.html";
            }
        },
        error: function (data) {
            if (data.status != 0) {
                alert(data.msg);
            }
        }
    })
}

/**
 * 删除item
 * @param itemId
 */
function deleteItem(itemId) {
    var con = confirm("确定删除？");
    if (con == false) {
        return;
    }

    var data = {"itemId": itemId};
    $.ajax({
        url: "/admin/item/delete",
        type:
            "POST",
        data: data,
        success: function (data) {
            if (data.status == 0) {
                alert(data.msg);
                window.location.href("/admin/admin-item-manager.html");
            }
        },
        error: function (data) {
            if (data.status != 0) {
                alert(data.msg);
            }
        }
    })
}

function newItem() {
    var con = confirm("确定提交？");
    if (con == false) {
        return;
    }

    $.ajax({
        url: "/admin/item/add",
        type:
            "POST",
        data: $('#additemform').serialize(),
        dataType: "json",
        success: function (data) {
            if (data.status == 0) {
                alert(data.msg);
                window.location.href("/admin/admin-item-manager.html");
            }
        },
        error: function (data) {
            if (data.status != 0) {
                alert(data.msg);
            }
        }
    })

}

function uploadFile() {
    var formData = new FormData($('#imgForm')[0]);
    $.ajax({
        url: "/admin/item/uploadImg",
        data: formData,
        type: "POST",
        dataType: "json",
        cache: false,//上传文件无需缓存
        processData: false,//用于对data参数进行序列化处理 这里必须false
        contentType: false, //必须
        success: function (res) {
            if(res.status == 0)
            alert("上传完成!");
            var data = res.data;
            var path = data.imgPath;
            alert(path);
            $("#itemPic").val(path);
            alert(('#itemPic').val());
        }
    })
}