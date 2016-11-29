
<?php 
include ("conexion.php");
//recibimos las variables enviadas por el formulario 

//


$ap=$_POST['apellidopaterno_pos']; 
$am=$_POST['apellidomaterno_pos']; 
$pn=$_POST['primernombre_pos']; 
$sn=$_POST['segundonombre_pos']; 
$se=$_POST['sexo_pos']; 
$ec=$_POST['estadocivil_pos']; 
$dn=$_POST['dni_pos_pos']; 
$fen=$_POST['fechanacimiento_pos']; 
$lg=$_POST['lugarnacimiento_pos']; 
$dr=$_POST['direccion_pos']; 
$ds=$_POST['distito_pos']; 
$tf=$_POST['telefonofijo_pos'];
$tm=$_POST['telefonomovil_pos'];
$lp=$_POST['lugarprocedencia_pos'];
$oc=$_POST['ocupacion_pos'];
$el=$_POST['centrolaboral_pos']; 
  	echo $ap."<br>";
    echo $am."<br>";
    echo $pn."<br>";
    echo $sn."<br>";
    echo $se."<br>";
    echo $ec."<br>";
    echo $dn."<br>";
    echo $fen."<br>";
    echo $lg."<br>";
    echo $dr."<br>";
    echo $ds."<br>";
    echo $tf."<br>";
    echo $tm."<br>";

    echo $lp."<br>";
    echo $oc."<br>";
    echo $el."<br>";

$link=conectarse();
//insertar registros 
//$instruccion="INSERT INTO `bancosangre`.`postulante` (`id_usu`, `apellidopaterno_pos`, `apellidomaterno_pos`, `primernombre_pos`, `segundonombre_pos`, `sexo_pos`, `estadocivil_pos`, `dni_pos`, `fechanacimiento_pos`, `lugarnacimiento_pos`, `direccion_pos`, `distrito_pos`, `telefonofijo_pos`, `telefonomovil_pos`, `lugarprocedencia_pos`, `ocupacion_pos`, `centrolaboral_pos`) VALUES (1, 'Rodrigo', 'Mapam', 'Augusto', 'Fernandez', 'm', 'soltero', '22844112', '1985-11-07', 'tacna', 'tacna', 'tacna', '32441', '955113452', 'tacna', 'conductor', 'Central de transporte 114')";
//conectamos a la base 
$instruccion="INSERT INTO `bancosangre`.`postulante` (`id_usu`, `apellidopaterno_pos`, `apellidomaterno_pos`, `primernombre_pos`, `segundonombre_pos`, `sexo_pos`, `estadocivil_pos`, `dni_pos`, `fechanacimiento_pos`, `lugarnacimiento_pos`, `direccion_pos`, `distrito_pos`, `telefonofijo_pos`, `telefonomovil_pos`, `lugarprocedencia_pos`, `ocupacion_pos`, `centrolaboral_pos`) VALUES (1, '$ap', '$am', '$pn', '$sn', '$se', '$ec', '$dn', '$fen', '$lg', '$dr', '$ds', '$tf', '$tm', '$lp', '$oc', '$el')";


//insertamos los registros almacenados en las variables 
mysqli_query($link, $instruccion) or die ("fallo consulta");;
mysqli_close($link);
echo "<center><a href=\"index.php\">Retomar</a></center>";

?> 

