<?php 
require_once '../../modelo/claseConexion.php';
$conexion=conexion();
$sql = "SELECT id,fecha FROM `ingresos`";
$result=mysqli_query($conexion,$sql);
$valoresx=array();//Fecha
$valoresy=array();
$conexion=conexion();

while($ver=mysqli_fetch_array($result)){
    $valoresx[]=$ver[0];
    $valoresy[]=$ver[1];
}
$datosX=json_encode($valoresx);
$datosY=json_encode($valoresy);
?>
<br>
<div class="container" id="graficaLinealingresos"></div>
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
        x: datosX,
        y: datosY,
        name: 'Noche',
        type: 'scatter',
        line:{
            color: 'green',
            width: 1
        }
    };
    /*
    var trace3 = {
    x: ['2019-06-06','2020-06-06','2020-06-06','2020-06-06'],
    y: ['2020','2019','2018','2017','2016','2015'],    
    }*/

    var data = [trace1/*, trace3*/];

    Plotly.newPlot('graficaLinealingresos', data);
</script>