<?php /* Smarty version 3.1.27, created on 2016-03-22 13:36:50
         compiled from "/Applications/MAMP/htdocs/guohong/tpl/admin/common/two.html" */ ?>
<?php
/*%%SmartyHeaderCode:9079034356f13c62880236_97060502%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fb3aa9ce6612124551845274ea0964cd444ceb4d' => 
    array (
      0 => '/Applications/MAMP/htdocs/guohong/tpl/admin/common/two.html',
      1 => 1458650189,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9079034356f13c62880236_97060502',
  'variables' => 
  array (
    'data' => 0,
    'd' => 0,
    'mark' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_56f13c62960107_11089026',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_56f13c62960107_11089026')) {
function content_56f13c62960107_11089026 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_date_format')) require_once '/Applications/MAMP/htdocs/guohong/framework/libs/view/smarty/plugins/modifier.date_format.php';

$_smarty_tpl->properties['nocache_hash'] = '9079034356f13c62880236_97060502';
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
    <link rel="stylesheet" href="resources/admin/css/admin.css">
    <link rel="stylesheet" href="resources/ueditor/themes/default/css/ueditor.css">
</head>

<body>
    <div class="location">
        <span>当前位置:&nbsp;&nbsp;首页</span>
        <span class="addtop addnew">添加新内容</span>
    </div>
    <div class="content_box_main">
        <div>
            <form action="" method="post">
                <table class="input_box_role">
                    <thead>
                        <tr>
                            <th>
                                <input type="checkbox" value="all">
                            </th>
                            <th>序号</th>
                            <th>标题</th>
                            <th>内容</th>
                            <th>状态</th>
                            <th>时间</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (is_array($_smarty_tpl->tpl_vars['data']->value) == false) {?>
                        <tr>
                            <td colspan="7" style="color:red">没有数据，请新添加...</td>
                        </tr> <?php } else { ?> <?php
$_from = $_smarty_tpl->tpl_vars['data']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['d']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['d']->value) {
$_smarty_tpl->tpl_vars['d']->_loop = true;
$foreach_d_Sav = $_smarty_tpl->tpl_vars['d'];
?>
                        <tr>
                            <td>
                                <input type="checkbox" value=<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
>
                            </td>
                            <td><?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
</td>
                            <td>
                                <?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>

                            </td>
                            <td class="content<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
" style="display: none">
                                <?php echo $_smarty_tpl->tpl_vars['d']->value['content'];?>

                            </td>
                            <td>
                                <?php echo $_smarty_tpl->tpl_vars['d']->value['abstract'];?>

                            </td>
                            <td>
                                <?php if ($_smarty_tpl->tpl_vars['d']->value['status'] == 1) {?> 启用 <?php } else { ?> 停用 <?php }?>
                            </td>
                            <td><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['d']->value['exchangetime'],'Y年m月d日 H:i:s');?>
</td>
                            <td>
                                <span class="addnew">修改</span>&nbsp;&nbsp;
                                <a href="#">预览</a>&nbsp;&nbsp;
                                <a href="admin.php?controller=common&method=del&mark=<?php echo $_smarty_tpl->tpl_vars['mark']->value;?>
&id=<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
">删除</a>
                            </td>
                        </tr>
                        <?php
$_smarty_tpl->tpl_vars['d'] = $foreach_d_Sav;
}
?> <?php }?>
                    </tbody>
                </table>
            </form>
        </div>
        <div class="addnew_content" style="display:none">
            <form action="admin.php?controller=common&method=addtwo&mark=<?php echo $_smarty_tpl->tpl_vars['mark']->value;?>
" method="post" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td style="width:20%">标题</td>
                        <td style="width:80%">
                            <input type="text" name="title">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:20%">摘要</td>
                        <td style="width:120%">
                            <input type="text" name="abstract" style="width: 550px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:20%">图片</td>
                        <td style="height:40px">
                            <input name="img1" id="img1" style="display:inline" type="file">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:20%">状态</td>
                        <td style="width:80%">
                            <input type="text" name="status"><small>（0:停用,1:启用）.</small>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:20%">内容</td>
                        <td style="width:80%" class="ueditor">
                        </td>
                    </tr>
                    </tr>
                    <tr>
                        <td style="width:10%"></td>
                        <td>
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
 type="text/javascript" src="resources/admin/js/menu.js"><?php echo '</script'; ?>
>
</body>

</html>
<?php }
}
?>