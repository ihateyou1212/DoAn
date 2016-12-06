<?php
include('../config.php');
$maloaisp=$_GET['id'];
$tenloaisp=$_POST['tenloaisanpham'];
$trangthai=$_POST['trangthai'];
if(isset($_POST['them'])){
	//them
	$sql="insert into loaisanpham(tenloaisanpham,trangthai)values('$tenloaisp','$trangthai')";
	mysql_query($sql);
	header("location:../../index.php?quanly=quanlyloaisp&ac=them");
	}elseif(isset($_POST['sua'])){
		//sua
		$sql="UPDATE loaisanpham SET maloaisanpham='$maloaisp',tenloaisanpham='$tenloaisp',trangthai='$trangthai' WHERE 1";
		}else{
			//xoa
			$sql="delete from loaisanpham where maloaisanpham='$maloaisp'";
			mysql_query($sql);
			header("location:../../index.php?quanly=quanlyloaisp&ac=them");
			}
?>