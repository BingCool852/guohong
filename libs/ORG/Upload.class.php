<?php
class upload{
	private $fileinfo, $dir, $extarr, $maxsize;
	public function uploadFile($fileinfo, $dir,$extarr=array('jpg','gif','png'), $maxsize = 104857600){
		$this->fileinfo =$fileinfo;
		$this->dir = $dir;
		$this->extarr = $extarr;
		$this->maxsize = $maxsize;
		if (!$this->ext()) {
			return array('flag'=>0, 'msg' => '不允许上传的文件类型');
		}
		if (!$this->size()) {
			return array('flag'=> 0, 'msg'=> '上传文件超过限定的大小：' . ($this->maxsize / 1024) . 'kb');
		}
		$file_name = $this->getFileName();
		if (move_uploaded_file($this->fileinfo['tmp_name'], $file_name)) {
			return array('flag' => 1, 'msg' => $file_name);
		} else {
			return array('flag'=>0, 'msg' => '上传失败： 未知错误');
		}
		
		
	}
	
	private function getExt(){
		$file_name_arr = explode('.', $this->fileinfo['name']);
		return $file_name_arr[count($file_name_arr) - 1];
	}

	private function ext(){
		$ext = $this->getExt();
		if (in_array($ext, $this->extarr)) {
			return true;
		} else {
			return false;
		}
	}
	public function size(){
		if ($this->fileinfo['size'] > $this->maxsize) {
			return false;
		} else {
			return true;
		}
	}
	
	public function getFileName(){
		return $this->dir . date('YmdHis'). rand(1000,9999) . '.' . $this->getExt();
	}
}
?>