<?php 
namespace App\Models;

use PDO;

require_once('config.php');

class Database{

    public static function db(){
        static $pdo = null;

        if($pdo == null){
            $dsn = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8";

            $pdo = new PDO( $dsn, DB_USER, DB_PASS );

            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        }

        return $pdo;
    }

    public static function dbRun($sql, $param = null){
        $statment = Database::db()->prepare($sql);

        $statment->execute($param);

        return $statment;
    }

}
