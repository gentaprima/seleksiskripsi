<?php include '../config/config.php' ?>
<?php include '../config/database.php' ?>
<?php include '../components/header.php' ?>
<?php include '../components/navbar.php' ?>
<?php include '../components/sidebar.php' ?>
<?php include '../proccess/users.php' ?>
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
                            <li class="breadcrumb-item"><a href="">Jadwal Sidang</a></li>
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
                <div class="col-md-6 col-sm-12 col-12 mt-2">
                    <div class="bg-white shadow p-5 min-vh-50">
                        <h4 style="color:#002171;font-weight:bold;font-size:18px;width:100%;">Jadwal Sidang Skripsi Anda</h4>
                        <!-- <div class="input-group mb-3 mt-3">
                            <input style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Cari Jurnal" aria-label="Cari Jurnal" aria-describedby="basic-addon1">
                            <div class="input-group-prepend">
                                <span style="background-color: #f2f4f6;border: 0;" class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i></span>
                            </div>
                        </div> -->

                        <div class="form-group row mt-3">
                            <label for="name" class="col-sm-2">Nama Anda</label>
                            <div class="col-sm-10">
                                <input type="text" readonly name="name" class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="nim" class="col-sm-2">Nim</label>
                            <div class="col-sm-10">
                                <input type="text" readonly name='nim' class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="judul" class="col-sm-2">Judul</label>
                            <div class="col-sm-10">
                                <input type="text" readonly name='judul' class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="kasus" class="col-sm-2">Studi kasus</label>
                            <div class="col-sm-10">
                                <input type="text" readonly name='kasus' class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="pembimbing" class="col-sm-2">Pembimbing</label>
                            <div class="col-sm-10">
                                <input type="text" readonly name='pembimbing' class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="jadwal" class="col-sm-2">jadwal</label>
                            <div class="col-sm-10">
                                <input type="text" readonly name='jadwal' class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="url_sidang" class="col-sm-2">Ruangan</label>
                            <div class="col-sm-10">
                                <input type="text" readonly name="url_sidang" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-12 mt-2">
                    <div class="bg-white shadow p-5">
                        <div class="row justify-content-between">
                            <h4 style="color:#002171;font-weight:bold;font-size:18px;">Daftar Revisi</h4>
                            <div class="bg-danger pl-4 pr-4 pt-1 pb-1 rounded-pill align-content-center" style="font-size:12px; ;"><span class="align-middle">Mengulang</span>
                            </div>
                        </div>
                        <!-- <div class="input-group mb-3 mt-3">
                            <input style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Cari Jurnal" aria-label="Cari Jurnal" aria-describedby="basic-addon1">
                            <div class="input-group-prepend">
                                <span style="background-color: #f2f4f6;border: 0;" class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i></span>
                            </div>
                        </div> -->
                        <table class="table table-bordered mt-2">
                            <thead>
                                <tr>
                                    <th style="width: 10px">No</th>
                                    <th>Revisi/catatan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1.</td>
                                    <td>Update software</td>
                                </tr>
                            </tbody>
                        </table>
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