<?php
function active($currect_page)
{
  $url_array =  explode('/', $_SERVER['REQUEST_URI']);
  $url = end($url_array);
  
  if ($currect_page == $url) {
    echo 'active'; //class name in css 
  }
}

?>

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="index3.html" class="brand-link">
    <img src="<?= $BASE_URL ?>assets/logo2.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light" style="font-size:16px;">Universitas Darma Persada</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      
      <div class="image">
        <img src="<?= $BASE_URL ?>assets/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="#" class="d-block">Halo, <?= $_SESSION['users_data']['first_name'] ?></a>
      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
        <li class="nav-item has-treeview menu">
          <a href="<?= $BASE_URL ?>dashboard/index.php" class="nav-link <?php active("index.php") ?>">
            <i class="nav-icon fas fa-home"></i>
            <p>
              Home
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= $BASE_URL ?>dashboard/profile.php" class="nav-link <?php active("profile.php")?>">
            <i class="nav-icon fas fa-table"></i>
            <p>
              Data Diri
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= $BASE_URL ?>dashboard/cari-jurnal.php" class="nav-link <?php active("cari-jurnal.php") ?>">
            <i class="nav-icon fas fa-users"></i>
            <p>
              Cari Jurnal
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= $BASE_URL ?>dashboard/daftar-skripsi.php" class="nav-link <?php active("daftar-skripsi.php") ?>">
            <i class="nav-icon fas fa-file"></i>
            <p>
              Daftar Skirpsi
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= $BASE_URL ?>dashboard/data_merk" class="nav-link">
            <i class="nav-icon fas fa-table"></i>
            <p>
              Jadwal Sidang
            </p>
          </a>
        </li>
        <li class="nav-header">lain-lain</li>
        
        <li class="nav-item has-treeview menu">
          <a href="<?= $BASE_URL ?>login/logout_process" class="nav-link">
            <i class="nav-icon fas fa-sign-out-alt"></i>
            <p>
              Logout
            </p>
          </a>
        </li>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>