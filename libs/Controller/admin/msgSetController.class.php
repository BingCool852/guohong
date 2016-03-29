<?php
	class msgSetController{

		function index(){
			$table = "company_info";
			$datas = M('common')->getData($table);
			VIEW::assign(array('datas'=>$datas));
			VIEW::display('admin/msgSet.html');
		}

		function addmsg(){

			$table = "company_info";
			$res = M('common')->count($table);
			$data['name'] = $_POST['name'];
			$data['faxnum'] = $_POST['faxnum'];
			$data['telnum'] = $_POST['telnum'];
			$data['email'] = $_POST['email'];
			$data['weibo'] = $_POST['weibo'];
			$data['webtitle'] = $_POST['webtitle'];
			$data['resume'] = $_POST['resume'];
			$data['address'] = $_POST['address'];
			$data['exchangetime'] = time() + 25200;

			if ($res['count(id)'] == 1) {
				$where = "id=1";
				if (M('common')->update($table,$data,$where)){
					echo '<script>if(confirm("操作成功，返回")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				} else {
					echo '<script>if(confirm("操作失败，返回")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				}
			} else {

				if (M('common')->insert($table,$data)){
				echo '<script>if(confirm("操作成功，返回")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				} else {
					echo '<script>if(confirm("操作失败，返回")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				}
			}
			
		}
	}
?>