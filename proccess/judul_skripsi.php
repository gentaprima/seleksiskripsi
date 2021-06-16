<?php

//paggination
$endNumber = 7;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = ($page > 1) ? ($page * $endNumber) - $endNumber : 0;
$numData = $limit + 1;
$previous = $page - 1;
$next = $page + 1;

function fetchJudulSkripsi($conn, $limit, $end)
{
    $query = "SELECT * FROM tbl_judul_skripsi limit $limit,$end";
    $execQuery = mysqli_query($conn, $query);
    $result = mysqli_fetch_all($execQuery, MYSQLI_ASSOC);
    return $result;
}

function fetchAllJudulSkripsi($conn)
{
    $query = "SELECT * FROM tbl_judul_skripsi";
    $execQuery = mysqli_query($conn, $query);
    $result = mysqli_num_rows($execQuery);
    return $result;
}



// $endNumber = 7;
// $dataSkripsi = fetchJudulSkripsi($conn, $page, $limit, $endNumber);
// $totalDataSkripsi = count($dataSkripsi);
// // print_r($totalDataSkripsi);die;
// print_r($totalDataSkripsi);die;

