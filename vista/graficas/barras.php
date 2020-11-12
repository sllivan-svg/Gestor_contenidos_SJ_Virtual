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
    datosY=createCadenaBarras('<?php echo $datosY ?>');
    var data = [
    {
        x: datosX,
        y: datosY,
        type: 'bar'
    }
    ];
    /*['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre']*/
    /*['01/01/2020','01/02/2020','01/03/2020','01/04/2020','01/05/2020','01/06/2020','01/07/2020','01/08/2020','01/09/2020','01/10/2020','01/11/2020','01/12/2020']*/

Plotly.newPlot('graficaBarras', data);
</Script>