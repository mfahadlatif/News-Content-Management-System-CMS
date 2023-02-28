<?php
include "connect.php";
$f_nme=$_POST['fn'];
$l_nme=$_POST['ln'];
$usernme=$_POST['unme'];
$rol=$_POST['rol'];
$st=$_POST['st'];
$pas=md5($_POST['pass']);
$sql="insert into tbl_user (fnme,lnme,username,role,status,password) values
('$f_nme','$l_nme','$usernme', '$rol','$st' ,'$pas')";
$qry=mysqli_query($conn,$sql);
if($qry){
    echo "1";
}
else{
    echo "could not insert data " . mysqli_error($conn);
}

?>