 <div class="content">
   <?php
   if(isset($_GET['quanly'])){
	   $tam=$_GET['quanly'];
   }else{
	   $tam='';
   }if($tam=='quanlyloaisp'){
	   include('quanlyloaisp/main.php');
   }if($tam=='quanlyloaitintuc'){
	   include('quanlyloaitintuc/main.php');
   }
   ?>
    
     <div class="clear"></div>