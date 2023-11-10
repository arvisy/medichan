<?php
    include("koneksi.php");

    if (isset($_POST['register'])) {
        $nama = $_POST['nama'];
        $telepon = $_POST['telepon'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        $sql = "INSERT INTO members (nama, no_telp, email, password, join_date) VALUES ('$nama', '$telepon', '$email', '$password', NOW())";

        if ($conn->query($sql) === TRUE) {
            $success_message = "Registrasi berhasil!";
            echo 
                "<script>
                    alert('$success_message');
                    window.location.href = 'login.php';
                </script>";
        } else {
            $fail_message = "Email telah digunakan!";
            echo 
                "<script>
                    alert('$fail_message');
                    window.location.href = 'register.php';
                </script>";
        }

        $conn->close();
    }
?>
