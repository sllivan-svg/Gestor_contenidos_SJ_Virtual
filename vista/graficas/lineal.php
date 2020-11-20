<?php 
require_once '../../modelo/claseConexion.php';
$conexion=conexion();
$sql = "SELECT fechaingreso FROM `estudiantes` WHERE jornada ='noche'";
$result=mysqli_query($conexion,$sql);
$valoresx=array();//Fecha
$conexion=conexion();

while($ver=mysqli_fetch_array($result)){
    $valoresx[]=$ver[0];
}
$sql2 = "SELECT fechaingreso FROM `estudiantes` WHERE jornada ='mañana'";
$result2=mysqli_query($conexion,$sql2);
$valoresx2=array();//Fecha
$conexion=conexion();

while($ver2=mysqli_fetch_array($result2)){
    $valoresx2[]=$ver2[0];
}
$datosX=json_encode($valoresx);
$datosX2=json_encode($valoresx2);
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
    datosX2=createCadenaLineal('<?php echo $datosX2 ?>');
    var trace1 = {
        x: [1,2,3,4,5,6,7,8,9,10],
        y: datosX,
        name: 'Noche',
        type: 'scatter',
        line:{
            color: 'green',
            width: 1
        }
    };

    var trace2 = {
    x: [1,2,3,4,5,6,7,8,9,10],
    y: datosX2,
    name: 'Mañana',
    type: 'scatter',
    line:{
            color: 'blue',
            width: 1
        }
    };
    /*
    var trace3 = {
    x: ['2019-06-06','2020-06-06','2020-06-06','2020-06-06'],
    y: ['2020','2019','2018','2017','2016','2015'],    
    }*/

    var data = [trace1, trace2/*, trace3*/];

    Plotly.newPlot('graficaLineal', data);
</script>