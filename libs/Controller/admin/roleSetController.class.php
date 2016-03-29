<?php
	class roleSetController{

		function index(){

			$menudata = M('menu')->getMenu("parmenu = '0'");
			$userdata = M('common')->getData('user');
			VIEW::assign(array('menudata' => $menudata,'userdata' => $userdata));
			VIEW::display('admin/roleSet.html');
		}

		function addadmin(){

			$data['status'] = $_POST['status'];
			$data['name'] = $_POST['name'];
			$data['pwd'] = md5($_POST['pwd']);
			$res = implode(",", $_POST['role_menu']);
			$data['menu'] = $res;
			$role_admin = $_POST['supadmin'];
			$data['logintime']=time() + 25200;
			$data['exchangetime']=time() + 25200;

			if(M('common')->insert('user',$data)){
				echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			} else {
				echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			}
		}
	}
?>