<?php session_start() ?>
<?php include 'config/config.php' ?>
<?php include 'config/database.php' ?>
<?php include 'proccess/users.php' ?>
<?php
  if(isset($_POST['submit'])){
    changePasswordForgot($_POST,$conn,$BASE_URL);
  }

  if(!isset($_SESSION['change_password'])){

      Redirect($BASE_URL.'lupa-password.php');
      
  }else{
      $email = $_SESSION['confirm_email'];
  }
?>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sistem Pengecekan Skripsi | Log in</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= $BASE_URL ?>assets/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="<?= $BASE_URL ?>assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= $BASE_URL ?>assets/dist/css/adminlte.min.css">
</head>

<body class="login-page" style="min-height: 496.391px;">
  <div class="login-box">
    <div class="login-logo">
      <a href="<?= $BASE_URL ?>assets/index2.html"><b>Universitas Darma Persada</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
      <div class="card-body login-card-body">
        <h4 class="login-box-msg">Form Change Password !</h4>
        <div class="alert alert-success">
            Silahkan ubah password Anda !
        </div>
        <form action="" method="post">
          <div class="input-group mb-3">
            <input type="password" class="form-control" name="new_password" placeholder="Password Baru">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-envelope"></span>
              </div>
            </div>
          </div>
          <input type="hidden" name="email" value="<?= $email ?>">
          <div class="input-group mb-3">
            <input type="password" class="form-control" name="confirm_password" placeholder="Konfirmasi Password">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12">
              <button type="submit" name="submit" class="btn btn-primary btn-block">Perbarui Password</button>
            </div>
            <!-- /.col -->
          </div>
        </form>


        <!-- /.social-auth-links -->

        <p class="mb-1">
          <a href="<?= $BASE_URL ?>">Back To Login</a>
        </p>
        <p class="mb-0">
          <a href="<?= $BASE_URL ?>register.php" class="text-center">Register new Account</a>
        </p>
        <?php if (isset($_SESSION['message'])) { ?>
          <p style="display: none;" id="message"><?= $_SESSION['message'] ?></p>
          <p style="display: none;" id="type"><?= $_SESSION['type'] ?></p>
          <p style="display: none;" id="title"><?= $_SESSION['title'] ?></p>
        <?php } ?>
        <?php
        unset($_SESSION['message']);
        unset($_SESSION['type']);
        unset($_SESSION['title']);
        ?>
      </div>
      <!-- /.login-card-body -->
    </div>
  </div>
  <!-- /.login-box -->

  <!-- jQuery -->
  <script src="<?= $BASE_URL ?>assets/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="<?= $BASE_URL ?>assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="<?= $BASE_URL ?>assets/dist/js/adminlte.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script>
    let message = document.getElementById('message');
    if (message != null) {
      let title = document.getElementById('title').innerHTML;
      let type = document.getElementById('type').innerHTML;
      swal({
        title: title,
        text: message.innerHTML,
        icon: type,
      });
    }
  </script>

</body>

</html>