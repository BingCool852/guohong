$(function() {

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
            content: $(".addtop_box")
        });
    });

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
            $('.addnew_content form').attr('action',url+"&id="+da[0]);

            var uenew = UE.getEditor('container' + da[0]);
            var contents = $(".content" + da[0]).html();
            uenew.ready(function() {
                uenew.setContent(contents);
            });
        } else {
            $('.addnew_content form').attr('action',url+"&id=0");
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
            end:function(){
                window.location.reload(); //关闭灯罩时刷新界面
            }
        });
    });
});
