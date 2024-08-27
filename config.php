<?php
$db = 'phprest';
$user = 'root';
$password = '';
$dsn = "mysql:host=127.0.0.1;dbname=$db;charset=UTF8";

try {
    
    $db=new PDO($dsn,$user,$password);
    // set the PDO error mode to exception
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_EMULATE_PREPARES,false);
    $db->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY,true);
    
    
    if($db){
     echo "Connected successfully!";
    }

  } catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
  }

  ?>