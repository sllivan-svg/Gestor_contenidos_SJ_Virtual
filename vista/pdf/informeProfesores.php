<?php
include_once '../../modelo/claseConexion.php'; 
require_once '../../modelo/cn.php';
require_once '../../modelo/claseConsultas.php';
$con=new claseConexion();
$estudiantes=$con->ejecutarConsulta
("SELECT `id`, `nombre`, `apellido`, `codigo`, `asignatura`, `jornada`, `imagen`, `id_sede`, `fechaingreso` FROM `profesor`");
$con->cerrarConexion();
include '../../librerias/plugins/FPDF/fpdf.php';
 class PDF extends FPDF {
     function Header()
     {
         $this->Image('../img/icon.png');
         $this->SetFont('Arial','B',15);
         $this->Cell(80);
         $this->Cell(30,10,"Reporte Profesores",0,0,'C');
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
    $pdf->Cell(17);
    $pdf->Cell(10,5,"ID",1,0,'C',1);
    $pdf->Cell(35,5,"Apellidos",1,0,'C',1);
    $pdf->Cell(35,5,"Codigo",1,0,'C',1);
    $pdf->Cell(45,5,"Asignatura",1,0,'C',1);
    $pdf->Cell(35,5,"Jornada",1,0,'C',1);
    $pdf->Ln();
    
    $pdf->SetFont('Arial','',12);
    
    foreach ($estudiantes as $f):
    $pdf->Cell(17);
    $pdf->Cell(10,5,$f[0],1,0,'L');
    $pdf->Cell(35,5,$f[2],1,0,'L');
    $pdf->Cell(35,5,$f[3],1,0,'L');
    $pdf->Cell(45,5,$f[4],1,0,'L');
    $pdf->Cell(35,5,$f[5],1,0,'L');
    $pdf->Ln();
    endforeach;
    
    $pdf->Output();
?>