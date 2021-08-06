<?php 
session_start();
require_once $_SERVER['DOCUMENT_ROOT'] . '/seleksiskripsi/vendor/autoload.php';
use Gregwar\Captcha\CaptchaBuilder;

    
$builder = new CaptchaBuilder;
$builder
    ->build()
    ->save('out.jpg')
;
$_SESSION['phrase'] = $builder->getPhrase();
echo json_encode($builder->inline())
?>