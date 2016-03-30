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
			if ($_POST['supadmin'] == null) {
				$data['role'] = 1;
			} else {
				$data['role'] = 0;
			}
			$data['logintime']=time() + 25200;
			$data['exchangetime']=time() + 25200;
			if(M('common')->insert('user',$data)){
				echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			} else {
				echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			}
		}

		function updataadmin(){

			$uid = $_POST['uid'];
			$data['name'] = $_POST['name'];
			$data['pwd'] = md5($_POST['pwd']);
			$data['status'] = $_POST['status'];
			$res = implode(",", $_POST['role_menu2']);
			$data['menu'] = $res;
			if ($_POST['supadmin'] == null) {
				$data['role'] = 1;
			} else {
				$data['role'] = 0;
			}
			$data['exchangetime'] = time() + 25200;
			if (M('common')->update('user',$data,'id='.$uid)){
				echo '<script>if(confirm("操作成功，返回继续修改")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			} else {
				echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			}
		}

		function repwd(){
			$oldpwd = $_POST['oldpwd'];
			$uid = $_POST['uid'];
			$where = " where id="."'".$uid."'";
			$result = M('common')->getOneData('user',$where);

			if (md5($oldpwd) == $result[0]['pwd']){
				echo 1;
			} else {
				echo 0;
			}
		}

		function del(){
			$uid = $_GET['uid'];
			$where = 'id='.$uid;
			if(M('common')->delete('user',$where)){
				echo '<script>if(confirm("操作成功，返回继续删除")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			} else {
				echo '<script>if(confirm("操作失败，返回")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			}
		}
	}
?>