<?php
$sql="select * from loaisanpham order by maloaisanpham desc";
$run=mysql_query($sql);

?>
<table width="100%" border="1">
  <tr>
    <td>mã loại sản phẩm</td>
    <td>tên sản phẩm</td>
    <td>trạng thái</td>
    <td colspan="2">Quản lý</td>
  </tr>
  <?php
  $i=0;
  while($dong=mysql_fetch_array($run)){
	  
  ?>
  <tr>
    <td><?php echo $i;?></td>
    <td><?php echo $dong['tenloaisanpham']?></td>
    <td><?php echo $dong['trangthai']?></td>
    <td><a href="index.php?quanly=quanlyloaisp&ac=sua$id=<?php echo $dong['maloaisanpham']?>">sửa</a></td>
    <td><a href="modules/quanlyloaisp/xuly.php?id=<?php echo $dong['maloaisanpham']?>">xóa</a></td>
  </tr>
  <?php
  $i++;
  }
  ?>
</table>
