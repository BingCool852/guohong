<?php
	header("Content-type: text/html;charset=utf-8");
	// ini_set("display_errors","On"); error_reporting(E_ALL &~ E_NOTICE);
	$config = array(
		'viewconfig' => array(
			'left_delimiter' => '{',  'right_delimiter' => '}',  'template_dir' => 'tpl',  'compile_dir' => 'data/template_c'),
		'dbconfig' => array(
			'dbhost' => 'localhost', 'dbuser'=>'root', 'dbpwd' => 'root' , 'dbname' => 'guohong', 'dbcharset' => 'utf8')
	);
?>