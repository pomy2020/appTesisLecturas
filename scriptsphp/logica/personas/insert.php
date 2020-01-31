<?php 
if(isset($_GET['cedula']) and isset($_GET['nombres']) and isset($_GET['apellidos']))
{
    require_once('../../datos/conexion.php');
    $cedula=$_GET['cedula'];
    $nombres = $_GET['nombres'];
    $apellidos = $_GET['apellidos'];
    $telefono = $_GET['telefono'];
    $email = $_GET['email'];
    $conn=conectarse();
    if(strlen($cedula)==10 && strlen($nombres)!=0 && strlen($apellidos)!=0)
    {
        $sentencia = $conn->prepare
        ("
        insert into tabpersona
        (
            tabPersonaCedula,
            tabPersonaNombres,
            tabPersonaApellidos,
            tabPersonaTelefono,
            tabPersonaEmail,
            tabPersonaEstado,
            tabPersonaFechaIngreso,
            tabPersonaFechaModificacion
            )
            values
            (
                ?,
                ?,
                ?,
                ?,
                ?,
                'A',
                NOW(),
                NOW()
                );
         "
        );
        $sentencia->bind_param("sssss", $cedula,$nombres,$apellidos,$telefono,$email);
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
                'Cedula'=>$cedula,
                'Nombres'=>$nombres,
                'Apellidos'=>$apellidos,
                'Telefono'=>$telefono,
                'Email'=>$email,
                'Estado'=>'A',
                'FechaIngreso'=>date('Y-m-d H:i:s'),
                'FechaModificacion'=>date('Y-m-d H:i:s')
                ));
                }
            }
        $sentencia->close();
    echo utf8_encode(json_encode($datos));
        }        
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