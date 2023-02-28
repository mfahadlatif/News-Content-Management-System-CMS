<?php
$postid=$_POST['postid'];
include "connect.php";
$sql="select * from post where post_id='$postid'";
$qry=mysqli_query($conn,$sql);
if(mysqli_num_rows($qry)>0 ){
$row=mysqli_fetch_assoc($qry);

echo json_encode($row);
}
else{
    echo "0";
}



?>