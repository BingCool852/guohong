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
				if ($ischild == 1) {
					if($menudata['type'] == '1'){
						$sql = "CREATE TABLE `guohong`.`".$menudata['url']."` ( `id` INT(16) NOT NULL AUTO_INCREMENT , `title` VARCHAR(64) NULL ,`abstract` VARCHAR(255) NULL , `src` VARCHAR(255) NULL , `content` TEXT NULL , `exchangetime` VARCHAR(64) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;";
					} 
					if($menudata['type'] == '2'){
						$sql = "CREATE TABLE `guohong`.`".$menudata['url']."` ( `id` INT(16) NOT NULL AUTO_INCREMENT , `title` VARCHAR(64) NULL ,`abstract` VARCHAR(255) NULL , `src` VARCHAR(255) NULL , `content` TEXT NULL , `status` INT(4) NULL DEFAULT '1' , `exchangetime` VARCHAR(64) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;";
					}
					M('common')->create($sql);
					// writefile($menudata['url'],$menudata['type']);
					setfile($menudata['url']);
				}
				echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			} else {
				echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			}
		}

		function updatemenu(){

			$id = $_POST['id'];
			$data['parmenu'] = $_POST['pname'];
			$data['name'] = $_POST['name'];
			$data['status'] = $_POST['istrue'];
			$data['url'] = $_POST['url'];
			$data['sort'] = $_POST['sort'];
			$data['type'] = $_POST['type'];
			$data['exchangetime'] = time();
			if ($data['parmenu'] == "0" ){
				$where = 'id='.$id;
				if (M('menu')->update($data,$where)){
					echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				} else {
					echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				}
			} else {
				echo "22";die;
			}
		}
	}
?>