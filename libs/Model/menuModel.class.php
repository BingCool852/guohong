<?php
	class menuModel {

		public $_table = 'menu';
		function getMenuId($name){
			$sql = "select * from ".$this->_table." where name ="."'".$name."'";
			return DB::findOne($sql);
		}

		function getMenu(){
			$sql = "select * from ". $this->_table." where parmenu = '0'";
			return DB::findAll($sql);
		}

		function getChildMenu($pid){
			$sql = "select * from ". $this->_table." where parmenu = ".$pid;
			return DB::findAll($sql);
		}

		function insert($arr){
			return DB::insert($this->_table,$arr);
		}

		function update($arr,$where){
			return DB::update($this->_table,$arr,$where);
		}

		function findType($where){
			$sql = "select * from ". $this->_table." where url = "."'".$where."'";
			return DB::findAll($sql);
		}
	}