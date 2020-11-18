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
$datosX=json_encode($valoresx);
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

    var trace1 = {
        x: datosX,
        y: ['2020','2019','2018','2017','2016','2015'],
        name: 'Estudiantes Nuevos',
        type: 'scatter',
        line:{
            color: 'red',
            width: 1
        }
    };

    /*var trace2 = {
    x: ['2016-06-06','2017-06-06','2018-06-06','2019-06-06'],
    y: ['2020','2019','2018','2017','2016','2015'],
    type: 'scatter'
    };*/
    /*
    var trace3 = {
    x: ['2019-06-06','2020-06-06','2020-06-06','2020-06-06'],
    y: ['2020','2019','2018','2017','2016','2015'],    
    }*/

    var data = [trace1/*, trace2/*, trace3*/];

    Plotly.newPlot('graficaLineal', data);
</script>