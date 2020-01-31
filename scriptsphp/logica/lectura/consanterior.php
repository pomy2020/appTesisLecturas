<?php 
if(isset($_GET['idmedidor']))
{
    require_once('../../datos/conexion.php');
    $idmedidor=$_GET['idmedidor'];
    $conn=conectarse();
    if(strlen($idmedidor))
    {
        $sentencia = $conn->prepare("
        select
        idtabLectura as Id,
        tabLecturaFecha as Fecha,
        tabLecturaFechaIngreso as FechaIngreso,
        tabLecturaFechaModificacion as FechaModificacion,
        tabLecturaAnterior as Anterior,
        max(tabLecturaActual) as Actual,
        tabLecturaConsumo as Consumo,
        tabLecturaEstado as Estado,
        tabLecturaBasico as Basico,
        tabLecturaExceso as Exceso,
        tabLecturaObservacion as Observacion,
        tabMedidor_idtabMedidor as idtabMedidor
        from tablectura
        where 
        tabMedidor_idtabMedidor = ?
        group by
        idtabLectura,
        tabLecturaFecha,
        tabLecturaFechaIngreso,
        tabLecturaFechaModificacion,
        tabLecturaAnterior,
        tabLecturaConsumo,
        tabLecturaEstado,
        tabLecturaBasico,
        tabLecturaExceso,
        tabLecturaObservacion,
        tabMedidor_idtabMedidor
        ");
        $sentencia->bind_param("i", $idmedidor);
    if($sentencia->execute())
    {
        $datos = array();
        if($sentencia->bind_result($id,$fecha,$fechaingreso,$fechamodificacion,$anterior,$actual,$consumo,$estado,$basico,$exceso,$observacion,$idmedidor))
            {
                while($sentencia->fetch())
                {
                array_push($datos,array(
                'Id'=>$id,
                'Fecha'=>$fecha,
                'FechaIngreso'=>$fechaingreso,
                'FechaModificacion'=>$fechamodificacion,
                'Anterior'=>$anterior,
                'Actual'=>$actual,
                'Consumo'=>$consumo,
                'Estado'=>$estado,
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
echo 'Ingrese las fechas para buscar';
}
else 
echo 'Se espera el parametro fecha 1 y fecha 2';
 ?>