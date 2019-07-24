// GRID SHORTCODE
function event_grid_shortcode( $atts, $content = null ) {
  	extract(shortcode_atts(
  		array(
	        'column' 	=> 6,
	        'class' 	=> 'event-grid',
	    ), $atts)
  	);

    // The Query
	$the_query = new WP_Query( array( 'post_type' => 'event', 'column' => $column ) );
 	$html 	.='<div class="row">';
    while ( $the_query->have_posts() ) : the_post();
        $the_query->the_post();
        $html 	.='<div class="pt-3 pb-3">';
        $html 	.='<div style="background:#f5f5f5; box-shadow:0px 0px 5px #c6c6c6;border-radius:6px; 				height:250px; width:320px;">';
        $html 	.='<div class="thumbnail">' . get_the_post_thumbnail() . '</div>';
        $html 	.='<h4 style="color:#333; margin-top:10px; text-align:center; 										text-transform:capitalize;" >
        			<a href="'.get_permalink().'">'.get_the_title().'</a></h4>';
        $html 	.='</div>';
        $html 	.='</div>';
	endwhile; 
    $html 	.='</div>';
    return $html;
}
add_shortcode('event_grid', 'event_grid_shortcode');
















while ( $the_query->have_posts() ) : the_post();
        $the_query->the_post();

            $html   .='<div class="grid pt-3 mr-5 pb-3">';
            $html   .='<div style="background:#f5f5f5; box-shadow:0px 0px 5px #c6c6c6;border-radius:6px;                height:auto; width:300px;">';
            $html   .='<div class="grid-thumbnail">' . get_the_post_thumbnail() . '</div>';
            $html   .='<h4 style="color:#333; margin-top:10px; text-align:center;                                       text-transform:capitalize;" >
                        <a href="'.get_permalink().'">'.get_the_title().'</a></h4>';
            $html   .='</div>';
            $html   .='</div>';
       
    endwhile; 