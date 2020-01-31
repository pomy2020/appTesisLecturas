<?php 
if(isset($_GET['idlectura']))
{
    require_once('../../datos/conexion.php');
    $idlectura=$_GET['idlectura'];
    $conn=conectarse();
    if(strlen($idlectura)!=0)
    {
        $sentencia = $conn->prepare("
        select
        idtabdetallelectura as Id,
        tabDetalleLecturaFoto as Foto, 
        tabDetalleLecturaFechaIngreso as FechaIngreso, 
        tabDetalleLecturaFechaModificacion FechaModificacion,
        tabDetalleLecturaEstado Estado, 
        tabLectura_idtabLectura IdLectura
        from tabdetallelectura
        where tabLectura_idtabLectura = ?
        ");
        $sentencia->bind_param("i", $idlectura);
    if($sentencia->execute())
    {
        $datos = array();
        if($sentencia->bind_result($id,$foto,$fechaingreso,$fechamodificacion,$estado,$idlectura))
			{
				while($sentencia->fetch())
				{
                array_push($datos,array(
                'Id'=>$id,
                'Foto'=>$foto,
                'FechaIngreso'=>$fechaingreso,
                'FechaModificacion'=>$fechamodificacion,
                'Estado'=>$estado,
                'IdLectura'=>$idlectura,
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
echo 'Ingrese el id de lectura para buscar';
}
else 
echo 'Se espera el id';
 ?>