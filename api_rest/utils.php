<?php
include "bcrypt.php";

  //Abrir conexion a la base de datos
  function connect($db)
  {
      try {
          $conn = new PDO("mysql:host={$db['host']};dbname={$db['db']};charset=utf8", $db['username'], $db['password']);

          // set the PDO error mode to exception
          $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

          return $conn;
      } catch (PDOException $exception) {
          exit($exception->getMessage());
      }
  }


 //Obtener parametros para updates
 function getParams($input)
 {
    $filterParams = [];
    foreach($input as $param => $value)
    {
            $filterParams[] = "$param=:$param";
    }
    return implode(", ", $filterParams);
  }

  //Asociar todos los parametros a un sql
  function bindAllValues($statement, $params)
  {
    foreach($params as $param => $value)
    {
        $statement->bindValue(':'.$param, $value);
    }
    return $statement;
   }
   function validar_usuario_password($email,$password,$dbConn)
  {
      
    if (isset($email) && isset($password))
    {
        
        $validar_password=false;//variable booleana que define si la comparacion de password es correcta o incorrecta
        $bcrypt = new Bcrypt(12);//funcion php para comparar cadenas encriptadas
        $chk_email= $dbConn->prepare("SELECT PASSWORD
        FROM users u, roles r, role_user ru
        where u.id = ru.user_id 
        and r.id = ru.role_id 
        and u.email = ? 
        and r.name = 'lector'");//consulta de datos filtrado por email y rol lector
        $chk_email -> execute(array($email));//ejecucion de la consulta
        while($row = $chk_email->fetch(PDO::FETCH_ASSOC)){//recorrer los resultados de la consulta
               $chk_pass = $row['PASSWORD'];//obtener password almacenado en la base de datos
               $validar_password = $bcrypt->verify($password, $chk_pass);//comparar password ingresado y password almacenado en la base de datos
             }
             return $validar_password;//retorna resultado verdadero o falso según coincida o no las contraseñas
    }
    else
    return false;
  }

 ?>