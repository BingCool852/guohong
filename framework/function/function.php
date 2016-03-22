<?php
	function C($mark, $name, $method){
		require_once('libs/Controller/'.$mark.'/'.$name.'Controller.class.php');
		eval('$obj = new '.$name.'Controller();$obj->'.$method.'();');
	}

	function M($name){
		require_once('libs/Model/'.$name.'Model.class.php');
		eval('$obj = new '.$name.'Model();');
		return $obj;
	}
	
	function V($mark,$name){
		require_once('libs/View/'.$mark.'/'.$name.'View.class.php');
		eval('$obj = new '.$name.'View();');
		return $obj;
	}
	
	function ORG($name, $params=array()){
		require_once('libs/ORG/'.$name.'.class.php');
		$obj = new $name();
		if(!empty($params)){
		foreach($params as $key=>$value){
				$obj->$key = $value;
			}
		}
		return $obj;
	}

	function daddslashes($str){
		return (!get_magic_quotes_gpc())?addslashes($str):$str;
	}

	function p($arr){
		echo '<pre>';
		var_dump($arr);
		echo '</pre>';
	}

	function writefile($fname,$type){
		switch ($type) {
			case '1':
				$str = "{include file='tpl/admin/common/one.html'}";
				break;
			
			case '2':
				$str = "{include file='tpl/admin/common/two.html'}";
				break;
			default:
				$str = "{include file='tpl/admin/common/one.html'}";
				break;
		}
	    $fp=fopen("tpl/admin/".$fname.'.html',"w");
	    fputs($fp,$str);
	    fclose($fp);
	}
?>