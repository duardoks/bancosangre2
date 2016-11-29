<!DOCTYPE HTML>
<html>

    <head>
        <title>BANCO DE SANGRE - HOSPITAL HIPOLITO UNANUE</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="tacna medio ambiente, sensores arduino"/>
        <meta name="keywords" content=""/>
        <link rel="stylesheet" href="../css/estilo.css"/>
        <link rel="stylesheet" type="text/css" href="estilos.css">
        
    </head>
    <body>
        <header>
            <nav>
                <ul>
                    <li><a href="index.php">Inicio</a></li>
                    <li><a href="examen.php">EXAMEN</a></li>
                    <li><a href="ingresar_postulante.php">POSTULANTES</a></li>
                    <li><a href="registrarse">MUESTRAS</a></li>
                    <li><a href="contacto">REPORTES</a></li>
                    <li><a href="contacto">DATOS</a></li>
                    <li><a href="contacto">RECEPTORES</a></li>
                    <li><a href="vista.php">VISTAS</a></li>
                </ul>
            </nav>
            <a href="#"><img id="logo" src="../images/logotipo.png" class="imagen" height="20%" width="20%" alt=""></a>
                    
                <h1 class="frase_banner">BANCO DE SANGRE HOSPITAL HIPOLITO DE UNANUE</h1>
                
                <a href="#" class="button">Ver datos</a>
        </header><!-- /header -->

        <section id="main">
            
            <div class="container">
                <div class="fila">
                    <div class="mensaje">
                        <h1>INGRESAR EXAMEN</h1>


                    </div>  
           
                    <div class="grid6">
                        <div class="fila1">
                            <form  name="formingresar" method="post" action="exameningreso.php">
    <table  align="center"  class="tablaingreso">

    
    <tr>
        <td>Numero Examen</td>
       
<td>
          <?php

        include("conexion.php");
//recuperamos el id 

$link=conectarse();
// Consultar la base de datos "<?php echo $campo["nombres"]; 
$consulta_mysql='Select id_pos,`apellidopaterno_pos`, `apellidomaterno_pos`, `primernombre_pos`, `segundonombre_pos` from postulante';
$resultado_consulta_mysql=mysqli_query($link,$consulta_mysql);
  
echo "<select id='id_pos' name='id_pos'  >";
while($fila=mysqli_fetch_array($resultado_consulta_mysql)){
if($campo["id_pos"]==$fila['id_pos'])
    {
    echo "<option selected=".$filacat['id_pos']." value='".$fila['id_pos']."'>".$fila['id_pos'].$fila['apellidopaterno_pos'].$fila['apellidomaterno_poss'].$fila['primernombre_pos']."</option>";
    }
    else 
    {
echo "<option selected=".$filacat['id_pos']." value='".$fila['id_pos']."'>".$fila['id_pos']." ".$fila['apellidopaterno_pos'].$fila['apellidomaterno_poss']." ".$fila['primernombre_pos']."</option>";
    }
  
     
}
echo "</select>"; 
?>
</td>

    </tr>
    
    <tr>
        <td>Tipo Examen</td>
        <td>
        <select name='tipo_exa'>  
        <option value='VOLUNTARIO'>VOLUNTARIO</option>
        <option value='FAMILIAR/REPOSICION'>FAMILIAR/REPOSICION</option>
        <option value='REMUNERACION'>REMUNERACION</option>
        <option value='AUTOLOGO'>AUTOLOGO</option>
        </select></td>
    </tr>
    
    <tr>
        <td>Fecha Examen</td>
         <td><input type="datetime" name="fecha_exa" maxlength="10" pattern="^\d{4}\-\d{2}\-\d{2}$" required/></td>

    
    <tr>
        <td>Empresa Examen</td>
            <td><input type="text" name="empresa_exa" maxlength="50" pattern="^[a-zA-Z\s]*$" required/></td>
    </tr>
    
    
     <tr>
        <td>Peso Examen</td>
        <td><input type="text" name="peso_exa" maxlength="10"  required/></td>
    </tr>
    
    <tr>
        <td>Talla Examen</td>
   <td><input type="text" name="talla_exa" maxlength="10" required/></td>
    </tr>
    
    <tr>
        <td>Grupo Sanguineo</td>
            <TD>    <select name='gruposanguineo_exa'   >  
      <option value='A'>A</option>
       <option value='B'>A</option>
        <option value='0'>0</option>
         <option value='AB'>AB</option>
       <option value='A1'>A1</option>
        <option value='A2'>A2</option>
         <option value='A1B'>A1B</option>
       <option value='A2B'>A2B</option>

      </select></TD> 
<tr>
        <td>Factor RH </td>
        <td>
               <select name='factorrh_exa'   >  
      <option value='POSITIVO'>RH(+)</option>
       <option value='NEGATIVO' onClick="document.formingresar.textbox.style.visibility= visible">RH(-)</option>

      </select>
          </td>
    </tr>

    <tr>
        <td>Variante DU(+/-)</td>
       <TD>
      <select name='variantedu_exa'>;  
        <option value='NA'>NA</option>   
      <option value='POSITIVO'>+</option>
       <option value='NEGATIVO'>-</option>
      </select>
