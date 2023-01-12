<?php


use Pecee\SimpleRouter\SimpleRouter; 
use App\Controllers\HomeController;


SimpleRouter::get('/', [HomeController::class, 'index']);
SimpleRouter::get('/header', [HomeController::class, 'header']);