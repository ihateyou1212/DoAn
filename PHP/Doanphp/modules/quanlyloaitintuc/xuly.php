<?php
include('../config.php');
$maloaitintuc=$_GET['id'];
$tenloaitintuc=$_POST['tenloaitintuc'];
$trangthai=$_POST['trangthai'];
if(isset($_POST['them'])){
	//them
	$sql="insert into loaitintuc(tenloaitintuc,trangthai)values('$tenloaitintuc','$trangthai')";
	mysql_query($sql);
	header("location:../../index.php?quanly=quanlyloaitintuc&ac=them");
	}elseif(isset($_POST['sua'])){
		//sua
		}else{
			//xoa
			$sql="delete from loaitintuc where maloaitintuc='$maloaitintuc'";
			mysql_query($sql);
			header("location:../../index.php?quanly=quanlyloaitintuc&ac=them");
			}
?>