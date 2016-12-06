<?php
$tenmaychu="localhost";
$tentaikhoan="root";
$pass="";
$csdl="dbviettel";
$conn=mysql_connect($tenmaychu,$tentaikhoan,$pass,$csdl)or die('khong ket noi duoc');
mysql_select_db($csdl,$conn);
mysql_query("set names utf8");
?>