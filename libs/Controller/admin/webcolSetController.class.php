<?php
	class webcolSetController{

		function index(){
			$menudata = M('menu')->getMenu();
			foreach ($menudata as $key => $value) {
				$childmenu = M('menu')->getChildMenu($value['id']);
				if (is_array($childmenu)){
					$menudata[$key]['child'] = $childmenu;
				}
			}
			VIEW::assign(array('menudata' => $menudata));
			VIEW::display('admin/webcolSet.html');
		}

		function addmenu(){
			$ischild = false;
			$menudata['parmenu'] = $_POST['pname'];
			if($menudata['parmenu'] != "0"){
				$pinfo = M('menu')->getMenuId($menudata['parmenu']);
				$menudata['parmenu'] = $pinfo['id'];
				$ischild = true;
			}
			$menudata['name'] = $_POST['name'];
			$menudata['status'] = $_POST['istrue'];
			$menudata['sort'] = $_POST['sort'];
			$menudata['url'] = $_POST['url'];
			$menudata['type'] = $_POST['type'];
			$menudata['exchangetime'] = time();
			if (M('menu')->insert($menudata)){
				if ($ischild = true) {
					if($menudata['type'] == '1'){
						$sql = "CREATE TABLE `guohong`.`".$menudata['name']."` ( `id` INT(16) NOT NULL AUTO_INCREMENT , `title` VARCHAR(64) NULL ,`abstract` VARCHAR(255) NULL , `src` VARCHAR(255) NULL , `content` TEXT NULL , `exchangetime` VARCHAR(64) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;";
					} 
					if($menudata['type'] == '2'){
						$sql = "CREATE TABLE `guohong`.`".$menudata['name']."` ( `id` INT(16) NOT NULL AUTO_INCREMENT , `title` VARCHAR(64) NULL ,`abstract` VARCHAR(255) NULL , `src` VARCHAR(255) NULL , `content` TEXT NULL , `status` INT(4) NULL DEFAULT '1' , `exchangetime` VARCHAR(64) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;";
					}
					M('common')->create($sql);
					writefile($menudata['name'],$menudata['type']);
				}
				echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			} else {
				echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			}
		}
	}
?>