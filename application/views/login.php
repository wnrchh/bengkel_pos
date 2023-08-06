<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php print $SITE_TITLE; ?> | Log in</title>
  <link rel='shortcut icon' href='<?php echo $theme_link; ?>images/favicon.ico' />
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo $theme_link; ?>bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo $theme_link; ?>dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo $theme_link; ?>plugins/iCheck/square/blue.css">

</head>
<body class="hold-transition login-page" style="height:0;background-repeat: no-repeat;background: url('<?= base_url('uploads/bg/pos-background.jpg') ?>') no-repeat center center fixed;background-size:cover ">
  <?php 
  //Find Logo Path
    $logo=$this->db->query("select logo from db_sitesettings")->row()->logo;
  ?>
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>
      <img src="<?php echo $base_url; ?>uploads/<?= $logo;?>" width="auto" height="200px">
    </b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>
     <div class="text-danger tex-center"><?php echo $this->session->flashdata('failed'); ?></div>
	   <div class="text-success tex-center"><?php echo $this->session->flashdata('success'); ?></div>
         
    
    <form action="<?php echo $base_url; ?>login/verify" method="post" id="login">
      <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Username" id="username" name="username" autofocus><span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" id="pass" name="pass">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
       
	   
    </form>
    <a href="login/forgot_password">I forgot my password</a><br>
    <div class="row">
      <div class="col-md-12 text-right">
        <p style='font-style: italic;'>Version <?=app_version();?></p>   
      </div>
    </div>
    
  </div>
  <!-- /.login-box-body -->

   <?php if(demo_app()){ ?>
    <br>
  <div class="login-box-body">
    <label>Click to Start Session!</label>
    <div class="row">
     <div class="col-md-12">
       <table class="table table-bordered table-condensed text-center">         
            <tr>
              <td>admin</td>
              <td>123456</td>
              <td><button type="button" class="btn btn-info btn-block btn-flat btn-sm  admin">Apply</button></td>
            </tr>
            <tr>
              <td>Sales</td>
              <td>123456</td>
              <td><button type="button" class="btn btn-info btn-block btn-flat btn-sm  sales">Apply</button></td>
            </tr>
            <tr>
              <td>Purchase</td>
              <td>123456</td>
              <td><button type="button" class="btn btn-info btn-block btn-flat btn-sm purchase">Apply</button></td>
            </tr>
            </tbody>
          </table>
     </div>
    </div>
    <i><i class="fa fa-fw fa-info-circle text-warning"></i>Some of the features are disabled in demo and it will be reset after each hour.</i>
  </div>
<?php } ?>

 
  
</div>

<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo $theme_link; ?>plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo $theme_link; ?>bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<?php echo $theme_link; ?>plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
<script type="text/javascript" >
$(function($) { // this script needs to be loaded on every page where an ajax POST may happen
    $.ajaxSetup({ data: {'<?php echo $this->security->get_csrf_token_name(); ?>' : '<?php echo $this->security->get_csrf_hash(); ?>' }  }); });
</script>
<?php if(demo_app()){ ?>
  <script type="text/javascript">
  $(".admin").on("click",function(event) {
    $("#username").val("admin");
    $("#pass").val("123456");
    $("#login").submit();
  });
  $(".sales").on("click",function(event) {
    $("#username").val("Sales");
    $("#pass").val("123456");
    $("#login").submit();
  });
  $(".purchase").on("click",function(event) {
    $("#username").val("Purchase");
    $("#pass").val("123456");
    $("#login").submit();
  });
</script>
<?php } ?>
</body>
</html>
