<?php
    require_once 'cn.php';
    
    class daoclaseConsulta {
        public static function listarDatos(){
            $con=new claseConexion();
            $cont=$con->ejecutarConsulta(
                    "SELECT `id`, `nombre`, `apellido`, `codigo`, `semestre`, `jornada`, `carrera`, `imagen`, `id_sede`, `fechaingreso`, `fechasalida` FROM `estudiantes` WHERE 1");
            $con->cerrarConexion();
            return $cont;
        }
}