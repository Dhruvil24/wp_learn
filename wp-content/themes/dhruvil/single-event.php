<?php
get_header();
if(have_posts()) : 
	echo '<div class="container" style="margin-top:70px;">';
		echo '<div class="pt-5 pb-5" style="background:rgba(0,0,0,.8);">';
		while(have_posts()) : the_post();
		    echo '<div class="entry-content">';
		    echo '<h1 style="color:#fff; padding:10px; text-align:center;" >'.get_the_title().'</h1>';
		    echo '<div class="thumbnail" style="text-align:center;">';
		    echo get_the_post_thumbnail();
		    echo "</div>";
		    echo '<div class="event-content" style="color:#fff; padding:15px;">';
		    echo get_the_content();
		    echo '</div>';
		    echo '</div>';
		endwhile; 
		echo '</div>';
	echo '</div>';	
endif;
get_footer();
?>