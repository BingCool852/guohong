<?php
	session_start();
	header("Content-type: text/html; charset=utf-8");
	require_once('config.php');
	$config['mark'] = "admin";
	require_once('framework/active.php');
	ACTIVE::run($config);
?>