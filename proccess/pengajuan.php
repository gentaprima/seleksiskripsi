<?php

function resultDataPengajuan($conn, $id_user)
{
    $query = "SELECT * FROM tb_pengajuan JOIN tb_pembimbing on tb_pengajuan.id_pembimbing = tb_pembimbing.id_pembimbing JOIN tbl_judul_skripsi ON tb_pengajuan.id_judul = tbl_judul_skripsi.id_judul WHERE id_user='$id_user'";
    $execQuery = mysqli_query($conn, $query);
    $result = mysqli_fetch_all($execQuery, MYSQLI_ASSOC);
    return $result;
}

function periode()
{
    $get_month = (int) date("m");
    $get_year = (int)date('Y');
    if ($get_month >= 9 && $get_month <= 12) {
        return "Periode Gasal ( " . $get_year . "- " . intval($get_year + 1) . ")";
    } else {
        return "Periode Genap ( " . $get_year . "- " . intval((int)$get_year + 1) . ")";
function deletePengajuan($conn, $BASE_URL, $id)
{
    $where = [
        'id_pengajuan' => $id
    ];
    $delete = delete('tb_pengajuan', $where, $conn);
    if ($delete) {
        $_SESSION['message'] = "Data Pengajuan skripsi berhasil dihapus";
        $_SESSION['type'] = "success";
        $_SESSION['title'] = "Success";
        // echo "<script>window.location.href = '$BASE_URL'dashboard/profile.php;</script>";
        Redirect($BASE_URL . 'dashboard/data-skripsi.php');
    }
}
