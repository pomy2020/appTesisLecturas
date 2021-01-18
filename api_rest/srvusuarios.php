<?php
include "apirest/config.php";
include "apirest/utils.php";


if(isset($_SERVER['PHP_AUTH_USER']) && isset($_SERVER['PHP_AUTH_PW']))
{
      $dbConn =  connect($db);
      $email = $_SERVER['PHP_AUTH_USER'];
      $password = $_SERVER['PHP_AUTH_PW'];
if(validar_usuario_password($email,$password,$dbConn))
{

/*
  listar los usuarios que no esten registrados en la app móvil
 */
if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    if (isset($_GET['StrIds']))
    {
      //Mostrar medidores no registrados en app móvil
      $filtro = $_GET['StrIds'];
    $txtSql="
        select
        u.Id,
        u.Email,
    u.Sector,
        u.Password,
        r.Name as Role,
        u.Created_at,
        u.Updated_at,
        u.Name
        from users u, roles r, role_user ru
        where 
        u.id=ru.user_id
        AND
        r.id=ru.role_id
        AND
        u.id not in
        "."(".$filtro.")";
       try
    {
      $sql = $dbConn->prepare($txtSql);
      $sql->execute();
      header("HTTP/1.1 200 OK");
      echo json_encode(  $sql->fetchAll() );
      exit();
    }
    catch (PDOException $e)
    {
        header("HTTP/1.1 400 Bad Request");
    }
    }
   
}
//En caso de que ninguna de las opciones anteriores se haya ejecutado
header("HTTP/1.1 400 Bad Request");
}
else
//cuando no concide los datos de usuario
header("HTTP/1.1 401 Unauthorized");
}
else
//cuando no se envian las credenciales
header("HTTP/1.1 403 Forbidden");

?>