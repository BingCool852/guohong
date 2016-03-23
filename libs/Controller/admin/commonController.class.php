<?php
	class commonController{

		function index(){
			$mark = $_GET['mark'];
			$data = M('common')->getOneData($mark);
			VIEW::assign(array('mark' => $mark,'data' => $data));
			VIEW::display('admin/'.$mark.'.html');
		}

		function addone(){

			$mark = $_GET['mark'];
			$res = M('common')->count($mark);

			$upfile = ORG('Upload');
			$return = $upfile->uploadFile($_FILES['img1'],'./resources/upfile/', array('png','jpg'));
			if ($return['flag'] == 1){
				$data['src'] = $return['msg'];
			}
			$data['title'] = $_POST['title'];
			$data['content'] = $_POST['content'];
			$data['exchangetime'] = time();
			if ($res['count(id)'] == 1){
				$where = 'id=1';
				if(M('common')->update($mark,$data,$where)){
					echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=common&method=index&mark='.$mark.'"}</script>';
				} else {
					echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				}
			} else {
				if(M('common')->insert($mark,$data)){
					echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=common&method=index&mark='.$mark.'"}</script>';
				} else {
					echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				}
			}
		}

		function addtwo(){

			$mark = $_GET['mark'];
			$id = $_GET['id'];
			
			$upfile = ORG('Upload');
			$return = $upfile->uploadFile($_FILES['img1'],'./resources/upfile/', array('png','jpg'));
			if ($return['flag'] == 1){
				$data['src'] = $return['msg'];
			}
			$data['title'] = $_POST['title'];
			$data['content'] = $_POST['content'];
			$data['abstract'] = $_POST['abstract'];
			$data['status'] = $_POST['status'];
			$data['exchangetime'] = time();
			if ($id != 0 ){
				$where = 'id='.$id;
				if (M('common')->update($mark,$data,$where)){
					echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=common&method=index&mark='.$mark.'"}</script>';
				} else {
					echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
				}
			} else {
				if (M('common')->insert($mark,$data)){
				echo '<script>if(confirm("操作成功，返回继续添加")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=common&method=index&mark='.$mark.'"}</script>';
			} else {
				echo '<script>if(confirm("操作失败，返回修改")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			}
			}
			
		}

		function del(){
			$mark = $_GET['mark'];
			$id = $_GET['id'];
			$where = 'id='.$id;
			if(M('common')->delete($mark,$where)){
				echo '<script>if(confirm("操作成功，返回继续删除")){window.location.href="'.$_SERVER['HTTP_REFERER'].'"}else{window.location.href="/admin.php?controller=common&method=index&mark='.$mark.'"}</script>';
			} else {
				echo '<script>if(confirm("操作失败，返回")){window.history.go(-1);}else{window.location.href="/admin.php?controller=webcolSet&method=index"}</script>';
			}
		}

		function showChildMenu(){

			$pid = $_POST['pid'];
			$childmenu = M('menu')->getChildMenu($pid);
			if (is_array($childmenu) == true){
				$childmenu[0]['pid'] = $pid;
				echo json_encode($childmenu);
			} else {
				echo "null";
			}
			
		}
	}
?>