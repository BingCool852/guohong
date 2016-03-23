<?php
	class menuModel {

		public $_table = 'menu';

		function getMenu($where){
			$sql = "select * from ". $this->_table." where ".$where;
			return DB::findAll($sql);
		}

		function insert($arr){
			return DB::insert($this->_table,$arr);
		}

		function update($arr,$where){
			return DB::update($this->_table,$arr,$where);
		}
	}