<?php 
if(isset($_GET['cedula']) and isset($_GET['nombres']) and isset($_GET['apellidos']) and isset($_GET['id']))
{
    require_once('../../datos/conexion.php');
    $cedula=$_GET['cedula'];
    $nombres = $_GET['nombres'];
    $apellidos = $_GET['apellidos'];
    $telefono = $_GET['telefono'];
    $email = $_GET['email'];
    $estado = $_GET['estado'];
    $id = $_GET['id'];
    $conn=conectarse();
    if(strlen($id)!=0 && strlen($cedula)==10 && strlen($nombres)!=0 && strlen($apellidos)!=0)
    {
        $sentencia = $conn->prepare
        ("
        update tabpersona
        set
        tabPersonaCedula=?,
        tabPersonaNombres=?,
        tabPersonaApellidos=?,
        tabPersonaTelefono=?,
        tabPersonaEmail=?,
        tabPersonaEstado=?,
        tabPersonaFechaModificacion=NOW()
        where
        idtabPersona = ?
         "
        );
        $sentencia->bind_param("ssssssi", $cedula,$nombres,$apellidos,$telefono,$email,$estado,$id);
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
echo 'Debe ingresar el numero de cedula, los nombres y apellidos';
 ?>