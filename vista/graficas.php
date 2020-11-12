<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Graficos</title>
    <link rel="stylesheet" href="../librerias/boostrap/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <Script src="../librerias/jquery-3.5.1.min.js"></Script>
    <script src="../librerias/plotly-latest.min.js"></script>
</head>
<body>
    <?php include'cabeza/nav.php'; ?>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="card card">
                    <div class="card card-header bg-primary text-center">
                        <h2 class="h2 font-italic">Graficas con ploply.js</h2>
                    </div>
                    <div class="card card-body">
                        <div class="row">
                            <div class="col-sm-6 card-header">
                                <div id="cargaLineal"></div>
                            </div>
                            <div class="col-sm-6 card-header">
                                <div id="cargaBarras"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function(){
        $('#cargaLineal').load('graficas/lineal.php');
        $('#cargaBarras').load('graficas/barras.php');
    });
</script>