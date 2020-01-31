<?php 
if(isset($_GET['nombres']))
{
    require_once('../../datos/conexion.php');
    $nombres=$_GET['nombres'];
    $conn=conectarse();
    if(strlen($nombres)!=0)
    {
        $sentencia = $conn->prepare("
        select
        idtabPersona as Id,
        tabPersonaCedula as Cedula,
        tabPersonaNombres as Nombres,
        tabPersonaApellidos as Apellidos,
        tabPersonaTelefono as Telefono,
        tabPersonaEmail as Email,
        tabPersonaEstado as Estado,
        tabPersonaFechaIngreso as FechaIngreso,
        tabPersonaFechaModificacion as FechaModificacion
        from tabpersona
        where tabPersonaNombres like ?
        or tabPersonaApellidos like ?
        ");
        $nombres = $nombres.'%';
        $sentencia->bind_param("ss", $nombres,$nombres);
    if($sentencia->execute())
    {
        $datos = array();
        if($sentencia->bind_result($id,$cedula,$nombres,$apellidos,$telefono,$email,$estado,$fechaingreso,$fechamodificacion))
			{
				while($sentencia->fetch())
				{
                array_push($datos,array(
                'Id'=>$id,
                'Cedula'=>$cedula,
                'Nombres'=>$nombres,
                'Apellidos'=>$apellidos,
                'Telefono'=>$telefono,
                'Email'=>$email,
                'Estado'=>$estado,
                'FechaIngreso'=>$fechaingreso,
                'FechaModificacion'=>$fechamodificacion
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
echo 'Ingrese el nombre para buscar';
}
else 
echo 'Se espera el parametro';
 ?>