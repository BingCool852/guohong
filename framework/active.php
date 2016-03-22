<?php
	$currentdir = dirname(__FILE__);
	include_once($currentdir.'/include.list.php');
	foreach($paths as $path){
		include_once($currentdir.'/'.$path);
	}
	class ACTIVE{
		public static $controller;
		public static $method;
		private static $config;
		private static $mark;
		private static function init_db(){
			DB::init('mysql', self::$config['dbconfig']);
		}
		private static function init_view(){
			VIEW::init('Smarty', self::$config['viewconfig']);
		}
		private static function init_controller($mark){
			if ($mark == "admin"){
				self::$controller = isset($_GET['controller'])?daddslashes($_GET['controller']):'login';
			}
			if ($mark == "home"){
				self::$controller = isset($_GET['controller'])?daddslashes($_GET['controller']):'index';
			}
		}
		private static function init_method(){
			self::$method = isset($_GET['method'])?daddslashes($_GET['method']):'index';
		}
		public static function run($config){
			self::$mark = $config['mark'];
			self::$config = $config;
			self::init_db();
			self::init_view();
			self::init_controller($config['mark']);
			self::init_method();
			C(self::$mark, self::$controller, self::$method);
		}
	}