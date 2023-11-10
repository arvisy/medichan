<?php

include("koneksi.php");


if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete-account'])) {

    $email = $_POST['email'];
    $password = $_POST['password'];


    $email = mysqli_real_escape_string($conn, $email);
    $password = mysqli_real_escape_string($conn, $password);

    $sql = "DELETE FROM members WHERE email='$email' AND password='$password'";

    if ($conn->query($sql) === TRUE) {
        $success_message = "Akun berhasil dihapus!";
            echo 
                "<script>
                    alert('$success_message');
                    window.location.href = 'login.php';
                </script>";
    } else {
        $fail_message = "Email atau password yang anda masukkan salah!";
        echo 
            "<script>
                alert('$fail_message');
                window.location.href = 'login.php';
            </script>";
    }

    $conn->close();
}
?>