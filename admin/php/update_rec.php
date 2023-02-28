<?php
$uid=$_POST['userid'];
$fnme=$_POST['fn'];
$lnme=$_POST['ln'];
$usernme=$_POST['unme'];
$rol=$_POST['rol'];
$st=$_POST['st'];
$pas=md5($_POST['pas']);
include "connect.php";
$qry=mysqli_query($conn,"update tbl_user set fnme='$fnme',lnme='$lnme',password='$pas',username='$usernme',role='$rol' ,status='$st' where user_id='$uid'" );

if($qry){
    echo "1";
}else{
    echo "0";
}
?>