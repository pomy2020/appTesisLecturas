<?php 
if(isset($_GET['id']))
{
    require_once('../../datos/conexion.php');
    $id = $_GET['id'];
    $conn=conectarse();
    if(strlen($id)!=0)
    {
        $sentencia = $conn->prepare
        ("
        delete from tabdetallelectura
        where idtabDetalleLectura=?
        "
        );
        $sentencia->bind_param("i",$id);
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
echo 'Debe ingresar el id';
 ?>