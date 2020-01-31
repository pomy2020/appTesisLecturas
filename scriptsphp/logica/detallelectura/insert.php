<?php 
if(isset($_GET['foto']) && isset($_GET['idlectura']))
{
    require_once('../../datos/conexion.php');
    $foto = $_GET['foto'];
    $idlectura = $_GET['idlectura'];
    $conn=conectarse();
    if(strlen($foto)!=0 && strlen($idlectura)!=0)
    {
        $sentencia = $conn->prepare
        ("
        insert into tabdetallelectura
        (
            tabDetalleLecturaFoto,
            tabDetalleLecturaFechaIngreso,
            tabDetalleLecturaFechaModificacion,
            tabDetalleLecturaEstado,
            tabLectura_idtabLectura
        )
        values
        (
            ?,
            now(),
            now(),
            'A',
            ?
        )
         "
        );
        $sentencia->bind_param("si", $foto,$idlectura);
    if($sentencia->execute())
    {
        echo 'ok';
    }
    else
    echo 'Error';
}
else 
echo 'No se ha ingresado la foto y el id lectura';
}
else
echo 'Debe ingresar la foto y el id lectura';
 ?>