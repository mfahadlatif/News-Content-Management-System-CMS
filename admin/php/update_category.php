<?php
$catnme=$_POST['catnme'];
$catst=$_POST['catst'];
$catid=$_POST['catid'];
include "connect.php";
$qry=mysqli_query($conn,"update tbl_category set category_status='$catst',category_nme='$catnme'where category_id='$catid'" );

if($qry){
    echo "1";
}else{
    echo "0";
}
?>