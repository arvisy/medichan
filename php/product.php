<?php
    include("contact-us.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../asset/css/index.css">
    <script src="../js/script.js"></script>
</head>

<body>
    <header>
        <nav>
            <h1><a href="index.php">Medichan</a></h1>
            <ul>
                <li><a href="#" onclick="scrollProduct()">Product</a></li>
                <li><a href="#" onclick="scrollPortfolio()">Portfolio</a></li>
                <li><a href="#" onclick="scrollAboutUs()">About Us</a></li>
                <li><a href="#" onclick="scrollContactUs()">Contact Us</a></li>
                <li><a href="register.php">Register</a></li>
            </ul>
        </nav>
    </header>
    <div class="sidebar">
        <form method="get">
            <p class="kategori">Kategori</p>
            <div class="dropdown">
                <img src="../asset/image/down-arrow.png" alt="">
                <div class="dropdown-content">
                    <label><input type="checkbox" value="Antibiotik" name="kategori"> Antibiotik</label><br>
                    <label><input type="checkbox" value="Analgesik" name="kategori"> Analgesik</label><br>
                    <label><input type="checkbox" value="Antipiretik" name="kategori"> Antipiretik</label><br>
                    <label><input type="checkbox" value="Antihistamin" name="kategori"> Antihistamin</label><br>
                    <label><input type="checkbox" value="Vitamin dan Suplemen" name="kategori"> Vitamin dan Suplemen</label><br>
                    <label><input type="checkbox" value="Obat Herbal" name="kategori"> Obat Herbal</label><br>
                    <label><input type="checkbox" value="Obat Kulit" name="kategori"> Obat Kulit</label><br>
                    <label><input type="checkbox" value="Obat Mata" name="kategori"> Obat Mata</label><br>
                    <label><input type="checkbox" value="Obat Gigi" name="kategori"> Obat Gigi</label><br>
                    <label><input type="checkbox" value="Obat Psikotropika" name="kategori"> Obat Psikotropika</label>
                </div>
            </div>
            <p class="harga">Harga</p>
            <input type="number" name="min" id="" placeholder="Min">
            <input type="number" name="max" id="" placeholder="Max">
            <input type="submit" name="cari" value="Cari">
        </form>
    </div>
    <div class="product-list">
        <?php include("list-obat.php"); ?>
    </div>
    <div class="portfolio" id="portfolioSection" class="section">
        <div class="section-content">
            <h2>Portfolio</h2>
            <p>Portofolio kami mencakup berbagai jenis obat dan produk kesehatan yang dapat memenuhi kebutuhan Anda.
                Berikut
                beberapa kategori produk yang kami sediakan:</p>
            <ul>
                <li>Antibiotik</li>
                <li>Analgesik</li>
                <li>Antipiretik</li>
                <li>Antihistamin</li>
                <li>Vitamin dan Suplemen</li>
                <li>Obat Herbal</li>
                <li>Obat Kulit</li>
                <li>Obat Mata</li>
                <li>Obat Gigi</li>
                <li>Obat Psikotropika</li>
            </ul>
            <p>Dengan pengalaman dan keahlian dalam menyediakan produk berkualitas, kami berkomitmen untuk menjadi mitra
                terpercaya dalam menjaga kesehatan Anda.</p>
        </div>
    </div>
    <div class="about-us" id="aboutUsSection" class="section">
        <div class="section-content">
            <h2>About Us</h2>
            <p>Kami adalah Medichan, penyedia solusi kesehatan terkemuka yang berkomitmen untuk memberikan pelayanan
                terbaik kepada pelanggan. Dengan berbagai produk berkualitas tinggi, kami hadir untuk memenuhi kebutuhan
                kesehatan Anda.</p>
            <p>Visi kami adalah menjadi mitra terpercaya dalam menjaga kesehatan dan kesejahteraan Anda. Kami selalu
                berusaha memberikan layanan yang cepat, aman, dan terjangkau untuk memastikan kepuasan pelanggan.</p>
        </div>
    </div>
    <div class="contact-us" id="contactUsSection" class="section">
        <div class="section-content">
            <h2>Contact Us</h2>
            <p>Jika Anda memiliki pertanyaan atau membutuhkan bantuan, jangan ragu untuk menghubungi kami. Tim layanan
                pelanggan kami siap membantu Anda.</p>
            <ul>
                <li>Email: info@medichan.com</li>
                <li>Telepon: (123) 456-7890</li>
                <li>Alamat: Jl. Kesehatan No. 1, Kotasana, Mediland</li>
            </ul>
            <form method="post" action="contact-us.php">
                <label for="">Nama</label><br>
                <input type="text" name="namaO"><br>
                <label for="">Email</label><br>
                <input type="text" name="emailO"><br>
                <label for="">Pesan</label><br>
                <textarea id="" cols="30" rows="5" name="pesanO"></textarea><br>
                <input type="submit" name="kirim-pesan">
            </form>
        </div>
    </div>
</body>

</html>