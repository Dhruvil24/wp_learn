<?php
get_header();
if(have_posts()) : 
	echo '<div class="container" style="margin-top:70px;">';
	echo '<div class="row pt-5 pb-5">';
		while(have_posts()) : the_post();
			$content = get_the_content('read more', true);
			$content = substr($content,0,200);
			$content = apply_filters('the_content', $content );

			echo '<div class="col-md-4 pb-5">';
			echo '<div class="" style="background: #f5f5f5; box-shadow: 0px 0px 10px #c6c6c6; border-radius: 6px; height:450px;">';
		    echo '<div class="entry-content">';
		    echo '<div class="thumbnail">';
		    echo get_the_post_thumbnail();
		    echo "</div>";
		    echo '<div class="event-content" style="color:#999; padding:20px;">';
		    echo '<h2 style="color:#333;" ><a href="'.get_permalink().'">'.get_the_title().'</a></h2>';
		   	echo $content; 
		    echo '</div>';
		    echo '</div>';
		    echo '</div>';
		    echo '</div>';
		endwhile; 
	echo '</div>';	
	echo '</div>';	
endif;
get_footer();
?>