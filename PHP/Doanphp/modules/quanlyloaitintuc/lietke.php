<?php
$sql="select * from loaitintuc order by maloaitintuc desc";
$run=mysql_query($sql);

?>
<table width="100%" border="1">
  <tr>
    <td>mã loại tin tức</td>
    <td>tên loại tin tức</td>
    <td>trạng thái</td>
    <td colspan="2">Quản lý</td>
  </tr>
  <?php
  $i=0;
  while($dong=mysql_fetch_array($run)){
	  
  ?>
  <tr>
    <td><?php echo $i;?></td>
    <td><?php echo $dong['tenloaitintuc']?></td>
    <td><?php echo $dong['trangthai']?></td>
    <td><a href="#">sửa</a></td>
    <td><a href="modules/quanlyloaitintuc/xuly.php?id=<?php echo $dong['maloaitintuc']?>">xóa</a></td>
  </tr>
  <?php
  $i++;
  }
  ?>
</table>
