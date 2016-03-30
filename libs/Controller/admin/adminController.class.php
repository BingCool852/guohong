<?php
	class adminController{

		function index(){
			$uid = $_SESSION['uid'];
			$user_role =  M('common')->getOneData('user',' where id='.$uid);
			$split_str = split(',', $user_role[0]['menu']);
			for ($i = 0; $i < count($split_str); $i++){
				if ($i == 0){
					$where = "id=".$split_str[$i];
				} else {
					$where = $where." or id=".$split_str[$i];
				}
			}
			$menudata = M('menu')->getMenu($where);
			foreach ($menudata as $key => $value) {
				$childmenu = M('menu')->getMenu("parmenu = "."'".$value['id']."'");
				if (is_array($childmenu)){
					$menudata[$key]['child'] = $childmenu;
				}
			}
			VIEW::assign(array('menudata' => $menudata));
			VIEW::display('admin/base.html');
		}
	}
?>