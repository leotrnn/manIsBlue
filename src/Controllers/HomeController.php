<?php

namespace App\Controllers;

use App\Models\User;





class HomeController
{
    /**
     * Constructor with header in it
     */
    public function __construct()
    {
        require_once '../src/Views/header.php';
    }

    /**
     * Display home page
     *
     * @return void
     */
    public function index()
    {
        
        require_once '../src/Views/home.php';
    }
    
    /**
     * Destruct with footer in it
     */
    public function __destruct()
    {
        require_once '../src/Views/footer.php';
    }

}