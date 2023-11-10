<?php
    include("koneksi.php");

    if (isset($_POST['kirim-pesan'])) {
        $nama = $_POST['namaO'];
        $email = $_POST['emailO'];
        $pesan = $_POST['pesanO'];

        $sql = "INSERT INTO contactus (nama, email, pesan) VALUES ('$nama', '$email', '$pesan')";

        if ($conn->query($sql) === TRUE) {
            $success_message = "Berhasil!";
            echo 
                "<script>
                    alert('$success_message');
                    window.location.href = 'product.php';
                </script>";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();
    }
?>
