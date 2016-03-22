<?php
	class adminController{

		function index(){
			$menudata = M('menu')->getMenu();
			foreach ($menudata as $key => $value) {
				$childmenu = M('menu')->getChildMenu($value['id']);
				if (is_array($childmenu)){
					$menudata[$key]['child'] = $childmenu;
				}
			}
			VIEW::assign(array('menudata' => $menudata));
			VIEW::display('admin/base.html');
		}
	}
?>