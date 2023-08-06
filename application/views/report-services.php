<!DOCTYPE html>
<html>
   <head>
      <!-- TABLES CSS CODE -->
      <?php include"comman/code_css_form.php"; ?>
      <!-- </copy> -->  
   </head>
   <body class="hold-transition skin-blue sidebar-mini">
      <div class="wrapper">
         <?php include"sidebar.php"; ?>
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
               <h1>
                  <?=$page_title;?>
                  <small></small>
               </h1>
               <ol class="breadcrumb">
                  <li><a href="<?php echo $base_url; ?>dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
                  <li class="active"><?=$page_title;?></li>
               </ol>
            </section>
            <!-- Main content -->

            <!-- /.content -->
            <section class="content">
               <div class="row">
                  <!-- right column -->
                  <div class="col-md-12">
                     <!-- Custom Tabs -->

                              <div class="row">
                                 <!-- right column -->
                                 <div class="col-md-12">

                                    <div class="table-responsive">
                                       <table class="table table-bordered table-hover sales_payments" id="report-data-1" >
                                          <thead>
                                             <tr class="bg-blue">
                                                <th style="">#</th>
                                                <th style="">Nama Customer</th>
                                                <th style="">Qty Order</th>
                                                <th style="">Tanggal Terakhir</th>
                                                <th style="">Jumlah</th>
                                             </tr>
                                          </thead>
                                          <tbody >

<?php
$query= $this->db->query("SELECT
  id,
  customer_name,
  phone,
  ( SELECT count(*) FROM db_sales WHERE customer_id = db_customers.id ) AS qty_order,
  ( SELECT sales_date FROM db_sales WHERE customer_id = db_customers.id ORDER BY sales_date DESC LIMIT 1 ) AS tanggal_terakhir,
  ( SELECT SUM( paid_amount ) FROM db_sales WHERE customer_id = db_customers.id ) AS jumlah_uang 
  FROM
  db_customers 
  ORDER BY tanggal_terakhir DESC ")->result();

foreach ($query as $key => $value) {
  ?>



                                            <tr>
                                              <td></td>
                                              <td><?=$value->customer_name?></td>
                                              <td><?=$value->qty_order?></td>
                                              <td><?=$value->tanggal_terakhir?></td>
                                              <td><?=$value->jumlah_uang?></td>
                                            </tr>
                                          <?php } ?>
                                          </tbody>

                                       </table>
                                    </div>
                                    <!-- /.box-body -->
                                 </div>
                                 <!--/.col (right) -->
                              </div>
                              <!-- /.row -->
                           </div>
                           <!-- /.tab-pane -->
                           
                        </div>
                        <!-- /.tab-content -->
               </div>
            </section>
         </div>
         <!-- /.content-wrapper -->
         <?php include"footer.php"; ?>
         <!-- Add the sidebar's background. This div must be placed
            immediately after the control sidebar -->
         <div class="control-sidebar-bg"></div>
      </div>
      <!-- ./wrapper -->
      <!-- SOUND CODE -->
      <?php include"comman/code_js_sound.php"; ?>
      <!-- TABLES CODE -->
      <?php include"comman/code_js_form.php"; ?>
      <!-- TABLE EXPORT CODE -->
      <?php include"comman/code_js_export.php"; ?>
      
      
      <!-- Make sidebar menu hughlighter/selector -->
      <script>$(".<?php echo basename(__FILE__,'.php');?>-active-li").addClass("active");</script>
   </body>
</html>
