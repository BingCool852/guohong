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

	function writefile($fname,$mark,$type){
		switch ($type) {
			case '1':
				$str = "{include file='tpl/".$mark."/common/one.html'}";
				break;
			
			case '2':
				$str = "{include file='tpl/".$mark."/common/two.html'}";
				break;
			default:
				$str = "{include file='tpl/".$mark."/common/one.html'}";
				break;
		}
	    $fp=fopen("tpl/".$mark."/".$fname.'.html',"w");
	    fputs($fp,$str);
	    fclose($fp);
	}

	function setfile($fname){
	    $fp=fopen("tpl/admin/".$fname.'.html',"w");
	    fclose($fp);
	}

	// URL重定向  
	function redirect($url, $time=0, $msg='') {  
    	//多行URL地址支持  
	    $url = str_replace(array("\n", "\r"), '', $url);  
	    if ( empty($msg) )  
	        $msg = "系统将在".$time."秒之后自动跳转到".$url."";  
	    if (!headers_sent()) {  
	        // redirect  
	        if (0 === $time) {  
	            header('Location: ' . $url);  
	        } else {  
	            header("refresh:".$time.";url=".$url);  
	            echo($msg);  
	        }  
	        exit();  
	    } else {  
	        $str = "<meta http-equiv='Refresh' content='".$time.";URL=".$url."'>";  
	        if ($time != 0)  
	            $str .= $msg;  
	        exit($str);  
	    }
	}

?>