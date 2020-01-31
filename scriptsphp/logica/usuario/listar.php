<?php 
if(isset($_GET['idperfil']))
{
    require_once('../../datos/conexion.php');
    $idperfil=$_GET['idperfil'];
    $conn=conectarse();
    if(strlen($idperfil)!=0)
    {
        $sentencia = $conn->prepare
        ("
        select
        idtabusuario as Id,
        tabusuarioPassword as Password, 
        tabusuarioFechaIngreso as FechaIngreso,
        tabusuarioFechaModificacion as FechaModificacion,
        tabusuarioEstado as Estado,
        tabpersona_idtabPersona as IdPersona,
        tabPerfil_idtabPerfil as IdPerfil
        from tabUsuario
        where 
        tabPerfil_idtabPerfil = ?
        ");
        $sentencia->bind_param("i", $idperfil);
    if($sentencia->execute())
    {
        $datos = array();
        if($sentencia->bind_result($id,$password,$fechaingreso,$fechamodificacion,$estado,$idpersona,$idperfil))
			{
				while($sentencia->fetch())
				{
                array_push($datos,array(
                'Id'=>$id,
                'Password'=>$password,
                'FechaIngreso'=>$fechaingreso,
                'FechaModificacion'=>$fechamodificacion,
                'Estado'=>$estado,
                'IdPersona'=>$idpersona,
                'IdPerfil'=>$idperfil,
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
echo 'No se ha ingresado los datos';
}
else
echo 'Debe ingresar el perfil';
 ?>