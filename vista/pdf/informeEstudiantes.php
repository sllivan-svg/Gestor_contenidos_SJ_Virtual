<?php
include_once '../../modelo/claseConexion.php'; 
require_once '../../modelo/cn.php';
require_once '../../modelo/claseConsultas.php';
$con=new claseConexion();
$estudiantes=$con->ejecutarConsulta
("SELECT `id`, `nombre`, `apellido`, `codigo`, `semestre`, `jornada`, `carrera`, `id_sede`, `fechaingreso` FROM `estudiantes`");
$con->cerrarConexion();
include '../../librerias/plugins/FPDF/fpdf.php';
 class PDF extends FPDF {
     function Header()
     {
         $this->Image('../img/icon.png');
         $this->SetFont('Arial','B',15);
         $this->Cell(80);
         $this->Cell(30,10,"Reporte Estudiantes",0,0,'C');
         $this->Ln(7);
         $this->Cell(80);
         $this->Cell(30,10,"SJVirtual",0,0,'C');
         $this->Ln(7);
         $this->SetFont('Arial','I',10);
         $this->Cell(80);
         $this->Cell(30,10,date('d/M/Y'),0,1,'C');
         $this->Ln(15);
     }

     function Footer()
     {
         $this->SetY(-20);
         $this->SetFont('Arial','B',8);
         $this->Cell(0,10,"Pagina ".$this->PageNo());
     }
 }
 
    $pdf = new PDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial','B',12);
    $pdf->SetFillColor(400,232,232);
    $pdf->Cell(16);
    $pdf->Cell(10,5,"ID",1,0,'C',1);
    $pdf->Cell(25,5,"Apellidos",1,0,'C',1);
    $pdf->Cell(20,5,"Codigo",1,0,'C',1);
    $pdf->Cell(25,5,"Semestre",1,0,'C',1);
    $pdf->Cell(25,5,"Jornada",1,0,'C',1);
    $pdf->Cell(55,5,"Carrera",1,0,'C',1);
    $pdf->Ln();
    
    $pdf->SetFont('Arial','',12);
    
    foreach ($estudiantes as $f):
    $pdf->Cell(16);
    $pdf->Cell(10,5,$f[0],1,0,'L');
    $pdf->Cell(25,5,$f[2],1,0,'L');
    $pdf->Cell(20,5,$f[3],1,0,'L');
    $pdf->Cell(25,5,$f[4],1,0,'L');
    $pdf->Cell(25,5,$f[5],1,0,'L');
    $pdf->Cell(55,5,$f[6],1,0,'L'); 
    $pdf->Ln();
    endforeach;
    
    $pdf->Output();
?>