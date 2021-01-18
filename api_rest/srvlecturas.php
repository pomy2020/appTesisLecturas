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
  listar todas las lecturas o solo una
 */
  if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    if (isset($_GET['StrIds']))
    {
      //Mostrar medidores no registrados en app móvil
      $filtro = $_GET['StrIds'];
      $txtSql="
        SELECT
        Id as IdServer,
        Fecha,
        Anterior,
        Actual,
        Consumo,
        Basico,
        Exceso,
        Observacion,
        Estado,
        Latitud,
        Longitud,
        Medidor_id,
        User_id,
        Created_at,
        Updated_at
        FROM `lecturas` 
        WHERE 
        id not in
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

// Crear una nueva lectura
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $input = $_POST;
    $sql = "INSERT INTO lecturas
          (fecha,anterior,actual,consumo,basico,exceso,observacion,imagen,latitud,longitud,estado,medidor_id,user_id,created_at,updated_at)
          VALUES
          (:Fecha,:Anterior, :Actual,:Consumo,:Basico,:Exceso,:Observacion,:Imagen,:Latitud,:Longitud,:Estado,:Medidor_id,:User_id,:Created_at,:Updated_at)";
    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);
    $statement->execute();
    $lecturaId = $dbConn->lastInsertId();
    if($lecturaId)
    {
      $input['idServer'] = $lecturaId;
      header("HTTP/1.1 200 OK");
      echo json_encode($input);
      exit();
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