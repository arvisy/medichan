<?php
    error_reporting(E_ALL);
    ini_set("display_error",1);

    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "obatsalesdb";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Koneksi gagal". $conn->connect_error);
    }
?>