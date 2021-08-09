<?php include '../config/config.php' ?>
<?php include '../config/database.php' ?>
<?php include '../components/header.php' ?>
<?php include '../components/navbar.php' ?>
<?php include '../components/sidebar.php' ?>
<?php
require '../proccess/crud.php';


$dataJudul = readDataAllRow($conn, "SELECT * FROM tb_saran");

if (isset($_POST['upload'])) {
    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
    $spreadSheet = $reader->load($_FILES['filejudul']['tmp_name']);
    $excelSheet = $spreadSheet->getActiveSheet();
    $spreadSheetAry = $excelSheet->toArray();
    $sql = "";
    $i = 0;
    foreach ($spreadSheetAry as $key => $title) {
        if ($key != 0) {
            $preprocessing = textPreprocessing(array($title[1]))[0];
            $titleStr = preg_replace('/[^A-Za-z0-9\-\s]/', '', $title[1]);
            $sql = "INSERT INTO tb_saran (judul_skripsi,preprocessing) VALUES ('$titleStr','$preprocessing')";
            $conn->query($sql);
        }
    }

    if ($conn->multi_query($sql) === TRUE) {
        $_SESSION['message'] = "Berhasil Import Data Judul Skripsi";
        $_SESSION['type'] = "success";
        $_SESSION['title'] = "Berhasil";
        Redirect($BASE_URL . 'dashboard/data-saran.php');
    }
}

if (isset($_POST['submit_update'])) {
    $id = $_POST['id_saran'];
    $judul  = $_POST['judul'];
    $query = "Update tb_saran set judul_skripsi ='$judul' where id_saran = '$id' ";
    $_SESSION['message'] = "Berhasil Delete DAta";
    $_SESSION['type'] = "success";
    $_SESSION['title'] = "Berhasil";
    $ex = $conn->query($query);
    Redirect($BASE_URL . 'dashboard/data-saran.php');
}

if (isset($_GET['id'])) {
    $_SESSION['message'] = "Berhasil Delete Data";
    $_SESSION['type'] = "success";
    $_SESSION['title'] = "Berhasil";
    $del = delete('tb_saran', ['id_saran' => $_GET['id']], $conn);
    Redirect($BASE_URL . 'dashboard/data-saran.php');
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
                            <li class="breadcrumb-item"><a href="">Data Saran Judul</a></li>
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
                    <h4 class="color-primary text-bold">Data Saran Judul</h4>
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
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1;
                            foreach ($dataJudul as $row) { ?>
                                <tr>
                                    <td><?= $i++ ?>.</td>
                                    <td><?= $row['judul_skripsi'] ?> </td>
                                    <td>
                                        <div class="d-flex justify-content-center">
                                            <span class="ml-1" data-toggle="tooltip" data-toggle="tooltip" data-placement="top" title="Ubah Data">
                                                <button onClick="updateDataSaran('<?= $BASE_URL ?>','<?= $row['judul_skripsi'] ?>','<?= $row['id_saran'] ?>')" data-toggle="modal" data-target="#modalEdit" type="button" class="btn btn-outline-info btn-circle btn-icon btn-sm">
                                                    <i class="fa fa-edit"></i></button>
                                            </span>
                                            <span class="ml-1" data-toggle="tooltip" data-toggle="tooltip" data-placement="top" title="Hapus Data">
                                                <a href="data-saran.php?id=<?= $row['id_saran'] ?>" class="btn btn-danger btn-circle btn-sm">
                                                    <i class="fa fa-trash text-white"></i></a>
                                            </span>
                                        </div>
                                    </td>
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
                        <label for="" class="col-sm-2">Judul Skripsi</label>
                        <div class="col-sm-10">
                            <div class="input-group">
                                <input name="judul" id="judul" style="background-color: #f2f4f6;border: 0;" type="text" class="form-control" placeholder="Judul Skripsi" a>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="id_saran" id="id_saran">

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
<script>
    function updateDataSaran(BASE_URL, judul, id) {
        document.getElementById("judul").value = judul;
        document.getElementById("id_saran").value = id;

    }
</script>
<?php include '../components/footer.php' ?>