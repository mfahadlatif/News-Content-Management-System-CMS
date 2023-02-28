<?php
include "connect.php";
$cat_nme=$_POST['cat_nme'];
$st=$_POST['st'];

$sql="insert into tbl_category (category_status,category_nme) values
( '$st' ,'$cat_nme')";
$qry=mysqli_query($conn,$sql);
if($qry){
    echo "1";
}
else{
    echo "could not insert data " . mysqli_error($conn);
}

?>