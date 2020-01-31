<?php 
if(isset($_GET['anterior']) && isset($_GET['actual']) && isset($_GET['consumo']) && isset($_GET['basico']) && isset($_GET['exceso']) && isset($_GET['observacion']) && isset($_GET['idmedidor']) && isset($_GET['fecha']))
{
    require_once('../../datos/conexion.php');
    $anterior=$_GET['anterior'];
    $actual = $_GET['actual'];
    $consumo = $_GET['consumo'];
    $basico = $_GET['basico'];
    $exceso = $_GET['exceso'];
    $observacion = $_GET['observacion'];
    $idmedidor = $_GET['idmedidor'];
    $fecha = $_GET['fecha'];
    $fechai =date("Y-m-d",strtotime($fecha));
    $conn=conectarse();
    if(strlen($anterior)!=0 && strlen($actual)!=0 && strlen($consumo)!=0 && strlen($basico)!=0 && strlen($exceso)!=0 && strlen($observacion)!=0 && strlen($idmedidor)!=0)
    {
        $sentencia = $conn->prepare
        ("
        insert tablectura
        (
            tabLecturaFecha,
            tabLecturaFechaIngreso,
            tabLecturaFechaModificacion,
            tabLecturaAnterior,
            tabLecturaActual,
            tabLecturaConsumo,
            tabLecturaEstado,
            tabLecturaBasico,
            tabLecturaExceso,
            tabLecturaObservacion,
            tabMedidor_idtabMedidor
            )
            values
            (
                ?,
                now(),
                now(),
                ?,
                ?,
                ?,
                'A',
                ?,
                ?,
                ?,
                ?
                )
         "
        );
        $sentencia->bind_param("sssssssi",$fechai,$anterior,$actual,$consumo,$basico,$exceso,$observacion,$idmedidor);
    if($sentencia->execute())
    {
        $sentencia = $conn->prepare("SELECT LAST_INSERT_ID()");
        if($sentencia->execute())
        {
            $datos = array();
            if($sentencia->bind_result($id))
            {
                while($sentencia->fetch())
                {
                    array_push($datos,array(
                    'Id'=>$id,
                    'Fecha'=>$fecha,
                    'FechaIngreso'=>date('Y-m-d H:i:s'),
                    'FechaModificacion'=>date('Y-m-d H:i:s'),
                    'Anterior'=>$anterior,
                    'Actual'=>$actual,
                    'Consumo'=>$consumo,
                    'Estado'=>'A',
                    'Basico'=>$basico,
                    'Exceso'=>$exceso,
                    'Observacion'=>$observacion,
                    'IdMedidor'=>$idmedidor
                    ));
                }
            }
        $sentencia->close();
    echo utf8_encode(json_encode($datos));
    }
    else
    echo 'Error';
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