<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 *  @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

 get_header(); ?>
 <div style="display: flex;">
     <div class="col-md-9" style="float: left; padding: 0;">
        <div class="container-fluid" style="background: rgba(0,0,0,.7); padding-top: 75px;">
            <section style="min-height: 200px; color: #fff;">
                <h1 class="entry-title"><?php the_title(); ?></h1>
                <?php
                // TO SHOW THE PAGE CONTENTS
                while ( have_posts() ) : the_post(); ?>
                    <div class="entry-content-page">
                        <?php the_content(); ?>                  
                    </div>
                <?php
                endwhile;
                ?>
            </section>
            <section style="min-height: 200px; width: 100%; color: #fff;"></section>
            <section style="min-height: 200px; color: #fff;"></section>
            <section style="min-height: 200px; color: #fff;"></section>
        </div>
    </div>

    <div class="col-md-3 pb-1" style="padding: 75px 0 0 0 ; background: rgba(255,255,255,.9); right: 0; ">
        <?php get_sidebar( 'Primary Sidebar' ); ?>  
    </div>
</div>
<?php get_footer();?>


