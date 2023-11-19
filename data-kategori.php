<?php
    session_start();
    include 'db.php';
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login.php"</script>';
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TokoNusantara</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
    <!-- header -->
    <header>
            <div class="container">
            <h1><a href="dashboard.php" class="text-white" style="text-decoration: none;">Toko Nusantara</a></h1>
                <ul>
                    <li><a href="dashboard.php" class="text-white" style="text-decoration: none;">Dashboard</a></li>
                    <li><a href="profil.php" class="text-white" style="text-decoration: none;">Profil</a></li>
                    <li><a href="data-kategori.php" class="text-white" style="text-decoration: none;">Data Kategori</a></li>
                    <li><a href="data-produk.php" class="text-white" style="text-decoration: none;">Data Produk</a></li>
                    <li><a href="keluar.php" class="text-white" style="text-decoration: none;">Keluar</a></li>
                </ul>
            </div>
    </header>

    <!-- content -->
    <div class="section">
        <div class="container">
            <h3>Data Kategori</h3>
            <div class="box">
                <p><a href="tambah-kategori.php"><button type="button" class="btn btn-primary">Tambah Data</button></a></p>
              <table border="table table-striped" cellspacing="0" class="table">
                <thead>
                    <tr>
                        <th width="60px">No</th>
                        <th>Kategori</th>
                        <th width="150px">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $no = 1; 
                        $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC");
                        if(mysqli_num_rows($kategori) > 0){
                        while($row = mysqli_fetch_array($kategori)){
                    ?>
                    <tr>
                        <td><?php echo $no++ ?></td>
                        <td><?php echo $row['category_name'] ?></td>
                        <td>
                            <a href="edit-kategori.php?id=<?php echo $row['category_id'] ?>"><button type="button" class="btn btn-warning float-start">Edit</button></a>
                            <a href="proses-hapus.php?idk=<?php echo $row['category_id'] ?>" onclick="return confirm('Yakin ingin hapus ?')"><button type="button" class="btn btn-danger float-end">Hapus</button></a>
                        </td>
                    </tr>
                    <?php }}else{ ?>
                        <tr>
                            <td colspan="3">Tidak ada data</td>
                        </tr>
                    <?php } ?>
                </tbody>
              </table> 
            </div>
        </div>
    </div>

    <!-- footer -->
    <footer>
        <div class="container">
            <small>Copyright &copy; 2023 - TokoNusantara.</small>
        </div>
    </footer>
</body>
</html>