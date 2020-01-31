<?php 
if(isset($_GET['id']))
{
    require_once('../../datos/conexion.php');
    $id=$_GET['id'];
    $conn=conectarse();
    if(strlen($id)!=0)
    {
        $sentencia = $conn->prepare("
        select 
        idtabPerfil as Id,
        tabPerfilNombre as Nombre,
        tabPerfilFechaIngreso as FechaIngreso,
        tabPerfilFechaModificacion as FechaModificacion,
        tabPerfilEstado as Estado
        from tabperfil
        where idtabPerfil=?
        ");
    $sentencia->bind_param("i", $id);
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
                'FechaIngreso'=>$fechaingreso,
                'FechaModificacion'=>$fechamodificacion,
                'Estado'=>$estado
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
echo 'Ingrese el id para buscar';
}
else 
echo 'Se espera el parametro';
 ?>