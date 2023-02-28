<?php
include "connect.php";
$sql="select * from post order by post_id";
$qry=mysqli_query($conn,$sql);
if(mysqli_num_rows($qry)){
    $tr="";
    $rw=0;
    while($row=mysqli_fetch_assoc($qry)){
        $rw++;
        $tr .= " 
        <tr>
        <td> $rw </td>
        <td> {$row['post_id']} </td>
        <td> {$row['title']} </td>
        <td> {$row['description']} </td>
        <td> {$row['author']} </td>
        <td><img height='100' width='200' src='Post_images/{$row['post_img']}'> </td>
        <td> {$row['category']} </td>
        <td> <a href='' id='edit_post'><i class='fa fa-pencil'></i></a> </td>

        </tr>
        ";
    }
    echo $tr;

}
else{
    echo "0";
}

?>