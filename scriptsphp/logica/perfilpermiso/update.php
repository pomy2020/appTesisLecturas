<?php 
if(isset($_GET['foto']) && isset($_GET['idlectura']) && isset($_GET['estado']) && isset($_GET['id']))
{
    require_once('../../datos/conexion.php');
    $foto=$_GET['foto'];
    $idlectura = $_GET['idlectura'];
    $id = $_GET['id'];
    $estado = $_GET['estado'];
    $conn=conectarse();
    if(strlen($foto)!=0 && strlen($idlectura)!=0 && strlen($id)!=0 && strlen($estado)!=0)
    {
        $sentencia = $conn->prepare
        ("
        update  tabdetallelectura set 
        tabDetalleLecturaFoto = ?,
        tabDetalleLecturaFechaModificacion = now(),
        tabDetalleLecturaEstado = ?,
        tabLectura_idtabLectura = ?
        where
        idtabDetalleLectura = ?
        ");
        $sentencia->bind_param("ssii", $foto,$estado,$idlectura,$id);
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
echo 'Debe ingresar los datos del detalle de lectura';
 ?>