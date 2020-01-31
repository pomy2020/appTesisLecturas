<?php 
if(isset($_GET['id']) && isset($_GET['nombre']) && isset($_GET['estado']))
{
    require_once('../../datos/conexion.php');
    $nombre = $_GET['nombre'];
    $estado = $_GET['estado'];
    $id = $_GET['id'];
    $conn=conectarse();
    if(strlen($id)!=0 && strlen($nombre)!=0 && strlen($estado)!=0)
    {
        $sentencia = $conn->prepare
        ("
        update tabpermiso
        set 
        tabPermisoNombre = ?,
        tabPermisoFechaModificacion = NOW(),
        tabPermisoEstado = ?
        where
        idtabPermiso = ?
        "
        );
        $sentencia->bind_param("ssi",$nombre,$estado,$id);
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
echo 'Debe ingresar el id, nombre y estado';
 ?>