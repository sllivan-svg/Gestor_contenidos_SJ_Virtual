<?php 
require_once '../../modelo/claseConexion.php';
$conexion=conexion();
$sql = "SELECT fechaingreso,fechasalida From estudiantes";
$result=mysqli_query($conexion,$sql);
$valoresy=array();//Fecha ingreso
$valoresx=array();//Fecha salida

while($ver=mysqli_fetch_array($result)){
    $valoresy[]=$ver[1];
    $valoresx[]=$ver[0];
}

$datosX=json_encode($valoresx);
$datosY=json_encode($valoresy);
?>
<br>
<div class="container" id="graficaLineal"></div>
<!--Convertir la cadena JSON del php al JS-->
<script type="text/javascript">
    function createCadenaLineal(json){
        var parsed = JSON.parse(json);
        var arr = [];
        for(var x in parsed){
            arr.push(parsed[x]);
        }
        return arr;
    }
</script>
<script type="text/javascript">
    datosX=createCadenaLineal('<?php echo $datosX ?>');
    datosY=createCadenaLineal('<?php echo $datosY ?>');

    var trace1 = {
        x: datosY,
        y: datosX,
        type: 'scatter',
        line:{
            color: 'red',
            width: 1
        }
    };

    /*var trace2 = {
    x: [1, 2, 3, 4],
    y: [16, 5, 11, 9],
    type: 'scatter'
    };*/

    var data = [trace1/*, trace2*/];

    Plotly.newPlot('graficaLineal', data);
</script>