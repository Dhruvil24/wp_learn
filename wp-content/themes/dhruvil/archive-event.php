<?php
get_header();
if(have_posts()) : 
	echo '<div class="container" style="margin-top:70px;">';
	echo '<div class="row pt-5 pb-5">';
		while(have_posts()) : the_post();
			echo '<div class="col-md-4" style="background: rgba(0,0,0,0.7); box-shadow: 1px 1px 5px rgba(255,255,255,.8); border-radius: 4px;">';
		    echo '<div class="entry-content">';
		    echo '<h1 style="color:#fff; padding:10px; text-align:center;" >'.get_the_title().'</h1>';
		    echo '<div class="thumbnail">';
		    echo get_the_post_thumbnail();
		    echo "</div>";
		    echo '<div class="event-content" style="color:#fff; padding-top:10px;">';
		    echo get_the_content();
		    echo '</div>';
		    echo '</div>';
		    echo '</div>';
		endwhile; 
	echo '</div>';	
	echo '</div>';	
endif;
get_footer();
?>