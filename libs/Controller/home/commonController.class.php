<?php
	class commonController{

		function index(){

			$menudata = M('menu')->getMenu("parmenu = '0'"); //查找所有菜单
			foreach ($menudata as $key => $value) {
				$childmenu = M('menu')->getMenu("parmenu = "."'".$value['id']."'");
				if (is_array($childmenu)){
					$menudata[$key]['child'] = $childmenu;
				}
			}


			$mark = $_GET['mark'];
			$res = M('menu')->getMenu("url="."'".$mark."'"); //查找菜单信息
			// p($res);die;
			if ($res[0]['type'] == 1) {
				writefile('content','home',1);
			} else {
				writefile('content','home',2);
			}
			$where = "parmenu=".$res[0]['id'];

			$reschild = M('menu')->getMenu($where); //找到父级菜单下的子菜单

			$content = M('common')->getOneData($reschild[0]['url']); //查找子级菜单内容

			VIEW::assign(array('res'=>$res,'content'=>$content,'childmenu'=>$reschild,'menudata'=>$menudata));
			VIEW::display('home/content.html');
		}

		function getnewcon(){

			$value = $_POST['value'];

			$rescon = M('common')->getData($value);
			$res = M('menu')->getMenu("url="."'".$value."'");
			if ($res[0]['type'] == 2){
				$rescon['type'] = 2;
			}

			if (isset($rescon[0]["content"]) == 1){

				echo json_encode($rescon);
			} else {

				$rescon['con'] = "nodata";
				echo json_encode($rescon);
			}
			
		}
	}

?>