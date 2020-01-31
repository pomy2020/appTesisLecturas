<?php 
if(isset($_GET['idperfil']))
{
    require_once('../../datos/conexion.php');
    $idperfil=$_GET['idperfil'];
    $conn=conectarse();
    if(strlen($idlectura)!=0)
    {
        $sentencia = $conn->prepare("
        select
        tabPerfil_idtabPerfil as IdPerfil,
        tabPermiso_idtabPermiso as IdPermiso
        from tabperfil_has_tabpermiso
        where
        tabPerfil_idtabPerfil = ?
        ");
        $sentencia->bind_param("i", $idperfil);
    if($sentencia->execute())
    {
        $datos = array();
        if($sentencia->bind_result($idperfil,$idpermiso))
			{
				while($sentencia->fetch())
				{
                array_push($datos,array(
                'IdPerfil'=>$idperfil,
                'IdPermiso'=>$idpermiso
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
echo 'Ingrese el id de perfil para buscar';
}
else 
echo 'Se espera el id';
 ?>