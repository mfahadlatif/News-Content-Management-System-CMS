<?php
include "connect.php";
$errors=array();
if(isset($_FILES['fileload'])){
    $file_nme=$_FILES['fileload']['name'];
    $file_size=$_FILES['fileload']['size'];
    $file_tmp=$_FILES['fileload']['tmp_name'];
    $file_type=$_FILES['fileload']['type'];

$new_name=time(). "-" .basename($file_nme);
$target="../Post_images/" . $new_name;
move_uploaded_file($file_tmp,$target);
}
else{
    $new_name="no-image.jpg";
    $target="../Post_images/" .$new_name;
}
$post_title=$_POST['post_title'];
$post_desc=$_POST['postdesc'];
$category=$_POST['category'];
$author="1";

$sql="insert into post (title,description,category,author,post_img) values
('{$post_title}','{$post_desc}','{$category}', '{$author}','{$new_name}')";
$qry=mysqli_query($conn,$sql);
if($qry){
    echo "1";
}
else{
    echo "could not insert data " . mysqli_error($conn);
}

?>