<?php

function addData($data, $conn, $BASE_URL)
{
    $firstName = $data['first_name'];
    $lastName = $data['last_name'];
    $fullName = $firstName . ' ' . $lastName;
    $email = $data['email'];
    $password = $data['password'];
    $confirmPassword = $data['confirm_password'];

    if ($fullName != null && $email != null && $password != null && $confirmPassword != null) {
        if ($confirmPassword == $password) {
            $cekDataEmail = getDataRow("SELECT * FROM tbl_users WHERE email = '$email'", $conn);
            // var_dump($cekDataEmail == null);die;
            if ($cekDataEmail == null) {
                $hashPassword = password_hash($password, PASSWORD_DEFAULT);
                $addData = "INSERT INTO tbl_users VALUES('','$fullName','$email','$hashPassword',0)";
                $execQuery = mysqli_query($conn, $addData);
                // var_dump($execQuery);die;
                if (mysqli_affected_rows($conn) == 1) {
                    $_SESSION['message'] = "Selamat, akun anda berhasil didaftarkan";
                    $_SESSION['type'] = "success";
                    $_SESSION['title'] = "Success";
                    header("Location: " . $BASE_URL . "register.php");
                    exit();
                } else {
                    $_SESSION['message'] = "Mohon maaf, Ada kesalahan saat proses pendaftaran !";
                    $_SESSION['type'] = "info";
                    $_SESSION['title'] = "Info";
                    header("Location: " . $BASE_URL . "register.php");
                    exit();
                }
            } else {
                $_SESSION['message'] = "Mohon maaf, Email yang Anda input sudah digunakan !";
                $_SESSION['type'] = "info";
                $_SESSION['title'] = "Info";
                header("Location: " . $BASE_URL . "register.php");
                exit();
            }
        } else {
            $_SESSION['message'] = "Mohon maaf, Password yang anda masukan tidak cocok !";
            $_SESSION['type'] = "warning";
            $_SESSION['title'] = "Warning";
            header("Location: " . $BASE_URL . "register.php");
            exit();
        }
    } else {
        $_SESSION['message'] = "Mohon maaf, Data tidak boleh kosong !";
        $_SESSION['type'] = "error";
        $_SESSION['title'] = "Warning";
        header("Location: " . $BASE_URL . "register.php");
        exit();
    }
}

function getDataRow($query, $conn)
{
    global $conn;
    $execQuery = mysqli_query($conn, $query);
    $data =  mysqli_fetch_assoc($execQuery);
    return $data;
}
