<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */
 ?>
<!DOCTYPE html>
<html style="margin: 0px !important;">
	<head>    
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

		<!-- OWL CAROUSEL -->
	    <link rel="stylesheet" href="https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/assets/owl.carousel.min.css">
	    <link rel="stylesheet" href="https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/assets/owl.theme.default.min.css">
	    <!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
	<?php wp_head();?>
	</head>

<body>
	<div class="blog-masthead sticky">
	    <div class="logo col-md-3">
	        <a href="http://localhost/dhruvil/wp/wp_learn/"><img src="http://localhost/dhruvil/wp/Learn_wordpress/wp-content/themes/dhruvil/logo.png" class="img-fluid" style="position: absolute; height: 65px;"></a>
	    </div>
	    <nav class="blog-nav col-md-9">
	        <?php wp_nav_menu( array( 'theme_location' => 'header-menu' ) ); ?>
	    </nav>
	</div>

