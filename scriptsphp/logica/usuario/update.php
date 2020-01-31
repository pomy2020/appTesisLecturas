<?php 
if(isset($_GET['password']) and isset($_GET['idpersona']) and isset($_GET['idperfil'])and isset($_GET['id']) and isset($_GET['estado']))
{
    require_once('../../datos/conexion.php');
    $password=$_GET['password'];
    $idpersona = $_GET['idpersona'];
    $idperfil = $_GET['idperfil'];
    $id = $_GET['id'];
    $estado = $_GET['estado'];
    $conn=conectarse();
    if(strlen($idpersona)!=0 && strlen($password)!=0 && strlen($idperfil)!=0)
    {
        $sentencia = $conn->prepare
        ("
            Update tabusuario
            set 
                tabUsuarioPassword=?,
                tabUsuarioFechaModificacion=NOW(),
                tabUsuarioEstado=?,
                tabPersona_idtabPersona=?,
                tabPerfil_idtabPerfil=?
            where idtabusuario=?
        "
        );
        $sentencia->bind_param("ssii", $password,$estado,$idpersona,$idperfil,$id);
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
echo 'Debe ingresar el password';
 ?>