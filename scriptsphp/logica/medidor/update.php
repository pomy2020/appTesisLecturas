<?php 
if(isset($_GET['codigo']) and isset($_GET['numero']) and isset($_GET['idpersona']) and isset($_GET['id']) and isset($_GET['estado']))
{
    require_once('../../datos/conexion.php');
    $codigo=$_GET['codigo'];
    $numero = $_GET['numero'];
    $idpersona = $_GET['idpersona'];
    $id = $_GET['id'];
    $estado = $_GET['estado'];
    $conn=conectarse();
    if(strlen($id)!=0 && strlen($numero)!=0 && strlen($codigo)!=0 && strlen($idpersona)!=0 && strlen($estado)!=0)
    {
        $sentencia = $conn->prepare
        ("
        update tabmedidor
        set
            tabMedidorCodigo=?,
            tabMedidorNumero=?,
            tabMedidorFechaModificacion=now(),
            tabMedidorEstado=?,
            tabPersona_idtabPersona=?
            where 
            idtabMedidor=?
         "
        );
        $sentencia->bind_param("iisii", $codigo,$numero,$estado,$idpersona,$id);
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
echo 'Debe ingresar el numero, el codigo, el estado y el id';
 ?>