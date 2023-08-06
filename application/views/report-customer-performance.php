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
                                                <th style="">Jumlah Spending</th>
                                                <th style="">Jumlah Datang</th>
                                                <th style="">Rata-Rata per Datang</th>
                                                <th style="">Rata-Rata Qty</th>
                                                <th style="">Per 3 Bulan</th>
                                                <th style="">Per 6 Bulan</th>
                                                <th style="">Per 12 Bulan</th>

                                             </tr>
                                          </thead>
                                          <tbody >

<?php
$query= $this->db->query("SELECT
  db_customers.id,
  db_customers.customer_name,
  SUM( db_salesitems.total_cost ) AS jumlah_spending,
  COUNT( db_salesitems.id ) AS jumlah_datang,
  (
  SUM( db_salesitems.total_cost ) / COUNT( db_salesitems.id )) AS rata_per_datang,
  (
  SELECT
  COUNT( db_salesitems.id ) / SUM( db_salesitems.sales_qty )) AS rata_qty 
FROM
  db_customers
  JOIN db_sales ON db_customers.id = db_sales.customer_id
  JOIN db_salesitems ON db_sales.id = db_salesitems.sales_id 
GROUP BY
  id ")->result();

foreach ($query as $key => $value) {
  ?>



                                            <tr>
                                              <td></td>
                                              <td><?=$value->customer_name?></td>
                                              <td><?=$value->jumlah_spending?></td>
                                              <td><?=$value->jumlah_datang?></td>
                                              <td><?=$value->rata_per_datang?></td>
                                              <td><?=$value->rata_qty / 3?></td>
                                              <td><?=$value->rata_qty / 6?></td>
                                              <td><?=$value->rata_qty / 12?></td>
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
