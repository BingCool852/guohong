$(function() {

    /*栏目页显示子级栏目*/
    $('.showchild').on('click', function() {

        var id = $(this).prev('td').children().val();
        var childs = '.a' + id;
        if ($(childs).css('display') == 'table-row') {
            $($(this).parent()).css('background-color', "#fff");
            $(childs).css('display', 'none');
        } else {
            $($(this).parent()).css('background-color', "#8BC34A");
            $(childs).css('display', 'table-row');
        }
        // $.post(
        //     "admin.php?controller=common&method=showChildMenu", { pid: id },
        //     function(data) {
        //         if (data != "null") {
        //             var datas = eval(data);
        //             var pid = "#" + datas[0]['pid'];
        //             var html;
        //             for (var i in datas) {

        //                 if (datas[i].status == 1) {
        //                     datas[i].status = "启用";
        //                 } else {
        //                     datas[i].status = "停用";
        //                 }

        //                 if (datas[i].type == 1) {
        //                     datas[i].type = "单页";
        //                 } else if (datas[i].type == 2) {
        //                     datas[i].type = "列表页";
        //                 }
        //                 html = "<tr style='background-color:#AEDBB0'><td>|一&nbsp;<input type='checkbox' value='" + datas[i].id + "'></td><td>" + datas[i].name + "</td><td>" + datas[i]['sort'] + "</td><td>" + datas[i].type + "</td><td>" + datas[i].status + "</td><td><span class='exchange'>更新栏目</span>&nbsp;&nbsp;<span><a href='#'>删除栏目</a></span></td></tr>";
        //                 $(pid).after(html);
        //             }
        //         }
        //     }, "json"
        // );
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

    /*添加内容弹框*/
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
            // console.log(da);
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
});
