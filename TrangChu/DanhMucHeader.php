<div class="row">
    <ul class="block-menu" id="divCatMenuHome112">

		 <?php
			$link = new mysqli ( 'localhost', 'root', '', 'dbviettel' );
			if (! $link)
			{
				die ( 'Connection failed: ' . $link->error () );
			}
			$link->query("Set names'utf8'");
			$sql1 = "SELECT TenLoaiSP,MaLoaiSP from tblloaisanpham where TrangThai=1";
			$result1 = $link->query ($sql1);
			if(!empty($result1))
			{
			
			while ( $row1 = $result1->fetch_assoc () )
			{
				if($row1['MaLoaiSP'] == 01 || $row1['MaLoaiSP'] == 03)
			{	
		?>
			<li class="item tab">
			<div class="icon "></div>
            <h4 ><?php echo '<a href="DanhMucSanPham.php?MaLoaiSP='.$row1['MaLoaiSP'].'">'.$row1["MaLoaiSP"].'</a>'; ?></h4>
		
            <div class="content">
                <h5 style="padding: 10px 0 0 20px; font-weight: 600; font-size: 12px;">Tên nhà s?n xu?t</h5>
                <div class="col-xs-2">
				
			<?php	
				
					$sql = "SELECT TenNSX,MaNSX from tblnhasanxuat where MaLoaiSP = '".$row1['MaLoaiSP']."' && TrangThai=1 ";
					$result = $link->query ( $sql );
					if(!empty($result))
					{
					while ( $row = $result->fetch_assoc () )
					{
			?>	
				<h4><?php echo '<a href="DanhMucSanPham.php?MaNSX='.$row['MaNSX'].'">'.$row["MaNSX"].'<a>'; ?></h4>
			<?php	
					}
					
			?>		
                </div>
            </div>
            <a href="DanhMucSanPham.php">
                <!--<i class="bg-menu bg-1 icons" title="Danh m?c di?n tho?i"></i>-->
            </a>
			</li>
		<?php		
			}
			}
			else
			{
		?>
			<li class="item tab">
			<div class="icon "></div>
            <h4 ><?php echo '<a href="DanhMucSanPham.php?MaLoaiSP='.$row1['MaLoaiSP'].'">'.$row1["MaLoaiSP"].'</a>'; ?></h4>
		
            <div class="content">
                <h5 style="padding: 10px 0 0 20px; font-weight: 600; font-size: 12px;">Tên lo?i ph? ki?n</h5>
                <div class="col-xs-2">
				
			<?php	
				
					$sql2 = "SELECT MaLoaiPK,TenLoaiPK from tblloaiphukien where TrangThai=1 ";
					$result2 = $link->query ( $sql2 );
					if(!empty($result2))
					{
					while ( $row2 = $result2->fetch_assoc () )
					{
			?>	
				<h4><?php echo '<a href="DanhMucSanPham.php?MaLoaiPK='.$row2['MaLoaiPK'].'">'.$row2["TenLoaiPK"].'<a>'; ?></h4>
			<?php	
					}
					
			?>		
                </div>
            </div>
            <a href="DanhMucSanPham.php">
                <!--<i class="bg-menu bg-1 icons" title="Danh m?c di?n tho?i"></i>-->
            </a>
			</li>
		<?php
			}
			}
			}
			}	
			
		?>
        
    </ul>
</div>