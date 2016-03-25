<?php
	header("Content-type: text/html; charset=utf-8");
	require_once('config.php');
	$config['mark'] = "home";
	require_once('framework/active.php');
	ACTIVE::run($config);
?>