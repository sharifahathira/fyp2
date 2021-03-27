<?php
include "checksession.php";
include "header.bootslander.php";
?>

<div class="col-md-8">

<div class="card <?php echo $cardmode ?>">
            <div class="card-header">
            	<h4>Insert New Activity</h4><br>
            </div>

            

            <div class="card-body">
            

<!-- forminsert.php -->
<form action="insertrecord.php" method="post">
    

    Activity Name
    <input type="text" name="title"
           class="form-control">

    Speaker 
    <input type="text" name="speaker"
           class="form-control">

    Date 
    <input type="date" name="date"
           class="form-control">

    Time 
    <input type="time" name="time"
           class="form-control"> <br>

    <input type="submit" value="Submit"
    class="btn btn-primary" style="float: right;">
</form>

		</div>
        </div>
    </div>

        <div class="col-md-4">
            <div class="container">
              <?php
                include "menu.php";
              ?>
        
        </div>
        </div>
    

<?php
include "footer.bootslander.php";
?>