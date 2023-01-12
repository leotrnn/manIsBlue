<?php 

session_start();

require '../vendor/autoload.php';
require '../routes/web.php';

use Pecee\SimpleRouter\SimpleRouter;

SimpleRouter::setDefaultNamespace('\App\Controllers');

SimpleRouter::start();

