<?php /* Smarty version 3.1.27, created on 2016-03-22 13:16:16
         compiled from "tpl/admin/base.html" */ ?>
<?php
/*%%SmartyHeaderCode:91899220756f13790032145_49828358%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7f53d477edca7298ad186bad425f9b344341165d' => 
    array (
      0 => 'tpl/admin/base.html',
      1 => 1458639006,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '91899220756f13790032145_49828358',
  'variables' => 
  array (
    'menudata' => 0,
    'menu' => 0,
    'child' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_56f137900fa057_08344683',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_56f137900fa057_08344683')) {
function content_56f137900fa057_08344683 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '91899220756f13790032145_49828358';
?>
<html>

<head>
    <title>国宏实业－后台管理</title>
    <?php echo '<script'; ?>
 type="text/javascript" src="resources/admin/js/jquery.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="resources/admin/js/admin.js"><?php echo '</script'; ?>
>
    <link rel="stylesheet" href="resources/admin/css/admin.css">
</head>

<body>
    <div class="top_box">
        <ul>
            <li><a href="">前台浏览</a></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <div class="content_box">
        <div class="content_box_left">
            <div class="menu" id="menu">
                <div>
                    <p>综合信息设置</p>
                    <ul>
                        <li><a href="#" traget="msg" onclick=aclick('msg')>基本信息设置</a></li>
                        <li><a href="#" traget="role" onclick=aclick('role')>权限管理</a></li>
                        <li><a href="#" traget="webcol" onclick=aclick('webcol')>网站栏目管理</a></li>
                    </ul>
                </div>
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
                    <div>
                        <p><?php echo $_smarty_tpl->tpl_vars['menu']->value['name'];?>
</p>
                        <?php if ($_smarty_tpl->tpl_vars['menu']->value['child']) {?>
                            
                        <ul>
                        <?php
$_from = $_smarty_tpl->tpl_vars['menu']->value['child'];
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['child'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['child']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['child']->value) {
$_smarty_tpl->tpl_vars['child']->_loop = true;
$foreach_child_Sav = $_smarty_tpl->tpl_vars['child'];
?>
                            <li>
                                <a href="#" traget="<?php echo $_smarty_tpl->tpl_vars['child']->value['name'];?>
" onclick=aclick2('<?php echo $_smarty_tpl->tpl_vars['child']->value['name'];?>
')><?php echo $_smarty_tpl->tpl_vars['child']->value['name'];?>
</a>
                            </li>
                        <?php
$_smarty_tpl->tpl_vars['child'] = $foreach_child_Sav;
}
?>
                        </ul>
                            
                        <?php } else { ?>
                        <ul><li><a href="">创建子目录</a></ul>
                        <?php }?> 
                    </div>
                <?php
$_smarty_tpl->tpl_vars['menu'] = $foreach_menu_Sav;
}
?>
            </div>
        </div>
        <div class="content_box_right">
            <div class="content_box_main content_welcome">
                <p class="welcome">欢迎进入后台管理界面</p>
            </div>

            <?php echo $_smarty_tpl->getSubTemplate ("tpl/admin/footer.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

<?php }
}
?>