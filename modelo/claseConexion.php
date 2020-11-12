<?php
    function conexion(){
        return mysqli_connect('localhost',
                                       'root',
                                       '',
                                       'sjvirtual');
    }

?>