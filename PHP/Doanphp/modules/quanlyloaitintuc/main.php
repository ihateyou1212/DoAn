<div class="left">
<?php
if(isset($_GET['ac'])){
	$tam=$_GET['ac'];
	}else
	{
		$tam='';
	}if($tam=='them'){
		include('modules/quanlyloaitintuc/them.php');
		}if($tam=='sua'){
			include('sua.php');
		}
?>
</div>
<div class="right">
<?php
include('modules/quanlyloaitintuc/lietke.php');
?>
</div>