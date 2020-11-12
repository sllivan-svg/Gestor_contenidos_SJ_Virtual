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
<div class="container" id="graficaBarras"></div>
<!--Convertir la cadena JSON del php al JS-->
<script type="text/javascript">
    function createCadenaBrras(json){
        var parsed = JSON.parse(json);
        var arr = [];
        for(var x in parsed){
            arr.push(parsed[x]);
        }
        return arr;
    }
</script>
<Script type="text/javascript">
    datosX=createCadenaLineal('<?php echo $datosX ?>');
    datosY=createCadenaLineal('<?php echo $datosY ?>');
    var data = [
    {
        x: datosX,
        y: datosY,
        type: 'bar'
    }
    ];

Plotly.newPlot('graficaBarras', data);
</Script>