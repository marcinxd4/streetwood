<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Street Wood</title> 
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="<?php echo base_url();?>assetss/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assetss/css/style.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assetss/css/signin.css" rel="stylesheet">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon.png">
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      
      <div class="row" id="pwd-container">
        <div class="col-md-4"></div>
        
        <div class="col-md-4">
          <section class="login-form">
          <?php 
              $attributes = array('class' => 'form-horizontal', 'role'=>'login');
              echo form_open('', $attributes);
          ?>
              <img src="<?php echo base_url();?>assetss/img/logo.jpg" class="img-responsive" alt="" />
              <?php if(isset ($komunikat))  
              echo '<p class="bladwalidacji">'.$komunikat.'</p>'; ?>
              <input type="text" name="login" placeholder="Login" required class="form-control input-lg" />
              <input type="password" class="form-control input-lg" id="haslo" placeholder="Password" required="" name="haslo" />       
              <button type="submit" name="go" class="btn btn-lg btn-primary btn-block">Zaloguj</button>
              <div>
                <a href="<?php echo base_url().'uzytkownik/rejestracja'; ?>">Załóż konto</a> lub <a href="#">Odzyskaj hasło</a>
              </div>
              
            </form>
          </section>  
          </div> 
      </div>      
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo base_url();?>assetss/js/bootstrap.min.js"></script>
  </body>
</html>