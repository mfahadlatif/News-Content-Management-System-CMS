<?php
$catid=$_POST['catid'];
include "connect.php";
$sql="select * from tbl_category where category_id='$catid'";
$qry=mysqli_query($conn,$sql);
if(mysqli_num_rows($qry)>0 ){
$row=mysqli_fetch_assoc($qry);

echo json_encode($row);
}
else{
    echo "0";
}



?>