</TD>
    </tr>

    
    <tr>
        <td>Presion Arterial</td>
          <td><input type="text" name="presionarterial_exa" maxlength="50" required/></td>
    </tr>
        <tr>
        <td>Acceso Venoso</td>
          <td><input type="text" name="accesovenoso_exa" maxlength="50"  required/></td>
    </tr>
       <tr>
        <td>Observacion Examen</td>
            <td><input type="textarea" name="observacion_exa" maxlength="200" /></td>
    </tr>
    <tr>
        <td>Examinador Por</td>
           <td><input type="text" name="examinador_exa" maxlength="50"   required/></td>
    </tr>
     <tr>
        <td>Calificador Por</td>
              <td><input type="text" name="calificador_exa" maxlength="50"  required/></td>
    </tr>
        <tr>
        <td>Situacion</td>
               <TD>
      <select name='situacion_exa'>;  

      <option value='APTO'>APTO</option>
       <option value='NO APTO'>NO APTO</option>
      </select>
</TD>
    </tr>

    <tr>

    
    <tr>
        <td colspan="2" align="center">
        <input type="submit" value="REGISTRAR">
      
        
            
        </td>
    </tr>
    </table>

    </form>
                        </div>

    <div class="fila2">
        <table align="right" width="655" border="1" align="" cellpadding="0" cellspacing="1">
<tr bgcolor="#DDE3EE">
    <td bgcolor="#fff" class="Estilo8">numero</td>
    
    <td bgcolor="#fff" class="Estilo8">calificador</td>
    <td bgcolor="#fff" class="Estilo8">situacion</td>
     

</tr>   
<?php

    // handle post data
                 
                 
                    
                //  if ($_REQUEST['radio1']=="titulo"){

              //  $sql="Select titulo, texto, descripcion,fecha,imagen,concat(nombre,' ',apellidos) as nombres from categoria as c 
//INNER join noticia as n ON c.idcategoria=n.idcategoria 
//INNER JOIN autor as a ON n.idautor=a.idautor  where titulo like '%$texto%' order by fecha desc ;";
                 $sql="SELECT `id_exa`, `id_pos`, `id_usu`, `numero_exa`, `tipo_exa`, `fecha_exa`, `empresa_exa`, `gruposanguineo_exa`, `factorrh_exa`, `peso_exa`, `talla_exa`, `variantedu_exa`, `presionarterial_exa`, `accesoovenoso_exa`, `observacion_exa`, `examinador_exa`, `calificador_exa`, `situacion_exa` FROM `bancosangre`.`examenclinico`";
                  //  if ($_REQUEST['radio1']=="titulo"){
                   // }
                //  elseif ($_REQUEST['radio1']=="autor") {
                //      $sql="select * from noticias where autor like '%$texto%'";
                //  }
                //  elseif ($_REQUEST['radio1']=="categoria") {
                //      $sql="select * from noticias where categoria like '%$texto%'";
                //  }
                    //or articulo like '%$texto%';
                    $resultado = mysqli_query($link,$sql) or die ("fallo consulta");;
                    $num_resultados = mysqli_num_rows($resultado);
                    //si sale eerror borro las dos primeras lineas
                    
                     



while($campo=MySQLi_fetch_array($resultado)) {

?>
<tr>    
    <td width="114" class="Estilo7"> <?php echo $campo["id_exa"]; ?></td>
    <td width="50" class="Estilo7"> <?php echo $campo["calificador_exa"]; ?></td>
    <td width="50"  class="Estilo7"> <?php echo $campo["situacion_exa"]; ?></td>
   

</tr>

<?php
}
mysqli_close($link);


?>
</table>
    </div>
                    </div>
                </div>

                
   
  
 

        </section>

        <footer>
            <div class="grid5">
                <h1><span>TO</span>RE</h1>
                <p>Hospital Hipolito unanue, Aplicacion de gestion de manejo de muestras de sangre</p>
                <a href="#" class="btnlittle">Quienes Somos</a>
                <a href="#" class="btnlittle">El Equipo</a>
            </div>
            <div class="grid4">
                <h2>Contacto</h2>
                <p>Campus Capanique,<br>
                Av. Jorge Basadre Grohmann s/n Pocollay - Tacna<br>
                Escuela de Ing. de Sistemas <br>
                +51 952929939</p>
            </div>
            <div class="grid3">
                <h2>Redes Sociales</h2>
                <a href="#" class="btnlittle">Facebook</a><br><br>
    
            </div>
            <div class="grid12">
                <p align="center">2016 - (c) Todos los derechos reservados to<strong>re</strong> - Tacna - Perú</p>
            </div>
        </footer>
        
            
    </body>
</html>

