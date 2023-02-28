<?php
include "connect.php";
$sql="select * from tbl_user order by user_id";
$qry=mysqli_query($conn,$sql);
if(mysqli_num_rows($qry)){
    $tr="";
    $rw=0;
    while($row=mysqli_fetch_assoc($qry)){
        $rw++;
        $tr .= " 
        <tr>
        <td> $rw </td>
        <td> {$row['user_id']} </td>
        <td> {$row['fnme']} </td>
        <td> {$row['lnme']} </td>
        <td> {$row['username']} </td>
        <td> {$row['role']} </td>
        <td> {$row['status']} </td>
        <td> <a href='' id='edit_user'><i class='fa fa-pencil'></i></a> </td>

        </tr>
        ";
    }
    echo $tr;

}
else{
    echo "0";
}

?>