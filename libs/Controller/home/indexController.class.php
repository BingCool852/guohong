<?php
	class indexController{

		function index(){
			$menudata = M('menu')->getMenu("parmenu = '0'");
			foreach ($menudata as $key => $value) {
				$childmenu = M('menu')->getMenu("parmenu = "."'".$value['id']."'");
				if (is_array($childmenu)){
					$menudata[$key]['child'] = $childmenu;
				}
			}
			VIEW::assign(array('menudata' => $menudata));
			VIEW::display('home/home.html');
		}
	}
?>