<?php session_start() ?>
<?php include '../config/config.php' ?>
<?php include '../config/database.php' ?>
<?php include '../proccess/users.php' ?>
<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/seleksiskripsi/vendor/autoload.php';
use Gregwar\Captcha\CaptchaBuilder;

$builder = new CaptchaBuilder;
// var_dump($_SESSION['phrase']);die;
if (isset($_POST['submit'])) {
  
  $userInput = $_POST['captcha'];
  if($userInput == $_SESSION['phrase']) {
    proccessLogin($_POST, $conn, $BASE_URL);
  }
  else {
    // user phrase is wrong
    $_SESSION['message'] = "Mohon maaf, Captcha yang anda input tidak cocok !";
    $_SESSION['type'] = "error";
    $_SESSION['title'] = "Warning";
    header("Location: " . $BASE_URL);
    exit();
  }
}
if(isset($_SESSION['users_data'])){
  $link = $BASE_URL.'dashboard';
  Redirect($link);
}

// require_once $_SERVER['DOCUMENT_ROOT'] . '/seleksiskripsi/vendor';



?>