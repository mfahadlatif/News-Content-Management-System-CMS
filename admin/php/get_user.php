<?php
$userid=$_POST['userid'];
include "connect.php";
$sql="select * from tbl_user where user_id='$userid'";
$qry=mysqli_query($conn,$sql);
if(mysqli_num_rows($qry)>0 ){
$row=mysqli_fetch_assoc($qry);

echo json_encode($row);
}
else{
    echo "0";
}



?>