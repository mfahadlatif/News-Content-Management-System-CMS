<?php
include "connect.php";
$qry=mysqli_query($conn,"select * from tbl_category order by category_id");
if(mysqli_num_rows($qry)>0){
	$opt="";
	while($row=mysqli_fetch_assoc($qry)){
		$opt.="<option value='{$row['category_id']}'>{$row['category_nme']}</option>";
	}echo $opt;
}else{
	echo "0";
}
?>