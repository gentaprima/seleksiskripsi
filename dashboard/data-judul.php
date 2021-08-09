<?php include '../config/config.php' ?>
<?php include '../config/database.php' ?>
<?php include '../components/header.php' ?>
<?php include '../components/navbar.php' ?>
<?php include '../components/sidebar.php' ?>
<?php include '../proccess/users.php' ?>
<?php
require '../vendor/autoload.php';
include '../proccess/judul_skripsi.php';


$dataJudul = readDataAllRow($conn, "SELECT * FROM tbl_judul_skripsi");

if (isset($_POST['upload'])) {
    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
    $spreadSheet = $reader->load($_FILES['filejudul']['tmp_name']);
    $excelSheet = $spreadSheet->getActiveSheet();
    $spreadSheetAry = $excelSheet->toArray();

    $sql = "";
    foreach ($spreadSheetAry as $key => $title) {
        if ($key != 0) {
            $preprocessing = textPreprocessing(array($title[0]));
            $resultPreprocessing = $preprocessing[0];
            $titleStr = $title[0];
            $label = $title[1];
            $sql .= "INSERT INTO tbl_judul_skripsi (judul_skripsi,text_preprocessing,label) VALUES ('$titleStr','$resultPreprocessing','$label');";
            
        }
    }
    if ($conn->multi_query($sql) === TRUE) {
        $_SESSION['message'] = "Berhasil Import Data Judul Skripsi";
        $_SESSION['type'] = "success";
        $_SESSION['title'] = "Berhasil";
        Redirect($BASE_URL.'dashboard/data-judul.php');
    }
}

if (isset($_POST['submit_update'])) {
    updateData($conn, $_POST, $BASE_URL);
}

if (isset($_GET['id'])) {
    deleteData($conn, $_GET['id'], $BASE_URL);
}
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header ml-3 mr-3">
        <div class="container-fluid ">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Dashboard</h1><span style="font-size: 14px;">Selamat Datang di Sistem Informasi Pendaftaran Skripsi</span>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?= $BASE_URL ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="">Data Judul Skripsi</a></li>
                        </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content ml-3 mr-3">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 bg-white shadow p-4">
                    <h4 class="color-primary text-bold">Data Judul Skripsi</h4>
                    <hr>
                    <form method="post" enctype="multipart/form-data">
                        Pilih File:
                        <input name="filejudul" type="file" required="required">
                        <input class="btn btn-success" name="upload" type="submit" value="Import">
                    </form>
                    <table id="example1" class="table table-bordered table-striped dataTable js-exportable " style="width: 100%;">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Judul Skripsi</th>
                                <th>Text Preprocessing</th>
                                <th>Label</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1;
                            foreach ($dataJudul as $row) { ?>
                                <tr>
                                    <td><?= $i++ ?>.</td>
                                    <td><?= $row['judul_skripsi'] ?> </td>
                                    <td><?= $row['text_preprocessing'] ?></td>
                                    <td><?= $row['label'] ?></td>

                                </tr>
                            <?php } ?>
                        </tbody>

                    </table>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<div class="modal fade" id="modalEdit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content ">
            <div class="modal-header bg-primary2">
                <h5 class="modal-title" id="modal_title">Form Edit Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span style="color: #fff;" aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" class="mt-3 pr-2 pl-2" method="post">
                    <div class="form-group row">
                        <label for="" class="col-sm-2">Nama Depan</label>
                        <div class="col-sm-10">
                            <div class="input-group">
                                <input name="first_name" id="first_name" style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Nama Depan" a>

                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2">Nama Belakang</label>
                        <div class="col-sm-10">
                            <div class="input-group">
                                <input name="last_name" id="last_name" style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Nama Belakang" a>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2">Jenis Kelamin</label>
                        <div class="col-sm-10">
                            <div class="input-group">
                                <select name="jk" id="jk" style="background-color: #f2f4f6;border: 0;" type="text" class="form-control">
                                    <option value="Laki-laki">Laki-laki</option>
                                    <option value="Perempuan">Perempuan</option>
                                </select>

                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2">Angkatan</label>
                        <div class="col-sm-10">
                            <div class="input-group">
                                <select id="angkatan" name="angkatan" style="background-color: #f2f4f6;border: 0;" type="text" class="form-control">
                                    <option value="2021">2021</option>
                                    <option value="2020">2020</option>
                                    <option value="2019">2019</option>
                                    <option value="2018">2018</option>
                                    <option value="2017">2017</option>
                                    <option value="2016">2016</option>
                                    <option value="2015">2015</option>
                                    <option value="2014">2014</option>
                                </select>

                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="id_users" id="id_users">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="submit" name="submit_update" class="btn btn-primary">Perbarui Data</button>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalDelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">
            <div class="modal-header bg-primary2">
                <h5 class="modal-title" id="modal_title">Form Hapus Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span style="color: #fff;" aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h4 class="text-center mt-3">Anda yakin ingin menghapus data tersebut ?</h4 class="text-center">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <a id="delete_id" name="submit_update" class="btn btn-primary">Hapus Data</a>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalDetail" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content ">
            <div class="modal-header bg-primary2">
                <h5 class="modal-title" id="modal_title">Detail Mahasiswa</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span style="color: #fff;" aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row m-4">
                    <div class="col-md-4">
                        <div class="d-flex justify-content-center">
                            <img style="width: auto; height:200px" src="" id="image_users" alt="">
                        </div>
                    </div>
                    <div class="col-md-8 mt-4">
                        <div class="row">
                            <div class="col-md-4">
                                <span class="text-title">NIM</span>
                            </div>
                            <div class="col-md-8">
                                <span id="nim_detail" class="text-title text-bold">: </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <span class="text-title">Nama Lengkap</span>
                            </div>
                            <div class="col-md-8">
                                <span id="full_name" class="text-title text-bold">: </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <span class="text-title">Email</span>
                            </div>
                            <div class="col-md-8">
                                <span id="email_detail" class="text-title text-bold">: </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <span class="text-title">Jenis Kelamin</span>
                            </div>
                            <div class="col-md-8">
                                <span id="jk_detail" class="text-title text-bold">: </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <span class="text-title">Angkatan</span>
                            </div>
                            <div class="col-md-8">
                                <span id="angkatan_detail" class="text-title text-bold">: </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <span class="text-title">Semester</span>
                            </div>
                            <div class="col-md-8">
                                <span id="semester_detail" class="text-title text-bold">: </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <span class="text-title">Alamat Lengkap</span>
                            </div>
                            <div class="col-md-8">
                                <span id="alamat_detail" class="text-title text-bold">: </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<?php include '../components/footer.php' ?>