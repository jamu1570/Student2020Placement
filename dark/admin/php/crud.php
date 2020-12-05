<?php
include_once '../includes/db.inc.php';
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $sql = "delete from company where id='$id';";
    $res = mysqli_query($conn, $sql);
    if (!$res) {
        ?>
        <script>
            alert("Company could not be deleted");
            window.location.replace("../viewcompanies.php?result=fail");
        </script>
        <?php
    } else {
        ?>
        <script>
            alert("Company has been deleted");
            window.location.replace("../viewcompanies.php?result=success");
        </script>
        <?php
    }
}