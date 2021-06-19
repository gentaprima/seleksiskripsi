<?php include '../config/config.php' ?>
<?php include '../config/database.php' ?>
<?php include '../components/header.php' ?>
<?php include '../components/navbar.php' ?>
<?php include '../components/sidebar.php' ?>
<?php include '../proccess/users.php' ?>
<?php include '../proccess/judul_skripsi.php' ?>
<?php include '../proccess/test.php' ?>
<?php


if (isset($_POST['submit_profile'])) {
    changeProfile($_POST, $_FILES, $conn, $BASE_URL);
}

if (isset($_POST['submit_password'])) {
    changePassword($_POST, $conn, $BASE_URL);
}


$emailUsers = $_SESSION['users_data']['email'];
$dataUsers = getDataRow("SELECT * FROM tbl_users WHERE email = '$emailUsers'", $conn);
$dataSkripsi = fetchJudulSkripsi($conn, $limit, $endNumber);
$countAllData = fetchAllJudulSkripsi($conn);
$totalPage =  ceil($countAllData / $endNumber);
$num = $limit + 1;
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Dashboard</h1><span style="font-size: 14px;">Selamat Datang di Sistem Informasi Pendaftaran Skripsi</span>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?= $BASE_URL ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="">Cari Jurnal</a></li>
                        </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-12">
                    <div class="bg-white shadow p-5">
                        <h4 style="color:#002171;font-weight:bold;font-size:18px;width:100%;">Judul Skripsi apa yang ingin Anda Cari ?</h4>
                        <div class="input-group mb-3 mt-3">
                            <input style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Cari Jurnal" aria-label="Cari Jurnal" aria-describedby="basic-addon1">
                            <div class="input-group-prepend">
                                <span style="background-color: #f2f4f6;border: 0;" class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i></span>
                            </div>
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Judul Skripsi</th>
                                    <th>Jurnal</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php

                                foreach ($dataSkripsi as $skripsi) { ?>
                                    <tr>
                                        <td><span style="font-size: 13px;"><?= $num++ ?></span></td>
                                        <td><span style="font-size: 13px;"><?= strtoupper($skripsi['judul_skripsi']) ?></span></td>
                                        <td><a class="badge text-primary" style="font-size: 13px;">Download Jurnal</a></td>
                                    </tr>
                                <?php
                                } ?>
                            </tbody>
                        </table>
                        <ul class="pagination justify-content-start">
                            <li class="page-item">
                                <a class="page-link" style="font-size: 13px;" <?php if ($page > 1) {
                                                                                    echo "href='?page=$previous'";
                                                                                } ?>>Previous</a>
                            </li>
                            <?php
                            for ($x = 1; $x <= $totalPage; $x++) {
                            ?>
                                <li class="page-item <?= $x == $page ? "active" : "" ?>"><a class="page-link" style="font-size: 13px;" href="?page=<?php echo $x ?>"><?php echo $x; ?></a></li>
                            <?php
                            }
                            ?>
                            <li class="page-item">
                                <a class="page-link" style="font-size: 13px;" <?php if ($page < $totalPage) {
                                                                                    echo "href='?page=$next'";
                                                                                } ?>>Next</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
            <!-- /.row (main row) -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?php include '../components/footer.php' ?>