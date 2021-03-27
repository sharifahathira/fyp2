<?php
include "header.bootslander.php";
include "connection.php";
?>
<?php
$id=$_GET['id'];
?>
<h4>Delete record? <?php echo $id?></h4>
<br>
<?php
//sql to delete
$sql="DELETE FROM students 
      WHERE id ='$id'";

//run sql query
$rs=mysqli_query($db, $sql);

//feedback operation successfull
if($rs=true){
    echo "Record deleted, id $id ";
}
?>
<a href="searchadmin.php"
   class="btn btn-outline-dark">Kembali</a>

<?php
include "footer.bootslander.php";
?>

