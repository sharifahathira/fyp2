<?php
include "checksession.php";
include "header.bootslander.php";
?>
<h4>Search Activity</h4>
<!-- searchadmin.php -->
<form action="" method="get" class="form-inline">

    <input type="text" name="txtsearch"
    class="form-control">
    <input type="submit" value="Search"
    class="btn btn-info">
</form>

<?php
    include "connection.php";
    $searchtitle="";
    if (isset($_GET['txtsearch'])){ //notice
        $searchtitle= $_GET['txtsearch'];
    }

    //sql command
    $sql="SELECT id, title, speaker, date, time FROM activity
          WHERE title LIKE '%$searchtitle%' ";

    //run sql
    $rs=mysqli_query($db, $sql);
    if($rs==false) {//if sql error
        echo("SQL Error : " . mysqli_error($db));
    }

    //no record match
    if(mysqli_num_rows($rs)==0){
        echo ("Record not found...<br>");
    }
    else{//listing record
    ?>
    <br>
    <table class="table table-hover">
            <tr>
            <td>ID</td>
            <td>Title</td>
            <td>Speaker</td>
            <td>Date</td>
            <td>Time</td>
            <td>Delete/Edit</td>
            </tr>
    <?php
        while($record=mysqli_fetch_array($rs)) {
            echo  "<tr>";
            echo  "<td>";
            echo $record['id']."</td>";
            echo  "<td>".$record['title']."</td>";
            echo  "<td>".$record['speaker']."</td>";
            echo  "<td>".$record['date']."</td>";
            echo  "<td>".$record['time']."</td>";

            //button delete
            $x=$record['id'];
            echo "<td>
                    <a href='confirmdelete.php?id=$x'
                    class='btn btn-danger'>
                    <i class='fa fa-trash'></i>
                    </a>  ";
            echo "<a href='formupdate.php?id=$x'
                    class='btn btn-warning'>
                    <i class='fa fa-edit'></i>
                    </a> 
                    </td>";
            echo "</tr>";
        }//end while
        echo "</table>";
    }
?>

<section class="Inner-page">
        <div class="container">
        <div class="row">
        <div class="col-md-6" class="col-md-8">
              <?php
                include "menu.php";
              ?>
        </div>
        </div>
        </div>
    </section>

<?php
include "footer.bootslander.php";
?>
