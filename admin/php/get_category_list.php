<?php
include "connect.php";
$sql="select * from tbl_category order by category_id";
$qry=mysqli_query($conn,$sql);
if(mysqli_num_rows($qry)){
    $tr="";
    $rw=0;
    while($row=mysqli_fetch_assoc($qry)){
        $rw++;
        $tr .= " 
        <tr>
        <td> $rw </td>
        <td> {$row['category_id']} </td>
        <td> {$row['category_nme']} </td>
        <td> {$row['category_status']} </td>
        <td> <a href='' id='edit_category'><i class='fa fa-pencil' title='Update/Edit '></i></a> </td>

        </tr>
        ";
    }
    echo $tr;

}
else{
    echo "0";
}

?>