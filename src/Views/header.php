<?php

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Man is BLUE</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.1/dist/flowbite.min.css" />

    <script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/index.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@700&display=swap" rel="stylesheet">
    <link rel="icon" href="img/logo.png">
</head>

<style>
    .dropdown:hover .dropdown-menu {
        display: block;
    }
    *{
        font-family: 'Oswald', sans-serif;
    }
</style>

<body>
    <header class="w-full">
        <nav class="fixed top-0 w-full border-gray-200 px-4 lg:px-6 py-2.5">
            <div class="flex flex-wrap justify-between items-center">
                <div>
                    <div class="dropdown inline-block relative">
                        <button class="text-2xl bg-blue-900 text-white font-semibold py-2 px-4 rounded inline-flex items-center">
                            <span class="mr-1">Menu</span>
                            <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
                            </svg>
                        </button>
                        <ul class="dropdown-menu absolute hidden text-white text-2xl pt-1">
                            <li class=""><a class=" rounded-t bg-blue-900 hover:bg-sky-400 py-2 px-4 block whitespace-no-wrap" href="/">Accueil</a></li>
                            <li class=""><a class=" bg-blue-900 hover:bg-sky-400 py-2 px-4 block whitespace-no-wrap" href="/News">News</a></li>
                            <li class=""><a class=" bg-blue-900 hover:bg-sky-400 py-2 px-4 block whitespace-no-wrap" href="/Players">Joueurs</a></li>
                            <li class=""><a class=" bg-blue-900 hover:bg-sky-400 py-2 px-4 block whitespace-no-wrap" href="/Shop">Boutique</a></li>
                            <?php if ($_SESSION['connected'] == "true") { ?> <li class=""><a class="text-xl bg-blue-900 hover:bg-sky-400 py-2 px-4 block whitespace-no-wrap" href="/Profile">Profil</a></li> <?php } ?>
                            <?php if ($_SESSION['role'] == "adm") { ?><li class=""><a class=" bg-blue-900 hover:bg-sky-400 py-2 px-4 block whitespace-no-wrap" href="/Admin">Admin</a></li><?php } ?>
                        </ul>
                    </div>

                </div>
                <a href="/" class="flex items-center" id="logo" >
                    <img src="img/logo.png" class="mr-3 h-24" />
                </a>
                <div class="flex items-center lg:order-2">
                    <a href="#" class="text-xl text-gray-800  focus:ring-4 focus:ring-gray-300 font-medium rounded-lg  px-4 lg:px-5 py-2 lg:py-2.5 mr-2  focus:outline-none dark:focus:ring-gray-800">Connexion</a>
                    <a href="#" class="text-xl text-white bg-blue-900 hover:bg-sky-500 focus:ring-4 focus:ring-primary-300 font-medium rounded-lg px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:bg-primary-600 dark:hover:bg-primary-700 focus:outline-none dark:focus:ring-primary-800">Créer un compte</a>
                    <button data-collapse-toggle="mobile-menu-2" type="button" class="inline-flex items-center p-2 ml-1 text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="mobile-menu-2" aria-expanded="false">
                        <span class="sr-only">Open main menu</span>
                        <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path>
                        </svg>
                        <svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path>
                        </svg>
                    </button>
                </div>

            </div>
        </nav>
    </header>