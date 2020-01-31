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
        where idtabPersona=?
        ");
        $sentencia->bind_param("i", $id);
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