<?php include '../config/config.php' ?>
<?php include '../config/database.php' ?>
<?php include '../components/header.php' ?>
<?php include '../components/navbar.php' ?>
<?php include '../components/sidebar.php' ?>
<?php include '../proccess/users.php' ?>
<?php
if (isset($_POST['submit_profile'])) {
    changeProfile($_POST, $_FILES, $conn, $BASE_URL);
}

if (isset($_POST['submit_password'])) {
    changePassword($_POST, $conn, $BASE_URL);
}
$emailUsers = $_SESSION['users_data']['email'];
$dataUsers = getDataRow("SELECT * FROM tbl_users WHERE email = '$emailUsers'", $conn);



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
                            <li class="breadcrumb-item"><a href="">Daftar Skripsi</a></li>
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
                        <h4 style="color:#002171;font-weight:bold;font-size:18px;width:100%;">Silahkan Daftar Skripsi disini </h4>
                        <div class="input-group mb-3 mt-3">
                            <input style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Judul Skripsi" aria-label="Judul" aria-describedby="basic-addon1">
                            <div class="input-group-prepend">
                                <span style="background-color: #f2f4f6;border: 0;" class="input-group-text" id="basic-addon1"><i class="fa fa-book"></i></span>
                            </div>
                        </div>
                        <div class="input-group" style="margin-bottom: 1.3%;">
                            <input style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Studi Kasus" aria-label="kasus" aria-describedby="basic-addon1">
                            <div class="input-group-prepend">
                                <span style="background-color: #f2f4f6;border: 0;" class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i></span>
                            </div>
                        </div>
                        <div class="input-group" style="margin-bottom: 1.3%;">
                            <select name="angkatan" required class="form-control" style="background-color: #f2f4f6;border: 0;">
                                <?php if ($dataUsers['angkatan'] == null) { ?>
                                    <option value="">-- Dosen Pembimbing --</option>
                                <?php } else { ?>
                                    <option value="<?= $dataUsers['angkatan'] ?>"><?= $dataUsers['angkatan'] ?></option>
                                <?php } ?>
                                <option style="background-color: #f2f4f6;border: 0;" value="<?= date('Y') ?>"><?= date('Y') ?></option>
                                <option value="2020">Pak</option>
                            </select>
                        </div>
                        <div class="input-group mb-4">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="inputGroupFile04" style="background-color: #f2f4f6;border: 0;">
                                <label class="custom-file-label" for="inputGroupFile04" style="background-color: #f2f4f6;border: 0;">Upload Proposal</label>
                            </div>
                        </div>
                        <div class="row" style="margin-left: 0.1%;">
                            <button type="submit" name="submit_profile" class="btn btn-primary mb-1 mr-4" style="min-width: 10%;max-width:50%"><i class="fa fa-save"><br>Simpan</i></button>
                            <button type="submit" name="submit_profile" class="btn btn-warning mb-1 text-white" style="min-width: 10%;max-width:50%"><i class="fa fa-eraser"><br>Ulang Pengisian</i></button>
                        </div>
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