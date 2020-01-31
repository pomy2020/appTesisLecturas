<?php 
if(isset($_GET['anterior']) && isset($_GET['actual']) && isset($_GET['consumo']) && isset($_GET['basico']) && isset($_GET['exceso']) && isset($_GET['observacion']) && isset($_GET['idmedidor']) && isset($_GET['idlectura']) && isset($_GET['estado']) && isset($_GET['fecha']))
{
    require_once('../../datos/conexion.php');
    $anterior=$_GET['anterior'];
    $actual = $_GET['actual'];
    $consumo = $_GET['consumo'];
    $basico = $_GET['basico'];
    $exceso = $_GET['exceso'];
    $observacion = $_GET['observacion'];
    $idmedidor = $_GET['idmedidor'];
    $id = $_GET['idlectura'];
    $estado = $_GET['estado'];
    $fecha = $_GET['fecha'];
    $conn=conectarse();
    if(strlen($anterior)!=0 && strlen($actual)!=0 && strlen($consumo)!=0 && strlen($basico)!=0 && strlen($exceso)!=0 && strlen($observacion)!=0 && strlen($idmedidor)!=0 && strlen($idlectura)!=0 && strlen($fecha)!=0)
    {
        $sentencia = $conn->prepare
        ("
        update tablectura set
        tabLecturaFechaModificacion=now(),
        tabLecturaAnterior=?,
        tabLecturaActual=?,
        tabLecturaConsumo=?,
        tabLecturaEstado=?,
        tabLecturaBasico=?,
        tabLecturaExceso=?,
        tabLecturaObservacion=?,
        tabMedidor_idtabMedidor=?,
        tabLecturaFecha = ?
        where
        idtabLectura = ?
        ");
        $sentencia->bind_param("sssssssii", $anterior,$actual,$consumo,$estado,$basico,$exceso,$observacion,$idmedidor,$fecha,$id);
    if($sentencia->execute())
    {
        echo 'ok';
    }
    else
    echo 'Error';
}
else 
echo 'No se ha ingresado los datos';
}
else
echo 'Debe ingresar los datos de la lectura';
 ?>