<?php
include '../proccess/crud.php';
require_once $_SERVER['DOCUMENT_ROOT'] . '/seleksiskripsi/vendor/autoload.php';

use Phpml\Classification\KNearestNeighbors;
use Phpml\FeatureExtraction\TokenCountVectorizer;
use Phpml\Tokenization\WhitespaceTokenizer;
use Phpml\FeatureExtraction\TfIdfTransformer;

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


function resultSearch($conn, $label)
{
    $query = "SELECT * FROM tbl_judul_skripsi where label = '$label'";
    $execQuery = mysqli_query($conn, $query);
    $result = mysqli_fetch_all($execQuery, MYSQLI_ASSOC);
    return $result;
}

function searchJudulSkripsi($conn, $BASE_URL)
{

    $allData = fetchJudulSkripsi($conn, 0, fetchAllJudulSkripsi($conn));

    $dataSample = [];
    $dataLabel = [];
    foreach ($allData as $sample) {
        array_push($dataSample, $sample['text_preprocessing']);
        array_push($dataLabel, $sample['label']);
    }
    $dataSample = array_unique($dataSample);
    $input = [$_POST['judul_skripsi']];
    $input = stemmingJudul($input[0]);
    $input = [stopwordJudul($input)];
    //vectorcount
    $vectorizer = new TokenCountVectorizer(new WhitespaceTokenizer());
    $vectorizer->fit($dataSample);
    $vectorizer->transform($dataSample);
    $vectorizer->transform($input);
    // tfidtransform
    $transformer = new TfIdfTransformer($dataSample);
    $transformer->transform($dataSample);
    $transformer->transform($input);

    //test prediction
    $classifier = new KNearestNeighbors(5);
    $classifier->train($dataSample, $dataLabel);
    $predict =  $classifier->predict($input)[0];
    return resultSearch($conn, $predict);
}

function addDataSkripsi($conn)
{
    $input = [$_POST['judul_skripsi']];
    $input = stemmingJudul($input[0]);
    $input = stopwordJudul($input);
    
    if (!empty($_POST['judul_skripsi']))
        $dataJudul = [
            "judul_skripsi" => $_POST['judul_skripsi'],
            "text_preprocessing" => $input,
            "label" => $predict,
            "proposal" => "test"
        ];
    create($dataJudul, $conn, 'tbl_judul_skripsi');
    $_SESSION['message'] = "Selamat, Judul Skripsi Anda Diterima Oleh Sistem";
    $_SESSION['type'] = "success";
    $_SESSION['title'] = "Success";
}
