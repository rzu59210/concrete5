<!DOCTYPE html>
<html dir="ltr" lang="en">
    <head>
        <title>Remember to replace the page title!</title>
        <meta charset="utf-8">
        <meta name="description" content="HTML5 Starter Pack 3.1 by Radu Chelariu">
        <meta name="keywords" content="html5, starter, pack, sickdesigner" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Radu Chelariu">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <link rel="author" href="humans.txt">
        <link rel="Shortcut Icon" type="image/ico" href="<?php echo $this->getThemePath(); ?>/assets/img/favicon.png">
        <link rel="stylesheet" type="text/css" media="screen,projection" href="<?php echo $this->getThemePath(); ?>/assets/css/style.css">
        <link rel="canonical" href="http://youpreferreddomain.com/" />
        <link rel="stylesheet" type="text/css" href="<?php echo $this->getThemePath(); ?>/assets/css/reset.css">
        <link rel="stylesheet" type="text/css" href="<?php echo $this->getThemePath(); ?>/assets/css/index.css">
        <!--[if IE 8]><link rel="stylesheet" href="css/ie/ie8.css" type="text/css" media="screen"><![endif]-->
            
        <script src="<?php echo $this->getThemePath(); ?>/assets/js/html5.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>  
        <script>
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
            _gaq.push(['_trackPageview']);

            (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
        </script>  
		<?php Loader::element('header_required'); ?>
    </head>
	 <body>
        <div id="wrap">
            <header>
                <div id="Logo">
                    <img src="<?php echo $this->getThemePath(); ?>/assets/img/Logo.png">
                </div>
                <nav role="navigation">
                        <?php 
						$a = new Area('Menu');
						$a->display($c);
					?>
                </nav>
				
        </div>