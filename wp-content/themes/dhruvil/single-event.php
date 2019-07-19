<?php
get_header();
if(have_posts()) : 
	echo '<div class="container" style="margin-top:70px;">';
		while(have_posts()) : the_post();
			echo '<div class="col-md-12 pb-5 pt-5">';
			echo '<div style="background:#fff; box-shadow:0 0 5px #c1c1c1;">';
		    echo '<div class="entry-content">';
		    echo '<div class="thumbnail" style="text-align:center;">';
		    echo get_the_post_thumbnail();
		    echo "</div>";
		    echo '<div class="event-content" style="color:#333; padding:20px;">';
		    echo '<h1 style="color:#999; padding:10px; text-align:center;text-transform:capitalize;" >'.get_the_title().'</h1>';
		    echo get_the_content();
		    echo '</div>';
		    echo '</div>';
		    echo '</div>';
		    echo '</div>';
		endwhile; 
		
	echo '</div>';	
endif;
get_footer();
?>