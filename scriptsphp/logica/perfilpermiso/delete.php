<?php 
if(isset($_GET['idperfil']) && isset($_GET['idpermiso']))
{
    require_once('../../datos/conexion.php');
    $idperfil = $_GET['idperfil'];
    $idpermiso = $_GET['idpermiso'];
    $conn=conectarse();
    if(strlen($idperfil)!=0 && strlen($idpermiso)!=0)
    {
        $sentencia = $conn->prepare
        ("
        delete from tabperfil_has_tabpermiso
        where
            tabPerfil_idtabPerfil=?
            And
            tabPermiso_idtabPermiso=?
        "
        );
        $sentencia->bind_param("ii",$idperfil,$idpermiso);
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
echo 'Debe ingresar el id permiso e id perfil';
 ?>