<?php include '../config/config.php' ?>
<?php include '../config/database.php' ?>
<?php include '../components/header.php' ?>
<?php include '../components/navbar.php' ?>
<?php include '../components/sidebar.php' ?>
<?php include '../proccess/users.php' ?>
<?php include '../proccess/judul_skripsi.php' ?>
<?php include '../proccess/pembimbing.php' ?>
<?php
$dataPembimbing = fetchPembimbing($conn);
$emailUsers = $_SESSION['users_data']['email'];
$dataUsers = getDataRow("SELECT * FROM tbl_users WHERE email = '$emailUsers'", $conn);
$kemiripan = null;
if (isset($_POST['submit_add_skripsi'])) {
    $kemiripan = addDataSkripsi($conn, $BASE_URL, $dataUsers['id_users']);
}

print_r($kemiripan);
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
                        <form action="daftar-skripsi.php" method="post" enctype="multipart/form-data">
                            <div class="input-group mb-3 mt-3">
                                <input name="judul_skripsi" style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Judul Skripsi" aria-label="Judul" aria-describedby="basic-addon1">
                                <div class="input-group-prepend">
                                    <span style="background-color: #f2f4f6;border: 0;" class="input-group-text" id="basic-addon1"><i class="fa fa-book"></i></span>
                                </div>
                            </div>
                            <div class="input-group" style="margin-bottom: 1.3%;">
                                <input name="studi_kasus" style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Studi Kasus" aria-label="kasus" aria-describedby="basic-addon1">
                                <div class="input-group-prepend">
                                    <span style="background-color: #f2f4f6;border: 0;" class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i></span>
                                </div>
                            </div>
                            <div class="input-group" style="margin-bottom: 1.3%;">
                                <select name="angkatan" required class="form-control" style="background-color: #f2f4f6;border: 0;">
                                    <?php if ($dataUsers['angkatan'] == null) { ?>
                                        <option value="">-- Pilih Angkatan --</option>
                                    <?php } else { ?>
                                        <option value="<?= $dataUsers['angkatan'] ?>"><?= $dataUsers['angkatan'] ?></option>
                                    <?php } ?>
                                    <!-- <option value="<?= date('Y') ?>"><?= date('Y') ?></option>
                                    <option value="2020">2020</option>
                                    <option value="2019">2019</option>
                                    <option value="2018">2018</option>
                                    <option value="2017">2017</option>
                                    <option value="2016">2016</option>
                                    <option value="2015">2015</option>
                                    <option value="2014">2014</option>
                                    <option value="2013">2013</option>
                                    <option value="2012">2012</option> -->
                                </select>
                            </div>
                            <div class="input-group" style="margin-bottom: 1.3%;">
                                <select name="pembimbing" required class="form-control" style="background-color: #f2f4f6;border: 0;">
                                    <option value="">-- Pembimbing --</option>
                                    <?php
                                    foreach ($dataPembimbing as $dp) {
                                    ?>
                                        <option style="background-color: #f2f4f6;border: 0;" value="<?= $dp['id_pembimbing'] ?>"><?= $dp['nama_pembimbing'] ?></option>

                                    <?php } ?>
                                </select>
                            </div>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input name="proposal" type="file" class="custom-file-input" id="inputGroupFile04" style="background-color: #f2f4f6;border: 0;">
                                    <label class="custom-file-label" for="inputGroupFile04" style="background-color: #f2f4f6;border: 0;">Upload Proposal</label>
                                </div>
                            </div>
                            <div class="mb-4">
                                <span class="mb-4 text-danger text-bold">*pdf, doc,docx</span>
                            </div>
                            <!-- <div class="input-group mb-4">
                                <label for=""><?= $persentaseKemiripan != null ? $persentaseKemiripan : null ?></label>
                            </div> -->
                            <div class="row" style="margin-left: 0.1%;">
                                <button type="submit" name="submit_add_skripsi" class="btn btn-primary mb-1 mr-4" style="min-width: 10%;max-width:50%"><i class="fa fa-save"><br>Simpan</i></button>
                                <button type="clear" name="submit_profile" class="btn btn-warning mb-1 text-white" style="min-width: 10%;max-width:50%"><i class="fa fa-eraser"><br>Ulang Pengisian</i></button>
                            </div>
                        </form>

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