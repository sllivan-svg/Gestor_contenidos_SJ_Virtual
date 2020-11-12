<?php 
require_once '../modelo/cn.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../librerias/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <Script src="../librerias/jquery-3.5.1.min.js"></Script>
    <script src="../librerias/plotly-latest.min.js"></script>
    <title>Principal</title>
</head>
<body>
<?php include'cabeza/nav.php';?> 
    <div class="container">
        <table>
        <?php 
            $con=new claseConexion();
                                    $alumnos=$con->ejecutarConsulta
                                    ("SELECT `id`, `nombre`, `apellido`, `codigo`, `semestre`, `jornada`, `carrera`, `imagen`, `id_sede`, `fechaingreso`, `fechasalida` FROM `estudiantes` WHERE 1");
                                    $con->cerrarConexion(); 
                                    ?>
                                   
            <tbody>
                <tr>
                    <th>hola</th>
                </tr>
                <tr>
                <?php foreach ($alumnos as $f):?>              
                    <td>puta
                        <?$f[5]?></td>
                    <?php endforeach ?>
                </tr>
            </tbody>
        </table>
    <div>
    </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>