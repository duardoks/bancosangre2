
<?php 
include ("conexion.php");
//recibimos las variables enviadas por el formulario 

//

   
    $idpos=$_POST['id_pos'];
   
    $ti=$_POST['tipo_exa'];
    $fe=$_POST['fecha_exa'];
    $em=$_POST['empresa_exa'];
    $gr=$_POST['gruposanguineo_exa'];
    $fa=$_POST['factorrh_exa'];
    $pe=$_POST['peso_exa'];
    $ta=$_POST['talla_exa'];
    $va=$_POST['variantedu_exa'];
    $pr=$_POST['presionarterial_exa'];
    $ac=$_POST['accesovenoso_exa'];
    $ob=$_POST['observacion_exa'];
    $ex=$_POST['examinador_exa'];
    $ca=$_POST['calificador_exa'];
    $si=$_POST['situacion_exa'];
    echo $idpos."<br>";;
   echo $ti."<br>";
   echo $fe."<br>";
   echo $em."<br>";
   echo $gr."<br>";
   echo $fa."<br>";
   echo $pe."<br>";
   echo $ta."<br>";
   echo $va."<br>";
   echo $pr."<br>";
   echo $ac."<br>";
   echo $ob."<br>";
   echo $ex."<br>";
   echo $ca."<br>";
   echo $si."<br>";



$link=conectarse();
//insertar registros 
//$instruccion="INSERT INTO `bancosangre`.`postulante` (`id_usu`, `apellidopaterno_pos`, `apellidomaterno_pos`, `primernombre_pos`, `segundonombre_pos`, `sexo_pos`, `estadocivil_pos`, `dni_pos`, `fechanacimiento_pos`, `lugarnacimiento_pos`, `direccion_pos`, `distrito_pos`, `telefonofijo_pos`, `telefonomovil_pos`, `lugarprocedencia_pos`, `ocupacion_pos`, `centrolaboral_pos`) VALUES (1, 'Rodrigo', 'Mapam', 'Augusto', 'Fernandez', 'm', 'soltero', '22844112', '1985-11-07', 'tacna', 'tacna', 'tacna', '32441', '955113452', 'tacna', 'conductor', 'Central de transporte 114')";
//conectamos a la base 
$instruccion="INSERT INTO `bancosangre`.`examenclinico` (`id_pos`, `id_usu`, `numero_exa`, `tipo_exa`, `fecha_exa`, `empresa_exa`, `gruposanguineo_exa`, `factorrh_exa`, `peso_exa`, `talla_exa`, `variantedu_exa`,`presionarterial_exa`, `accesoovenoso_exa`, `examinador_exa`, `calificador_exa`, `situacion_exa`) VALUES ( '$idpos', 1, '$idpos', '$ti', '$fe', '$em', '$gr', '$fa', '$pe', '$ta','$va',  '$pr', '$ac', '$ex', '$ca', '$si')";



//insertamos los registros almacenados en las variables 
mysqli_query($link, $instruccion);
mysqli_close($link);
echo "<center><a href=\"index.php\">Retomar</a></center>";

?> 

