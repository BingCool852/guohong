$(function() {

    /*栏目页显示子级栏目*/
    $('.showchild').on('click', function() {

        var id = $(this).prev('td').children().val();
        var childs = '.child' + id;
        var span = $(this).children('span');
        if ($(childs).css('display') == 'table-row') {
            $($(this).parent()).css('background-color', "#fff");
            $(childs).css('display', 'none');
            span.text('＋');
        } else {
            $($(this).parent()).css('background-color', "#8BC34A");
            $(childs).css('display', 'table-row');
            span.text('－');
        }
    });

    /*栏目页更新栏目弹框*/
    $('.exchange').on('click', function() {

        var datas = $(this).parent().parent().text().trim().split('\n');
        var da = new Array();
        for (var i = 0; i < datas.length; i++) {
            if (datas[i].trim() == "启用") {
                da[i] = 1;
            } else if (datas[i].trim() == "停用") {
                da[i] = 0;
            } else {
                da[i] = datas[i].trim();
            }
        }
        console.log(da);
        $('input[name=pname]').attr('value', da[9]);
        $('input[name=name]').attr('value', da[0]);
        $('input[name=sort]').attr('value', da[3]);
        $('input[name=type]').attr('value', da[5]);
        $('input[name=url]').attr('value', da[8]);
        $('input[name=id]').attr('value', da[15]);
        if (da[7] == 1) {
            $('input[name=istrue]').attr('checked', 'checked');
        } else {
            $('input[name=istrue]').removeAttr('checked');
        }

        layer.open({
            type: 1,
            dialog: {
                msg: '右下角消息提示',
                btns: 2,
            },
            title: '更新栏目',
            area: ['65%', '75%'],
            shadeClose: true, //点击遮罩关闭
            content: $(".update_box")
        });
    });

    /*栏目页添加栏目弹框*/
    $('.add').on('click', function() {

        var mark = $(this).text();
        if (mark == "添加顶级导航") {
            $('.pname').attr('value', 0);
        } else {
            var pname = $(this).parent().parent().text().trim().split('\n');
            if (pname[0] != " ") {
                $('.pname').attr('value', pname[0]);
            } else {
                $('.pname').attr('value', 0);
            }
        }
        layer.open({
            type: 1,
            dialog: {
                msg: '右下角消息提示',
                btns: 2,
            },
            title: '添加栏目',
            area: ['65%', '75%'],
            shadeClose: true, //点击遮罩关闭
            content: $(".addtop_box"),
        });
    });

    /*添加管理员弹框*/
    $('.addnew').on('click', function() {

        var mark = $(this).text(),
            url = $('.addnew_content form').attr('action');
        if (mark != "添加新内容") {
            var datas = $(this).parent().parent().text().trim().split('\n');
            var da = new Array();
            for (var i = 0; i < datas.length; i++) {
                if (datas[i].trim() == "启用") {
                    da[i] = 1;
                } else if (datas[i].trim() == "停用") {
                    da[i] = 0;
                } else {
                    da[i] = datas[i].trim();
                }
            }
            $('input[name=title]').attr('value', da[2]);
            $('input[name=abstract]').attr('value', da[8]);
            $('input[name=status]').attr('value', da[11]);

            // 生成ueditor编辑器  并添加内容
            $('.ueditor').html('<script id="container' + da[0] + '" name="content" type="text/plain" style="height:200px"></script>');
            $('.addnew_content form').attr('action', url + "&id=" + da[0]);

            var uenew = UE.getEditor('container' + da[0]);
            var contents = $(".content" + da[0]).html();
            uenew.ready(function() {
                uenew.setContent(contents);
            });
        } else {
            $('.addnew_content form').attr('action', url + "&id=0");
            $('.ueditor').html('<script id="container0" name="content" type="text/plain" style="height:200px"></script>');
            var uenew = UE.getEditor('container0');
        }
        layer.open({
            type: 1,
            dialog: {
                msg: '右下角消息提示',
                btns: 2,
            },
            title: '添加新内容',
            area: ['85%', '80%'],
            shadeClose: true, //点击遮罩关闭
            content: $(".addnew_content"),
            end: function() {
                window.location.reload(); //关闭灯罩时刷新界面
            }
        });
    });

    $('.addadmin').on('click', function() {
        layer.open({
            type: 1,
            dialog: {
                msg: '右下角消息提示',
                btns: 2,
            },
            title: '添加管理员',
            area: ['65%', '75%'],
            shadeClose: true, //点击遮罩关闭
            content: $(".addadmin_box"),
            end: function() {
                window.location.reload(); //关闭灯罩时刷新界面
            }
        });
    });

    //输入密码对比
    $('#pwd2').blur(function() {
        var pwd = $('#pwd').val();
        var pwd2 = $(this).val();
        if (pwd != pwd2) {
            alert('两次输入的密码不一样，请检查');
        }
    });

    //管理员信息修改
    $('.role_exchange').on('click', function() {
        var datas = $(this).parent().parent().text().trim().split('\n');
        var da = new Array();
        for (var i = 0; i < datas.length; i++) {
            if (datas[i].trim() == "启用") {
                // $('.exchangeadmin_box input[name=status]').attr({ 'checked': 'checked', 'value': 1 });
                $('.exchangeadmin_box input[name=status]').attr('checked','checked');

            } else if (datas[i].trim() == "停用") {
                $('.exchangeadmin_box input[name=status]').removeAttr('checked');

            } else {
                da[i] = datas[i].trim();
            }
        }
        $('.exchangeadmin_box input[name=name]').attr('value', da[0]);
        $('.exchangeadmin_box input[name=uid]').attr('value', da[8]);

        if (da[2] == "超级管理员"){
            $('.exchangeadmin_box input[name=supadmin]').attr('checked', 'checked');
        }
        var res = da[7].split(',');
        for (var i in res) {
            if ($('.role_menu[value=' + res[i] + ']')) {
                $('.role_menu[value=' + res[i] + ']').attr('checked', 'checked');
            }
        }

        layer.open({
            type: 1,
            dialog: {
                msg: '右下角消息提示',
                btns: 2,
            },
            title: '修改管理员信息 ',
            area: ['65%', '75%'],
            shadeClose: true, //点击遮罩关闭
            content: $(".exchangeadmin_box"),
            end: function() {
                window.location.reload(); //关闭灯罩时刷新界面
            }
        });
    });

    $('#oldpwd').blur(function(){
        var oldpwd = $(this).val(),
            uid = $('input[name=uid]').val();
        $.post(
            "admin.php?controller=roleSet&method=repwd", { oldpwd: oldpwd,uid:uid},
            function(data) {
                if (data == 0 ){
                    alert('旧密码不正确，请重新输入');
                }
            }, "json"
        );
    });
    // $('#supadmin').on('click', function() {
    //     var val = $(this).val();
    //     if (val == 1) {
    //         $(this).val(0);
    //         $('input[name="role_menu[]"]').attr('checked', 'checked');
    //     }
    //     if (val == 0) {
    //         $(this).val(1);
    //         $('input[name="role_menu[]"]').removeAttr('checked');
    //     }
    // });
});
