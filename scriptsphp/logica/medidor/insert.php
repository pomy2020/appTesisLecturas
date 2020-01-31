<?php 
if(isset($_GET['codigo']) and isset($_GET['numero']) and isset($_GET['idpersona']))
{
    require_once('../../datos/conexion.php');
    $codigo=$_GET['codigo'];
    $numero = $_GET['numero'];
    $idpersona = $_GET['idpersona'];
    $conn=conectarse();
    if(strlen($codigo)!=0 && strlen($numero)!=0 && strlen($idpersona)!=0)
    {
        $sentencia = $conn->prepare
        ("
        insert into tabmedidor
        (
            tabMedidorCodigo,
            tabMedidorNumero,
            tabMedidorFechaIngreso,
            tabMedidorFechaModificacion,
            tabMedidorEstado,
            tabPersona_idtabPersona
            )
            values
            (
                ?,
                ?,
                now(),
                now(),
                'A',
                ?
            )
         "
        );
        $sentencia->bind_param("iii", $codigo,$numero,$idpersona);
    if($sentencia->execute())
    {
        $sentencia = $conn->prepare("SELECT LAST_INSERT_ID()");
        if($sentencia->execute())
        {
            $datos = array();
            if($sentencia->bind_result($id))
            {
                while($sentencia->fetch())
                {
                    array_push($datos,array(
                    'Id'=>$id,
                    'Codigo'=>$codigo,
                    'Numero'=>$numero,
                    'Estado'=>'A',
                    'FechaIngreso'=>date('Y-m-d H:i:s'),
                    'FechaModificacion'=>date('Y-m-d H:i:s'),
                    'IdPersona'=>$idpersona
                ));
                }
            }
        $sentencia->close();
    echo utf8_encode(json_encode($datos));
    }
    else echo 'Error';
    }
    else
    echo 'Error';
}
else 
echo 'No se ha ingresado los datos';
}
else
echo 'Debe ingresar el codigo, numero y id del consumidor';
 ?>