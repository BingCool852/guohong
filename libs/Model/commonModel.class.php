<?php
	class commonModel {

		function query($sql){
			return DB::query($sql);
		}

		function insert($table,$arr){
			return DB::insert($table,$arr);
		}

		function getData($table){
			$sql = "select * from ". $table;
			return DB::findAll($sql);
		}

		function count($table){
			$sql = "select count(id) from ".$table;
			return DB::count($sql);
		}

		function update($table,$arr,$where){
			return DB::update($table,$arr,$where);
		}

		function delete($table,$where){
			return DB::del($table,$where);
		}

		function getOneData($table,$where){
			$sql = "select * from ". $table. $where;
			return DB::findAll($sql);
		}


	}