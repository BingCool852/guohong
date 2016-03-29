<?php
	class loginController{

		function index(){
			VIEW::display('admin/login.html');
		}

		function login(){
			if(!$_POST){
				echo "表单提交错误";
			} else {
				$username = $_POST['user'];
				$password = $_POST['pwd'];
				$where = " where name="."'".$username."'";
				$result = M('common')->getOneData('user',$where);
				if ($username == $result[0]['name'] && md5($password) == $result[0]['pwd']){
					$_SESSION['userid'] = $result[0]['id'];
					$_SESSION['name'] = $result[0]['name'];
					$_SESSION['time'] = time() + 25200; //因为time()出来的时间相差7个小时
					redirect('admin.php?controller=admin&method=index',3,"登录成功，3s后跳转...");
				} else {
					redirect('admin.php?controller=login&method=index',3,"登录失败，请输入正确的用户名或密码，3s后跳转...");
				}
			}
		}

		function logout(){
			$latetime = array(
				'latetime' => $_SESSION['time']
			);
			$where = " name="."'".$_SESSION['name']."'";
			if(M('common')->update('user',$latetime,$where)){
				if(session_unset() || session_destroy()){
					redirect('admin.php?controller=login&method&method=index',3,"退出成功，3s后跳转...");
				}
			}
		}
	}