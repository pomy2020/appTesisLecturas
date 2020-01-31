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
        insert into tabperfil_has_tabpermiso
        (
            tabPerfil_idtabPerfil,
            tabPermiso_idtabPermiso
        )
        values
        (
            ?,
            ?
        )
         "
        );
        $sentencia->bind_param("si", $idperfil,$idpermiso);
    if($sentencia->execute())
    {
        echo 'ok';
    }
    else
    echo 'Error';
}
else 
echo 'No se ha ingresado el id permiso y el id perfil';
}
else
echo 'Debe ingresar el id permiso y el id perfil';
 ?>