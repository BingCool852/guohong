window.onload = function() {
    var menu = document.getElementById('menu'),
        ps = menu.getElementsByTagName('p'),
        uls = menu.getElementsByTagName('ul');
    for (var i = 0; i < ps.length; i++) {
        ps[i].id = i;
        ps[i].onclick = function() {
            var ul = uls[this.id];
            if (ul.style.display == 'block') {
                ul.style.display = 'none';
            } else {
                ul.style.display = 'block';
            }
        }
    }
}

function aclick(value) {
    // var str = "iframe[name=" + value + "]"; 
    // if($(str).css('display','block')){
    //     str2 = "iframe[name!=" + value + "]";
    //     $(str2).css('display','none');
    //     $('.content_welcome').css('display','none');
    // }
    var html = '<iframe name="'+value+'" scrolling=no frameborder=0 width=100% height=100% marginheight=0 marginwidth=0 src="admin.php?controller='+value+'Set&method=index" >';
    if($('.content_welcome').css('display','none')){
        $('.content_box_right').html(html);
    }
}

function aclick2(value) {
    var html = '<iframe name="'+value+'" scrolling=no frameborder=0 width=100% height=100% marginheight=0 marginwidth=0  src="admin.php?controller=common&method=index&mark='+value+'" >';
    if($('.content_welcome').css('display','none')){
        $('.content_box_right').html(html);
    }
}

