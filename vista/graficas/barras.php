<?php 
require_once '../../modelo/claseConexion.php';
$conexion=conexion();
$sql = "SELECT fechaingreso From estudiantes WHERE jornada = 'noche'";
$result=mysqli_query($conexion,$sql);
$valoresx=array();//Fecha salida

while($ver=mysqli_fetch_array($result)){
    $valoresx[]=$ver[0];
}

$conexion=conexion();
$sql = "SELECT fechaingreso From estudiantes WHERE jornada = 'mañana'";
$result=mysqli_query($conexion,$sql);
$valoresx2=array();//Fecha salida

while($ver2=mysqli_fetch_array($result)){
    $valoresx2[]=$ver2[0];
}

$datosX=json_encode($valoresx);
$datosX2=json_encode($valoresx2);
?>
<br>
<div class="container" id="graficaBarras"></div>
<!--Convertir la cadena JSON del php al JS-->
<script type="text/javascript">
    function createCadenaBarras(json){
        var parsed = JSON.parse(json);
        var arr = [];
        for(var x in parsed){
            arr.push(parsed[x]);
        }
        return arr;
    }
</script>
<Script type="text/javascript">
    datosX=createCadenaBarras('<?php echo $datosX ?>');
    datosX2=createCadenaBarras('<?php echo $datosX2 ?>');
    var trace1 = {
    x: [1,2,3,4,5,6,7,8,9,10],
    y: datosX,
    name: 'Noche',
    type: 'bar',
    marker: {
    color: 'green',
    opacity: 0.7,
    }
    };

    var trace2 = {
    x: [1,2,3,4,5,6,7,8,9,10],
    y: datosX2,
    name: 'Mañana',
    type: 'bar',
    marker: {
    color: 'blue',
    opacity: 0.7,
    }
    };

    var data = [trace1, trace2];

    var layout = {barmode: 'group'};

    Plotly.newPlot('graficaBarras', data, layout);
</Script>