<?php
include "checksession.php";
include "header.bootslander.php";
include "connection.php";
//insertrecord.php

//capture all data
$title=$_POST['title'];
$speaker=$_POST['speaker'];
$date=$_POST['date'];
$time=$_POST['time'];

//insert to sql query
$sql="INSERT INTO activity(title, speaker, date, time)
      VALUES ('$title','$speaker','$date','$time')";

//run sql query - save record to dbserver
$rs=mysqli_query($db, $sql);

//berjaya/tidak
if ($rs==true){
    // header('Location: searchadmin.php?messageadd');
    echo "Record saved";
}else{//error
    echo "Cannot save record";
    echo mysqli_error($db);
}
?>

<?php
include "footer.bootslander.php";
?>
