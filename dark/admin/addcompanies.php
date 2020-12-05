 required<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/addcomp.css">
    <?php include_once 'includes/head.php' ?>
</head>
<body>
    <div>
    	<img id="img2" src="../images/walk.png" width="550px" style="position: absolute; position: fixed; z-index: 1; margin-left: 60%; margin-top: 50vh;">
    </div>
    <img src="../images/add.png" id="img1">
    	<?php include_once 'includes/nav.php' ?>
    <div class="content" style="margin-top: 40px; margin-left: 20px;">
    	<h1 class="form-row justify-content-center" style="margin-left: 100px;">Add Company</h1> <br>
    	<form action="php/addcomp.inc.php" autocomplete="off" method="POST">
			<input type="text" style="display: none;" autocomplete="false">
		    <div class="row justify-content-center align-items-baseline">
		      <div class="center one">
		        <div class="form-row">
		        	<div class="form-group col-md-6">
			          <label for="cid">Company ID</label>
			          <input type="text" class="form-control" id="cid" name="cid" placeholder="***" readonly>
			        </div>
			        <div class="form-group col-md-6">
			          <label for="cname">Company Name</label>
			          <input type="text" class="form-control" id="cname" name="cname" required>
			        </div>
		        </div>
		        <div class="form-row">
		        	<div class="form-group col-md-6">
			          <label for="website">Website</label>
			          <input type="text" class="form-control" id="website" name="website" required>
			        </div>
			        <div class="form-group col-md-6">
			          <label for="exampleInputEmail1">Industry Type</label>
			          <select class="form-control" name="ctype">
			          	<option value="IT">IT</option>
			          	<option value="BPO">BPO</option>
			          </select>
			        </div>
		        </div>
		        <div class="form-row">
			        <div class="form-group col-md-6">
			          <label for="exampleInputEmail1">Status</label>
			          <select class="form-control" name="status">
			          	<option value="Active">Active</option>
			          	<option value="Inactive">Inactive</option>
			          </select>
			        </div>
		        	<div class="form-group col-md-6">
			          <label for="telephone">Telephone</label>
			          <input type="tel" pattern="^\d{10}$" class="form-control" id="cname" name="telephone" required>
								<div class="invalid-feedback">
									Enter Valid Phone Number
								</div>
			        </div>
		        </div>
		        <div class="form-group">
		          <label for="address">Address</label>
		          <textarea class="form-control" id="address" name="address" required></textarea>
		        </div>
		        <div class="form-row justify-content-center">
		        	<button type="submit" class="btn col-md-6" name="add" style="width: 250px; color: white;
									font-weight: bold; background: linear-gradient(to left, #4B83EA, #504EC2);">Add Company</button>
		        </div>
		      </div>
		    </div>
		  </form> 
    </div>
    <?php include_once 'includes/footer.php' ?>
		<script>
			var a = document.getElementById("telephone");
			if (a.length > 10) {
				alert("Phone numbers must be within 10 digit");
			}
		</script>
</body>
</html>