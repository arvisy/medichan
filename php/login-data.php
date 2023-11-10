<?php
include("koneksi.php");

if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM members WHERE email='$email' AND password='$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        session_start();
        $_SESSION['email'] = $email;
        header("Location: index.php");
    } else {
        $fail_message = "Email atau password yang anda masukkan salah!";
        echo 
            "<script>
                alert('$fail_message');
                window.location.href = 'login.php';
            </script>";
    }
}

$conn->close();
?>
