<?php 
if(isset($_GET['idpersona']))
{
    require_once('../../datos/conexion.php');
    $idpersona=$_GET['idpersona'];
    $conn=conectarse();
    if(strlen($idpersona)!=0)
    {
        $sentencia = $conn->prepare("
        select
        idtabMedidor as Id,
        tabMedidorCodigo as Codigo,
        tabMedidorNumero as Numero,
        tabMedidorFechaIngreso as FechaIngreso,
        tabMedidorFechaModificacion as FechaModificacion,
        tabMedidorEstado as Estado,
        tabPersona_idtabPersona as IdPersona
        from tabmedidor
        where
        tabPersona_idtabPersona = ?
        ");
        $sentencia->bind_param("i", $idpersona);
    if($sentencia->execute())
    {
        $datos = array();
        if($sentencia->bind_result($id,$codigo,$numero,$fechaingreso,$fechamodificacion,$estado,$idpersona))
			{
				while($sentencia->fetch())
				{
                array_push($datos,array(
                'Id'=>$id,
                'Codigo'=>$codigo,
                'Numero'=>$numero,
                'FechaIngreso'=>$fechaingreso,
                'FechaModificacion'=>$fechamodificacion,
                'Estado'=>$estado,
                'IdPersona'=>$idpersona,
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
echo 'Ingrese el numero para buscar';
}
else 
echo 'Se espera el parametro';
 ?>