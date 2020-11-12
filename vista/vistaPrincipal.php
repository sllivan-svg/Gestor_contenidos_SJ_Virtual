<?php 
include_once '../modelo/claseConexion.php'; 
require_once '../modelo/cn.php';
require_once '../modelo/claseConsultas.php';
$con=new claseConexion();
$estudiantes=$con->ejecutarConsulta
("SELECT `id`, `nombre`, `apellido`, `codigo`, `semestre`, `jornada`, `carrera`, `imagen`, `id_sede`, `fechaingreso`, `fechasalida` FROM `estudiantes` WHERE 1");
$con->cerrarConexion(); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tabla Estudiantes</title>

    <!-- Custom fonts for this template -->
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../librerias/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../librerias/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <!-- Custom styles for this page -->
    <link href="../librerias/bootstrap/css/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">
    <?php include'cabeza/nav.php'; ?>
    <br>
    <div class="container-fluid">
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tabla Estudiantes</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombres</th>
                                            <th>Apellidos</th>
                                            <th>Codigo</th>
                                            <th>Semestre</th>
                                            <th>Jornada</th>
                                            <th>Carrera</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($estudiantes as $f):?>
                                        <tr>
                                            <td><?=$f[0]?></td>
                                            <td><?=$f[1]?></td>
                                            <td><?=$f[2]?></td>
                                            <td><?=$f[3]?></td>
                                            <td><?=$f[4]?></td>
                                            <td><?=$f[5]?></td>
                                            <td><?=$f[6]?></td>
                                        </tr>
                                        <?php endforeach ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
                                    
            

    <!-- Bootstrap core JavaScript-->
    <script src="../librerias/jquery.min.js"></script>
    <script src="../librerias/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Core plugin JavaScript-->
    <script src="../librerias/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../librerias/bootstrap/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../librerias/bootstrap/js/jquery.dataTables.min.js"></script>
    <script src="../librerias/bootstrap/js/dataTables.bootstrap4.min.js"></script>

    <!--Page plugin plotly.js-->
    <script src="../librerias/plotly-latest.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../librerias/bootstrap/js/datatables-demo.js"></script>

</body>

</html>
                                    