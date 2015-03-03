<!DOCTYPE html>
<html dir="ltr" lang="en">
    <head>
    <?php  Loader::element('header_required'); ?>
        <title>Remember to replace the page title!</title>
        <meta charset="utf-8">
        <meta name="description" content="HTML5 Starter Pack 3.1 by Radu Chelariu">
        <meta name="keywords" content="html5, starter, pack, sickdesigner" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Radu Chelariu">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <link rel="author" href="humans.txt">
        <link rel="Shortcut Icon" type="image/ico" href="img/favicon.png">
        <link rel="stylesheet" href="<?php echo $this->getThemePath(); ?>/css/style.css" type="text/css" media="screen,projection">
        <link rel="canonical" href="http://youpreferreddomain.com/" />
        <link rel="stylesheet" type="text/css" href="<?php echo $this->getThemePath(); ?>/css/reset.css">
        <link rel="stylesheet" type="text/css" href="<?php echo $this->getThemePath(); ?>/css/index.css">
        <!--[if IE 8]><link rel="stylesheet" href="css/ie/ie8.css" type="text/css" media="screen"><![endif]-->
            
        <script src="<?php echo $this->getThemePath(); ?>/js/html5.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>    
    </head>
    <body>
        <div id="wrap">
            <header>
                <div id="Logo">
                    <img src="<?php echo $this->getThemePath(); ?>/img/Logo.png">
                </div>
                <nav role="navigation">
                        <ul id="menu">
                            <li><a href="#" >HOME</a><br><p class="SousMenu">back to home</p></li>
                            <li><a href="#">Products</a><p class=" SousMenu ">What we have for you</p></li>
                            <li><a href="#">Services</a><p class="  SousMenu">Things we do</p></li>
                            <li><a href="#">Blog</a><p class="  SousMenu">Follow our updates</p></li>
                            <li><a href="#">Contact</a><p class="SousMenu">Ways to reach us</li>
                        </ul>
                </nav>
            </header>
          