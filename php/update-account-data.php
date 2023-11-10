<?php

include("koneksi.php");


if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update-account'])) {
   
    $email = $_POST['email'];
    $password = $_POST['password'];
    $newPassword = $_POST['newPassword'];

    $email = mysqli_real_escape_string($conn, $email);
    $password = mysqli_real_escape_string($conn, $password);
    $newPassword = mysqli_real_escape_string($conn, $newPassword);

    $sql = "UPDATE members SET password='$newPassword' WHERE email='$email' AND password='$password'";

    if ($conn->query($sql) === TRUE) {
        $success_message = "Password berhasil diubah!";
            echo 
                "<script>
                    alert('$success_message');
                    window.location.href = 'login.php';
                </script>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
