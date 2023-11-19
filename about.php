<?php
error_reporting(0);
include 'db.php';
$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id =1");
$a = mysqli_fetch_object($kontak);

$produk = mysqli_query($conn, "SELECT * FROM tb_product WHERE product_id = '".$_GET['id']."' ");
$p = mysqli_fetch_object($produk);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TokoNusantara</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
    <!-- header -->
    <header>
            <div class="container">
                <h1><a href="index.php">Toko Nusantara</a></h1>
                <ul>
                    <li><a href="produk.php">Produk</a></li>
                    <li><a href="about.php">About</a></li> 
                </ul>
            </div>
    </header>

    <!-- content -->
    <div class="section">
        <div class="container">
            <h2>Tentang Kami</h2>
            <p>Selamat datang di TokoNusantara, toko online lengkap untuk segala kebutuhan Anda. Kami berkomitmen untuk menyediakan produk terbaik, dengan fokus pada kehandalan, layanan pelanggan, dan keunikan.</p><br>

            <h3>Misi Kami</h3>
            <p>Di TokoNusantara, misi kami adalah menawarkan produk berkualitas yang meningkatkan gaya hidup Anda. Kami bertujuan untuk menciptakan pengalaman belanja online yang mulus dan membangun hubungan jangka panjang dengan pelanggan kami.</p><br>

            <h3>Tim Kami</h3>
            <p>Kami memiliki tim individu yang bersemangat untuk menyusun beragam produk. Tim kami bekerja tanpa lelah untuk memastikan Anda memiliki akses ke tren terbaru dan barang berkualitas tinggi.</p><br>

            <h3>Hubungi Kami</h3>
            <p>Punya pertanyaan atau kekhawatiran? Jangan ragu untuk menghubungi kami:</p><br>
            <h4>Alamat</h4>
            <p><?php echo $a->admin_address ?></p>

            <h4>Email</h4>
            <p><?php echo $a->admin_email ?></p>

            <h4>No HP</h4>
            <p><?php echo $a->admin_telp ?></p>
        </div>
    </div>

    
    <!-- footer -->
    <div class="footer">
        <div class="container">

            <small>Copyright &copy; 2023 - TokoNusantara.</small>
        </div>
    </div>
</body>
</html>