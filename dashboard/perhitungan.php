<?php include '../config/config.php' ?>
<?php include '../config/database.php' ?>
<?php include '../proccess/judul_skripsi.php' ?>

<?php 

    $value = $_GET['value'];
    $dataSkripsi = resultSearchLink($conn,$BASE_URL,$value);
    // echo json_encode($dataSkripsi);