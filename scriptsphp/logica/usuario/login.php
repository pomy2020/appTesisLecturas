<?php 
if(isset($_GET['email']) && isset($_GET['password']))
{
    require_once('../../datos/conexion.php');
    $email=$_GET['email'];
    $password = $_GET['password'];
    $conn=conectarse();
    if(strlen($email)!=0 && strlen($password)!=0)
    {
        $sentencia = $conn->prepare("
        select idtabUsuario as Id,
        tabusuarioPassword as Password,
        tabPersona_idTabPersona as Persona,
        tabPerfil_idtabPerfil as Perfil
        from
        tabusuario tu,
        tabpersona tp
        where
        tu.tabPersona_idTabPersona = tp.idtabPersona
        and tu.tabusuarioPassword=?
        and tp.tabpersonaEmail=?
        and tu.tabUsuarioEstado = 'A'");
        $sentencia->bind_param("ss",$password,$email);
    if($sentencia->execute())
    {
        $datos = array();
        if($sentencia->bind_result($id,$password,$persona,$perfil))
			{
				while($sentencia->fetch())
				{
                array_push($datos,array(
                'Id'=>$id,
                'Password'=>$password,
                'IdPersona'=>$persona,
                'IdPerfil'=>$perfil
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
echo 'No se ha ingresado los datos';
}
else
echo 'Debe ingresar el email y el password';
 ?>