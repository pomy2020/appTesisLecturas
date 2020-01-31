<?php 
if(isset($_GET['fecha1']) && isset($_GET['fecha2']))
{
    require_once('../../datos/conexion.php');
    $fecha1=$_GET['fecha1'];
    $fecha2=$_GET['fecha2'];
    $conn=conectarse();
    if(strlen($fecha1)!=0 && strlen($fecha2)!=0)
    {
        $sentencia = $conn->prepare("
        select
        idtabLectura as Id,
        tabLecturaFecha as Fecha,
        tabLecturaFechaIngreso as FechaIngreso,
        tabLecturaFechaModificacion as FechaModificacion,
        tabLecturaAnterior as Anterior,
        tabLecturaActual as Actual,
        tabLecturaConsumo as Consumo,
        tabLecturaEstado as Estado,
        tabLecturaBasico as Basico,
        tabLecturaExceso as Exceso,
        tabLecturaObservacion as Observacion,
        tabMedidor_idtabMedidor as idtabMedidor
        from tablectura
        where 
        tabLecturaFechaIngreso between ? and ?
        ");
        $sentencia->bind_param("ss", $fecha1, $fecha2);
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