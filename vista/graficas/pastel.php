<?php 
require_once '../../modelo/claseConexion.php';
$conexion=conexion();
$sql = "SELECT SUM(semestre) From estudiantes WHERE jornada = 'noche'";
$result=mysqli_query($conexion,$sql);
$fechaN=array();//Fecha Noche

while($ver=mysqli_fetch_array($result)){
    $fechaN[] = $ver[0];
}
$datosFechaNoche=json_encode($fechaN);
?>
<br>
<div class="container" id="graficaPastel"></div>
<!--Convertir la cadena JSON del php al JS-->
<script type="text/javascript">
    function createCadenaPastel(json){
        var parsed = JSON.parse(json);
        var arr = [];
        for(var x in parsed){
            arr.push(parsed[x]);
        }
        return arr;
    }
</script>
<Script>
    datos1=createCadenaPastel('<?php echo $datosFechaNoche ?>');
    var data = [{
    values: [18,38],
    labels: ['Mañana','Noche'],
    type: 'pie',
    
}];

var layout = {
  height: 400,
  width: 500
};

Plotly.newPlot('graficaPastel', data, layout);
</Script>