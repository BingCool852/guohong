<?php /* Smarty version 3.1.27, created on 2016-03-22 13:24:55
         compiled from "tpl/admin/webcolSet.html" */ ?>
<?php
/*%%SmartyHeaderCode:31857350456f139970106d2_77115030%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '03215015c1b16e24349f7667c195abab8482b08a' => 
    array (
      0 => 'tpl/admin/webcolSet.html',
      1 => 1458647846,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '31857350456f139970106d2_77115030',
  'variables' => 
  array (
    'menudata' => 0,
    'menu' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_56f139970bcb36_02560572',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_56f139970bcb36_02560572')) {
function content_56f139970bcb36_02560572 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '31857350456f139970106d2_77115030';
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
</head>

<body>
    <div class="location">
        <span>当前位置:&nbsp;&nbsp;首页</span>
        <span class="addtop add" value="top">添加顶级导航</span>
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
                            <th>栏目名称</th>
                            <th>排序</th>
                            <th>前台界面</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
$_from = $_smarty_tpl->tpl_vars['menudata']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['menu'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['menu']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['menu']->value) {
$_smarty_tpl->tpl_vars['menu']->_loop = true;
$foreach_menu_Sav = $_smarty_tpl->tpl_vars['menu'];
?>
                        <tr>
                            <td>
                                <input type="checkbox" value=<?php echo $_smarty_tpl->tpl_vars['menu']->value['id'];?>
>
                            </td>
                            <td class="a">
                            	<?php echo $_smarty_tpl->tpl_vars['menu']->value['name'];?>

                            </td>
                            <td>
                                <?php echo $_smarty_tpl->tpl_vars['menu']->value['sort'];?>

                            </td>
                            <td><?php echo $_smarty_tpl->tpl_vars['menu']->value['url'];?>
</td>
                            <td>
                                <?php if ($_smarty_tpl->tpl_vars['menu']->value['status'] == 1) {?> 启用 <?php } else { ?> 停用 <?php }?>
                            </td>
                            <td>
                                <span class="add">添加子栏目</span>&nbsp;&nbsp;
                                <a class="exchange" href="#">更新栏目</a>&nbsp;&nbsp;
                                <a href="#">删除栏目</a>
                            </td>
                        </tr>
                        <?php
$_smarty_tpl->tpl_vars['menu'] = $foreach_menu_Sav;
}
?>
                    </tbody>
                </table>
            </form>
        </div>
        <div class="addtop_box" style="display:none">
            <form action="admin.php?controller=webcolSet&method=addmenu" method="post">
                <table>
                    <tr>
                        <td class="addtop_box1">父级栏目</td>
                        <td class="addtop_box2">
                            <input type="text" name="pname" class="pname">
                        </td>
                    </tr>
                    <tr>
                        <td class="addtop_box1">栏目状态</td>
                        <td class="addtop_box2">
                            <input type="checkbox" value="1" style="width:10px" name="istrue">&nbsp;启用/关闭&nbsp;&nbsp;
                            <!-- <input type="checkbox" value="istop" style="width:10px">&nbsp;顶级菜单 -->
                        </td>
                    </tr>
                    <tr>
                        <td class="addtop_box1">栏目名称</td>
                        <td class="addtop_box2">
                            <input type="text" name="name"><small>（多语言之间用"|"隔开）.</small>
                        </td>
                    </tr>
                    <tr>
                        <td class="addtop_box1">排序</td>
                        <td class="addtop_box2">
                            <input type="text" name="sort"><small>（按从小到大排序；默认最靠后）.</small>
                        </td>
                    </tr>
                    <tr>
                        <td class="addtop_box1">链接地址</td>
                        <td class="addtop_box2">
                            <input type="text" name="url"><small>（外部链接必须以"http://"开始，可为空）.</small>
                        </td>
                    </tr>
                    <tr>
                        <td class="addtop_box1">栏目类型</td>
                        <td class="addtop_box2">
                            <input type="text" name="type"><small>（输入1:单页&nbsp;&nbsp;2:列表页) .</small>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="提交" style="width:120px;margin:0 20px 0 0;height:24px;" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>

</html>
<?php }
}
?>