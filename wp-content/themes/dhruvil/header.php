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
	    
	<?php wp_head();?>
	</head>

<body>
	<div class="blog-masthead sticky">
	    <div class="logo col-md-3">
	        <a href="index.php"><img src="http://localhost/dhruvil/wp/Learn_wordpress/wp-content/themes/dhruvil/logo.png" class="img-fluid" style="position: absolute; height: 65px;"></a>
	    </div>
	    <nav class="blog-nav col-md-9">
	        <?php wp_nav_menu( array( 'theme_location' => 'header-menu' ) ); ?>
	    </nav>
	</div>

