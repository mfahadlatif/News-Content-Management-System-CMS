<?php
include "connect.php";
$qry=mysqli_query($conn,"select * from tbl_role order by role_id");
if(mysqli_num_rows($qry)>0){
	$opt="";
	while($row=mysqli_fetch_assoc($qry)){
		$opt.="<option value='{$row['role_id']}'>{$row['role']}</option>";
	}echo $opt;
}else{
	echo "0";
}
?>