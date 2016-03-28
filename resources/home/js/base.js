$(function() {

    $('.content_box_menu a:first').addClass('select');

    $('.content_box_menu a').on('click', function() {
        $('.content_box_menu a').removeClass('select');
        $(this).addClass('select');

        var value = $(this).attr('value'),
            url = "home.php?controller=common&method=getnewcon";

        $.post(
            url, { value: value },
            function(data) {

                var datas = eval(data);
                if (datas.type != 2) {
                    if (datas.con == "nodata") {
                        var html = "<div class='cont p40'>没有数据......</div>";
                        $('.cont').replaceWith(html);

                    } else {
                        for (var i in datas) {
                            var content = datas[i]['content'];
                            var html = "<div class='cont p40'>" + content + "</div>";
                            $('.cont').replaceWith(html);
                        }
                    }
                } else {
                    if (datas.con == "nodata") {
                        var html = "<div>没有数据......</div>";
                        $('.clear').html(" ");
                        $('.clear').append(html);

                    } else {
                        $('.clear').html(" ");
                        for (var i in datas) {
                            if (datas[i]['id'] != undefined) {
                                var datetime = unix_to_datetime(datas[i]["exchangetime"]);

                                var html = '<div class="team"><div class="txt"><h3><span class="fr time">' + datetime + '</span><a class="article-title" href="home.php?controller=common&method=allcon&mark=' + datas[i]['url'] + '">' + datas[i]['title'] + '</a> </h3> <div class = "m" >' + datas[i]['content'] + '</div> <a href="home.php?controller=common&method=allcon&mark=' + datas[i]['url'] + '"class="more">了解更多</a></div><div class="img"><a href = "home.php?controller=common&method=allcon&mark=' + datas[i]['url'] + '"> <img src="' + datas[i]['src'] + '" width = "318" height = "210"></a></div></div>';
                                $('.clear').append(html);
                            }
                        }

                    }
                }

            }, "json"
        );
    });

});
