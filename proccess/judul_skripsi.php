<?php
include '../proccess/crud.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/seleksiskripsi/vendor/autoload.php';

use Phpml\Classification\KNearestNeighbors;
use Phpml\FeatureExtraction\TokenCountVectorizer;
use Phpml\Tokenization\WhitespaceTokenizer;
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

function stemmingJudul($input)
{
    $stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
    $dictionary = $stemmerFactory->createDefaultDictionary();
    $dictionary->addWordsFromTextFile($_SERVER['DOCUMENT_ROOT'] . '/seleksiskripsi/stopword.txt');
    $stemmer = new \Sastrawi\Stemmer\Stemmer($dictionary);
    return $stemmer->stem($input); //internet
}

function stopwordJudul($input)
{
    $remover = new \Sastrawi\StopWordRemover\StopWordRemoverFactory();
    $r = $remover->createStopWordRemover();
    $removeData = ($r->remove($input));
    return $removeData;
}

function tokenizerData($data)
{
    $vectorizer = new TokenCountVectorizer(new WhitespaceTokenizer());
    $vectorizer->fit($data);
    $sample = $vectorizer->transform($data);
    $transformer = new TfIdfTransformer($sample);
    return $transformer->transform($sample);
}



function addJudulSkripsi($conn, $BASE_URL)
{
    $judulSkripsi = "Mereka meniru-nirukannya";
    $allData = fetchJudulSkripsi($conn, 0, fetchAllJudulSkripsi($conn));
    // foreach($allData as $sample){
    //     print_r($sample['judul_skripsi']));
    // }
    // $extrackInput = stopwordJudul($judulSkripsi);
    // $stemmingText = stemmingJudul($extrackInput);
    // echo($stemmingText);
    // $classifier = new KNearestNeighbors($k = 4);


    // $dataJudul = [
    //     "judul_skripsi" => $_POST['judul_skripsi'],
    //     "stemming" => "test3",
    //     "stop_word" => "test3",
    //     "label" => 0
    // ];

    // $insertJudul = create($dataJudul, $conn, 'tbl_judul_skripsi');
    // if ($insertJudul) {
    //     $_SESSION['message'] = "Berhasil Mendaftar Skripsi, Silahkan Menunggu Konfirmasi Admin";
    //     $_SESSION['type'] = "success";
    //     $_SESSION['title'] = "Success";
    //     Redirect($BASE_URL . 'dashboard/daftar-skripsi.php');
    // } else {
    //     $_SESSION['message'] = "Mohon maaf , Pendaftaran Sedang Dalam Perbaikan";
    //     $_SESSION['type'] = "error";
    //     $_SESSION['title'] = "Warning";
    //     Redirect($BASE_URL . 'dashboard/daftar-skripsi.php');
    // }
}




// $endNumber = 7;
// $dataSkripsi = fetchJudulSkripsi($conn, $page, $limit, $endNumber);
// $totalDataSkripsi = count($dataSkripsi);
// // print_r($totalDataSkripsi);die;
// print_r($totalDataSkripsi);die;
