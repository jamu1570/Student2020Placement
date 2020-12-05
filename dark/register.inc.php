<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- <link rel="stylesheet" type="text/css" href="css/login.css"> -->
    <?php include_once 'includes/head.php' ?>
    <style>
        body {
            background: #202020;
        }
        #loginnav {
            border-color: white;
            color: white;
            transition: 0.5s ease;
        }
        #loginnav:hover {
            border-color: white;
            background-color: white;
            color: black;
            transition: 0.5s ease;
        }
    </style>
</head>
<body>
    <?php 
            include_once 'includes/db.inc.php';
            if (isset($_POST['signup'])) {
                $uname = $_POST['username'];
                $fname = $_POST['fname'];
                $lname = $_POST['lname'];
                $email = $_POST['mailid'];
                $phone = $_POST['phone'];
                $pwd1 = $_POST['pwd1'];
                $pwd2 = $_POST['pwd2'];
                $secque = $_POST['secque'];
                $secans = $_POST['secans'];
                if ($pwd1 == $pwd2) {
                    $sql = "insert into studentlogin(uname, pwd, fname, lname, email, phone, secque, secans) values('$uname', '$pwd1', '$fname', '$lname', '$email', '$phone', '$secque', '$secans');";
                    mysqli_query($conn, $sql);
                    ?>           
                <img src="images/success2.svg" id="img1" style="position: fixed; margin-top: 140px; margin-left: 10px;" width="480px">
                    <?php include_once 'includes/nav.php' ?>
                <div class="container" style="margin-top: 130px; margin-left: 270px;">
                    <h1 align="center" style="margin-left: 60px;">SignUp Successful!</h1> <br>
                    <div class="alert alert-success" role="alert" style="width: 600px; margin-left: 300px;">
                      <h4 class="alert-heading">Well done!</h4>
                      <p class="text-success">Aww yeah, you have successfully registered your account!</p>
                      <hr>
                      <p class="mb-0 text-success"><b class="text-success">Login</b> to explore more.</p>
                    </div>
                </div>
                    <?php
                } else {
            ?>
        <img src="images/404r.svg" id="img1" style="position: fixed; margin-top: 140px;" width="500px">
                    <?php include_once 'includes/nav.php' ?>
                <div class="container" style="margin-top: 130px; margin-left: 270px;">
                    <h1 align="center" style="margin-left: 60px;">SignUp Faied!</h1> <br>
                    <div class="alert alert-danger" role="alert" style="width: 600px; margin-left: 300px;">
                      <h4 class="alert-heading">Try Again!</h4>
                      <p class="text-danger">There was an error, please fill the fields correctly and signup!</p>
                      <hr>
                      <a href="register.php" class="alert-link"><b>Get back to register</a>
                    </div>
                </div>
                <?php
            }
            } 
        ?>

    <?php include_once 'includes/footer.php' ?>
</body>
</html>