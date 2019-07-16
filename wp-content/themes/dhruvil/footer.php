<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */
wp_footer()?>


		<footer class="blog-footer pb-5 pt-5" style=" position: relative; text-align: center; display: flex;  background: rgba(255,255,255,.7); width: 100%;" >
			<div class="col-md-4" style="top: 24px;">
		   		<?php dynamic_sidebar( 'footer1' ); ?>
		   	</div>
		   	<div class="col-md-4" style="top: 24px;">
		   		<?php dynamic_sidebar( 'footer2' ); ?>
		   	</div>
		   	<div class="col-md-4">
		   		<?php dynamic_sidebar( 'footer3' ); ?>
		   	</div>
		</footer>


	</body>
</html>

