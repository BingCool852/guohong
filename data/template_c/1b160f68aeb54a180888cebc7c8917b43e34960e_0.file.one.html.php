<?php /* Smarty version 3.1.27, created on 2016-03-22 13:16:20
         compiled from "/Applications/MAMP/htdocs/guohong/tpl/admin/common/one.html" */ ?>
<?php
/*%%SmartyHeaderCode:155160860356f1379459b3b0_67155201%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1b160f68aeb54a180888cebc7c8917b43e34960e' => 
    array (
      0 => '/Applications/MAMP/htdocs/guohong/tpl/admin/common/one.html',
      1 => 1458647840,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '155160860356f1379459b3b0_67155201',
  'variables' => 
  array (
    'mark' => 0,
    'data' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_56f137945c0350_89897700',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_56f137945c0350_89897700')) {
function content_56f137945c0350_89897700 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '155160860356f1379459b3b0_67155201';
?>
<html>

<head>
    <meta http-equiv=”Content-Type” content=”text/html; charset=utf-8″> 
    <?php echo '<script'; ?>
 type="text/javascript" src="resources/admin/js/jquery.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="resources/admin/js/layer.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="resources/admin/js/menu.js"><?php echo '</script'; ?>
>
    <link rel="stylesheet" href="resources/admin/css/admin.css">
    <link rel="stylesheet" href="resources/ueditor/themes/default/css/ueditor.css">
</head>

<body>
    <div class="location">
        <span>当前位置:&nbsp;&nbsp;首页</span>
    </div>
    <div class="content_box_main">
        <div class="input_box_123">
            <form action="admin.php?controller=common&method=addone&mark=<?php echo $_smarty_tpl->tpl_vars['mark']->value;?>
" method="post" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td style="width:10%">首页图片</td>
                        <td style="height:40px">
                            <input name="img1" id="img1" style="display:inline" type="file">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:10%">标题</td>
                        <td>
                            <input type="text" name="title" value="<?php echo $_smarty_tpl->tpl_vars['data']->value[0]['title'];?>
">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:10%">内容</td> 
                        <td>
                            <?php echo '<script'; ?>
 id="container" name="content" type="text/plain" style="height:250px">
                                <?php echo $_smarty_tpl->tpl_vars['data']->value[0]['content'];?>

                            <?php echo '</script'; ?>
>
                        </td>
                    </tr>
                    <tr>
                    <td></td>
                        <td style="height:40px;text-align:right">
                            <input type="submit" value="提交" class="submit_btn">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <!-- 加载编辑器的容器 -->
    <?php echo '<script'; ?>
 type="text/javascript" src="resources/ueditor/ueditor.config.js"><?php echo '</script'; ?>
>
    <!-- 编辑器源码文件 -->
    <?php echo '<script'; ?>
 type="text/javascript" src="resources/ueditor/ueditor.all.min.js"><?php echo '</script'; ?>
>
    <!-- 语言包文件 -->
    <?php echo '<script'; ?>
 type="text/javascript" src="resources/ueditor/lang/zh-cn/zh-cn.js"><?php echo '</script'; ?>
>
    <!-- 实例化编辑器代码 -->
    <?php echo '<script'; ?>
 type="text/javascript">
        var ue = UE.getEditor('container');
    <?php echo '</script'; ?>
>
</body>

</html>
<?php }
}
?>