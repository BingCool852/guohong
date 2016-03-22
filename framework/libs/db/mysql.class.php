<?php

class mysql{

	/**
	 * [报错函数]
	 * @param  [string] $error [错误原因]
	 */
	function err($error){
		die('对不起，您的操作有误，错误原因为：'.$error);
	}

	/**
	 * 连接数据库
	 * @param string $dbhost 主机名
	 * @param string $dbuser 用户名
	 * @param string $dbpsw  密码
	 * @param string $dbname 数据库名
	 * @param string $dbcharset 字符集/编码
	 * @return bool  连接成功或不成功 
	 **/
	function connect($config){
		extract($config); //将数组内容转换为变量
		if(!($con = mysql_connect($dbhost,$dbuser,$dbpwd))){
			$this->err(mysql_error());
		}
		if (!mysql_select_db($dbname,$con)){
			$this->err(mysql_error());
		}
		mysql_query("set names".$dbcharset);
	} 

	/**
	 * 执行sql语句
	 * @param  [string] $sql [执行语句]
	 * @return [bool]      [返回执行成功、资源或执行失败]
	 */
	function query($sql){
		if (!($query = mysql_query($sql))){
			$this->err($sql."<br>".mysql_error());
		} else {
			return $query;
		}
	}

	/**
	 * 查找多条
	 * @param  [source] $query [sql语句通过mysql_query执行出来的资源]
	 * @return [array]        [返回多条信息数组]
	 */
	function findAll($query){
		while($rs = mysql_fetch_array($query, MYSQL_ASSOC)){
			$list[] = $rs;
		}
		return isset($list) ? $list : "";
	}

	/**
	 * 查找单条
	 * @param  [source]  $query [sql语句通过mysql_query执行出来的资源]
	 * @return [array]        [返回单条信息数组]
	 */
	function findOne($query){
		$rs = mysql_fetch_array($query,MYSQL_ASSOC);
		return $rs;
	}

	/**
	 * 指定行的指定字段的值
	 * @param  [source]  $query [sql语句通过mysql_query执行出来的资源]
	 * @return [array]         [返回指定行的指定字段的值]
	 */
	function findResult($query, $row = 0, $filed = 0){
		$rs = mysql_result($query, $row, $filed);
		return $rs;
	}

	/**
	 * 插入函数
	 * @param  [string] $table [表名]
	 * @param  [array] $arr   [添加数组（包含字段和值的一维数组）]
	 * @return [int]        [返回插入id]
	 */
	function insert($table, $arr){
		//$sql = "insert into 表名(多个字段) values(多个值)";
		foreach($arr as $key => $value){
			$value = mysql_real_escape_string($value);
			$keyArr[] = " ".$key." ";
			$valueArr[] = "'".$value."'";
		}
		$keys = implode(",",$keyArr);
		$values = implode(",", $valueArr);
		$sql = "insert into ".$table." (".$keys.") values (".$values.")";
		$this->query($sql);
		return mysql_insert_id(); 
	}

	/**
	 * 更新函数
	 * @param  [string] $table [表名]
	 * @param  [arr] $arr   [更新数组（包含字段和值的一维数组）]
	 * @param  [string] $where [条件]
	 */
	function update($table,$arr,$where){
		//update 表名 set 字段=字段值 where ……
		foreach($arr as $key=>$value){
			$value = mysql_real_escape_string($value);
			$keyAndvalueArr[] = "`".$key."`='".$value."'";
		}
		$keyAndvalues = implode(",",$keyAndvalueArr);
		$sql = "update ".$table." set ".$keyAndvalues." where ".$where;//修改操作 格式 update 表名 set 字段=值 where 条件
		return $this->query($sql);
	}

	/**
	 * 删除函数
	 * @param  [string] $table [表名]
	 * @param  [string] $where [条件]
	 */
	function del($table, $where){
		$sql = "delete from ". $table." where ".$where;
		return $this->query($sql);
	}

	/**
	 * 查询数据数量
	 * @param  [string] $query [执行条件]
	 * @return [int]        [数量]
	 */
	function count($query){
		$rs = mysql_fetch_array($query,MYSQL_ASSOC);
		return $rs;
	}
}
?>