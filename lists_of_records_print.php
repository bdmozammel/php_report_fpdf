<?php
//include library

require('library/fpdf.php');
//LOAD THE CONFIG FILE FIRST
//include('config.php');

//make FPDF object

$pdf=new FPDF('p','mm','A4');
//$pdf->setPrintHeader(false);
//$pdf->setPrintFooter(false);
//add page
$pdf->AddPage();

	
$pdf->setFont('HELVETICA','B',14);

$pdf->Cell(190,10,"Board of Intermediate and Secondary Education,Jashore", 1,1,'C');
$pdf->setFont('HELVETICA','',12);
$pdf->Cell(190,5,"List of Students School-wise", 1,1,'C');


$pdf->Ln(2);

// load the mysql data
 $conn = new mysqli("localhost","root","","users_db");

if ($conn -> connect_errno) {
  echo "Failed to connect to MySQL: " . $conn -> connect_error;
  exit();
}

$sql = "SELECT id, name,fname,mname,class,zilla FROM students_reg_data";

$records=mysqli_query($conn,$sql);


//echo "<pre>";
//print_r($data);
//echo "</pre>";
//add head of the print out
	$pdf->setFont('HELVETICA','B',14);
	$pdf->Cell(10,5, "ID",1,0,'C');
	$pdf->Cell(45,5, "Name",1,0,'C');
	$pdf->Cell(45,5, "Fname",1,0,'C');
	$pdf->Cell(40,5, "Mname",1,0,'C');
	$pdf->Cell(20,5, "Class",1,0,'C');
	$pdf->Cell(30,5, "Zilla",1,1,'C');
	$pdf->Ln(1);
// loop the data
	$pdf->setFont('HELVETICA','',12);
while($row=mysqli_fetch_assoc($records)){
	$pdf->Cell(10,5, $row['id'],1,0,'C');
	$pdf->Cell(45,5, $row['name'],1,0,'C');
	$pdf->Cell(45,5, $row['fname'],1,0,'C');
	$pdf->Cell(40,5, $row['mname'],1,0,'C');
	$pdf->Cell(20,5, $row['class'],1,0,'C');
	$pdf->Cell(30,5, $row['zilla'],1,1,'C');
	$pdf->Ln(0);
}

$pdf->Output();

?>