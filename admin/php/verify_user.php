<?php
$user=$_POST['user'];
$pass=md5($_POST['pass']);
include "connect.php";
$qry="select * from tbl_user where username='$user'and password='$pass'";
$result=mysqli_query($conn,$qry);
if(mysqli_num_rows($result)>0)
{
echo "1";

}else{
echo "0" .mysqli_error($conn) ;
}

?>