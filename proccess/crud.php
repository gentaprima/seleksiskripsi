<?php 

function create($data,$conn,$table){
    $column = "";
    $values = "";
    foreach($data as $index => $value){
        $column .= $index.",";   
        $values .= "'$value'".",";   
    }
    $lengthColumn = strlen($column);
    $lengthValues = strlen($values);
    $subStringColumn = substr($column,0,$lengthColumn-1);
    $subStringValues = substr($values,0,$lengthValues-1);
    $insert = "INSERT INTO $table ($subStringColumn) VALUES ($subStringValues) ";
    $execQuery = mysqli_query($conn,$insert);
    return $execQuery;
}