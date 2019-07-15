<!-- sidebar user panel -->
<div class="user-panel">
  
</div>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">

  <!-- Sidebar - Brand -->
  <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
    <div class="sidebar-brand-icon">
      <i class="fas fa-fw fa-school"></i>
    </div>
    <div class="sidebar-brand-text mx-3">Metopen</div>
  </a>

  <!-- Divider -->
  <hr class="sidebar-divider my-0">

  <!-- Nav Item - Dashboard -->
  <li class="nav-item">
    <a class="nav-link" href="<?= base_url('Login_mhs/dashboard/'.$mahasiswa->username) ?>">
      <i class="fas fa-fw fa-tachometer-alt"></i>
      <span>Dashboard</span></a>
  </li>
    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
      Users
    </div>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
      <a class="nav-link"collapsed" href="#" data-toggle="collapse" data-target="#collapsePages1" aria-expanded="true" aria-controls="collapsePages" >
        <i class="fas fa-fw fa-user"></i>
        <span>Metopen</span></a>
        <div id="collapsePages1" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
          
            <a class="collapse-item" href="<?= base_url('Login_mhs/Home/'.$mahasiswa->username) ?>">Metopen</a>
            <a class="collapse-item" href="<?= base_url('Login_mhs/Registrasi/'.$mahasiswa->username) ?>">Pendaftaran Metopen</a>

        </div>
    </li>
    <li class="nav-item">
      <a class="nav-link"collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages" >
        <i class="fas fa-fw fa-user"></i>
        <span>PPS</span></a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
          
            <a class="collapse-item" href="<?= base_url('Login_mhs/pps_seminar/'.$mahasiswa->username) ?>">PPS</a>
            <a class="collapse-item" href="<?= base_url('Login_mhs/pps/'.$mahasiswa->username) ?>">Pendaftaran PPS</a>

        </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url('Login_mhs/ptta/'.$mahasiswa->username) ?>">
        <i class="fas fa-fw fa-user"></i>
        <span>Pendaftaran PTTA</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url('Login_mhs/jadwal/'.$mahasiswa->username) ?>">
        <i class="fas fa-fw fa-user"></i>
        <span>Jadwal Seminar</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url('Login_mhs/berkas/'.$mahasiswa->username) ?>">
        <i class="fas fa-fw fa-user"></i>
        <span>Download Berkas Metopen</span></a>
    </li>
  <!-- Divider -->
  <hr class="sidebar-divider">

  <li class="nav-item">
    <a class="nav-link" href="<?= base_url('Login_mhs/logout'); ?>" data-toggle="modal" data-target="#logoutModal">
      <i class="fas fa-fw fa-sign-out-alt"></i>
      <span>Keluar</span></a>
  </li>


  <!-- Divider -->
  <hr class="sidebar-divider d-none d-md-block">

  <!-- Sidebar Toggler (Sidebar) -->
  <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div>

</ul>
<!-- End of Sidebar -->