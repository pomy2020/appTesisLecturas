<?php 
if(isset($_GET['password']) and isset($_GET['idpersona']) and isset($_GET['idperfil']))
{
    require_once('../../datos/conexion.php');
    $password=$_GET['password'];
    $idpersona = $_GET['idpersona'];
    $idperfil = $_GET['idperfil'];
    $conn=conectarse();
    if(strlen($idpersona)!=0 && strlen($password)!=0 && strlen($idperfil)!=0)
    {
        $sentencia = $conn->prepare
        ("
            insert into tabusuario
            (
                tabUsuarioPassword,
                tabUsuarioFechaIngreso,
                tabUsuarioFechaModificacion,
                tabUsuarioEstado,
                tabPersona_idtabPersona,
                tabPerfil_idtabPerfil
                )
                values
                (
                    ?,
                    NOW(),
                    NOW(),
                    'A',
                    ?,
                    ?
                    )"
        );
        $sentencia->bind_param("sii", $password,$idpersona,$idperfil);
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
                'Password'=>$password,
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
echo 'Debe ingresar el password';
 ?>