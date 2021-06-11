<footer class="main-footer">
    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.0.3
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<?= $BASE_URL?>assets/plugins/jquery/jquery.min.js"></script>
<script src="<?= $BASE_URL ?>assets/jquery-datatable/jquery.dataTables.js"></script>
<script src="<?= $BASE_URL ?>assets/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
<script src="<?= $BASE_URL ?>assets/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
<script src="<?= $BASE_URL ?>assets/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
<script src="<?= $BASE_URL ?>assets/jquery-datatable/extensions/export/jszip.min.js"></script>
<script src="<?= $BASE_URL ?>assets/jquery-datatable/extensions/export/pdfmake.min.js"></script>
<script src="<?= $BASE_URL ?>assets/jquery-datatable/extensions/export/vfs_fonts.js"></script>
<script src="<?= $BASE_URL ?>assets/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
<script src="<?= $BASE_URL ?>assets/jquery-datatable/extensions/export/buttons.print.min.js"></script>
<script src="<?= $BASE_URL ?>assets/js/tables/jquery-datatable.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?= $BASE_URL?>assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?= $BASE_URL?>assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="<?= $BASE_URL?>assets/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<!-- <script src="<?= $BASE_URL?>assets/plugins/sparklines/sparkline.js"></script> -->
<!-- JQVMap -->
  <!-- <script src="<?= $BASE_URL?>assets/plugins/jqvmap/jquery.vmap.min.js"></script>
  <script src="<?= $BASE_URL?>assets/plugins/jqvmap/maps/jquery.vmap.usa.js"></script> -->
<!-- jQuery Knob Chart -->
<script src="<?= $BASE_URL?>assets/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="<?= $BASE_URL?>assets/plugins/moment/moment.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<?= $BASE_URL?>assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="<?= $BASE_URL?>assets/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= $BASE_URL?>assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= $BASE_URL?>assets/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?= $BASE_URL?>assets/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= $BASE_URL?>assets/dist/js/demo.js"></script>
<!-- DataTables  & Plugins -->
<script src="<?= $BASE_URL?>assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/jszip/jszip.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/pdfmake/pdfmake.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/pdfmake/vfs_fonts.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="<?= $BASE_URL?>assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<script src="<?= $BASE_URL; ?>assets/bs-custom-file-input/bs-custom-file-input.min.js"></script>


<script type="text/javascript">
  $(document).ready(function() {
    bsCustomFileInput.init();
  });
</script>

<!-- Page specific script -->
<script>
  // $(function () {
  //   $("#example1").DataTable({
  //     "responsive": true, "lengthChange": false, "autoWidth": false,
  //     "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
  //   }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
  //   $("#data2").DataTable({
  //     "responsive": true, "lengthChange": false, "autoWidth": false,
  //     "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
  //   }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
  //   $('#example2').DataTable({
  //     "paging": true,
  //     "lengthChange": false,
  //     "searching": false,
  //     "ordering": true,
  //     "info": true,
  //     "autoWidth": false,
  //     "responsive": true,
  //   });
  // });
</script>
<script src="<?= $BASE_URL?>assets/merk.js"></script>
<script src="<?= $BASE_URL?>assets/type.js"></script>
<script src="<?= $BASE_URL?>assets/product.js"></script>
<script src="<?= $BASE_URL?>assets/alert.js"></script>
<script src="<?= $BASE_URL?>assets/penyewa.js"></script>
<script src="<?= $BASE_URL?>assets/home/transaksi.js"></script>

<script>
   pesan = document.getElementById('pesan');
   if (pesan != null) {
     swal({
       title: document.getElementById('title').innerHTML,
       text: pesan.innerHTML,
       icon: document.getElementById('type').innerHTML,
     });
   }
 </script>
 <script>
  $(function() {
    $('[data-toggle="tooltip"]').tooltip()
  })
</script>
</body>
</html>
