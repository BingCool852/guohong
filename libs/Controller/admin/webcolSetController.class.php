<?php
	class webcolSetController{

		function index(){
			$menudata = M('menu')->getMenu("parmenu = '0'");
			foreach ($menudata as $key => $value) {
				$childmenu = M('menu')->getMenu("parmenu = "."'".$value['id']."'");
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
				$pinfo = M('menu')->getMenu("name = "."'".$menudata['parmenu']."'");
				$menudata['parmenu'] = $pinfo[0]['id'];
				$ischild = true;
			}
			// p($menudata);die;
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
					M('common')->query($sql);
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
			if( $data['parmenu'] != "0"){
				$pinfo = M('menu')->getMenu("name = "."'".$data['parmenu']."'");
				$data['parmenu'] = $pinfo[0]['id'];
			}
			// p($data);die;
			$data['name'] = $_POST['name'];
			$data['status'] = $_POST['istrue'];
			$data['url'] = $_POST['url'];
			$data['sort'] = $_POST['sort'];
			$data['type'] = $_POST['type'];
			// p($data);die;
			$data['exchangetime'] = time() + 25200;
			$where = 'id='.$id;
			if ($data['parmenu'] == "0" ){

				if (M('menu')->update($data,$where)){
					echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				} else {
					echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				}
			} else {
				$oldda = M('menu')->getMenu("id = "."'".$id."'");
				if ($oldda[0]['type'] != $data['type']){
					$sql1 = "DROP TABLE ".$oldda[0]['url'];
					if (M('common')->query($sql1)){
						if($data['type'] == '1'){
							$sql2 = "CREATE TABLE `guohong`.`".$oldda[0]['url']."` ( `id` INT(16) NOT NULL AUTO_INCREMENT , `title` VARCHAR(64) NULL ,`abstract` VARCHAR(255) NULL , `src` VARCHAR(255) NULL , `content` TEXT NULL , `exchangetime` VARCHAR(64) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;";
						} 
						if($data['type'] == '2'){
							$sql2 = "CREATE TABLE `guohong`.`".$oldda[0]['url']."` ( `id` INT(16) NOT NULL AUTO_INCREMENT , `title` VARCHAR(64) NULL ,`abstract` VARCHAR(255) NULL , `src` VARCHAR(255) NULL , `content` TEXT NULL , `status` INT(4) NULL DEFAULT '1' , `exchangetime` VARCHAR(64) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;";
						}
						M('common')->query($sql2);
					}
				}
				if ($oldda[0]['url'] != $data['url']){
					$sql = "ALTER  TABLE ".$oldda[0]['url']." RENAME TO ".$data['url'];
					M('common')->query($sql);
					rename("tpl/admin/".$oldda[0]['url'].'.html', "tpl/admin/".$data['url'].'.html');
				}

				if (M('menu')->update($data,$where)) {
					echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				} else {
					echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				}
				
			}
		}

		function delmenu(){
			$id = $_GET['id'];
			$url = $_GET['url'];
			$where = "id = ".$id;
			$sql = "DROP TABLE ".$url;
			if(M('common')->query($sql) && M('common')->delete('menu',$where) && unlink("tpl/admin/".$url.".html")){
				echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			} else {
				echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			}

		}
	}
?>