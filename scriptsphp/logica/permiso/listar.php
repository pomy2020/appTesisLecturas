<?php 
    require_once('../../datos/conexion.php');
    $conn=conectarse();
        $sentencia = $conn->prepare("
        select
        idtabPermiso as Id,
        tabPermisoNombre as Nombre,
        tabPermisoFechaIngreso as FechaIngreso,
        tabPermisoFechaModificacion as FechaModificacion,
        tabPermisoEstado as Estado
        from
        tabpermiso
        ");
    if($sentencia->execute())
    {
        $datos = array();
        if($sentencia->bind_result($id,$nombre,$fechaingreso,$fechamodificacion,$estado))
			{
				while($sentencia->fetch())
				{
                array_push($datos,array(
                'Id'=>$id,
                'Nombre'=>$nombre,
                'Estado'=>'A',
                'FechaIngreso'=>date('Y-m-d H:i:s'),
                'FechaModificacion'=>date('Y-m-d H:i:s')
                ));
                }
            }
        $sentencia->close();
    echo utf8_encode(json_encode($datos));
    }
    else
    echo 'Error';
 ?>