<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>

  <style type="text/css">
  	#frmPostOtherPage label.error{
  		color:red;
  	}
  </style>
</head>
<body>
<?php echo do_shortcode("[first-demo-plugin]");?>
<?php echo do_shortcode("[first-demo-plugin-parameter name='dhruvil' author='Dhruvil Chauhan']");?>
<div class="container">
  <form action="#" id="frmPostOtherPage">
    <div class="form-group">
      <label for="name">Name For Other Page:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
    </div>
    <div class="form-group">
      <label for="email">Email For Other Page:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>
