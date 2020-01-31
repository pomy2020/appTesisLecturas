<?php 
if(isset($_GET['nombre']))
{
    require_once('../../datos/conexion.php');
    $nombre = $_GET['nombre'];
    $conn=conectarse();
    if(strlen($nombre)!=0)
    {
        $sentencia = $conn->prepare
        ("
        insert into tabperfil
        (
            tabPerfilNombre,
            tabPerfilFechaIngreso,
            tabPerfilFechaModificacion,
            tabPerfilEstado
        )
        values
        (
            ?,
            NOW(),
            NOW(),
            'A'
        )
         "
        );
        $sentencia->bind_param("s",$nombre);
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
                'Nombre'=>$nombre,
                'Estado'=>'A',
                'FechaIngreso'=>date('Y-m-d H:i:s'),
                'FechaModificacion'=>date('Y-m-d H:i:s')
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
    echo 'Error';
}
else 
echo 'No se ha ingresado los datos';
}
else
echo 'Debe ingresar nombre';
 ?>