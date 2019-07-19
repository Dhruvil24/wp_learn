<?php

/**
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 */

add_theme_support( 'post-thumbnails' );

// ADD CSS AND SCRIPTS
function theme_styles()  
{ 
	wp_register_style( 'fontawesome', 'http:////maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' );
	
	wp_enqueue_style( 'fontawesome');
	wp_enqueue_style( 'style', get_template_directory_uri() . '/style.css');
	wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/css/bootstrap.css');
	wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/js/bootstrap.min.js');
}
add_action('wp_enqueue_scripts', 'theme_styles');
// END CSS AND SCRIPTS


add_filter('show_admin_bar', '__return_false');


// navBar
function register_custom_nav_menus() {
	register_nav_menus( array(
		'header-menu' => __( 'Header Menu' ),
  	) );
}
add_action( 'after_setup_theme', 'register_custom_nav_menus' );
// end navBar


// sideBar
function my_register_sidebar() {
    /* Register the 'primary' sidebar. */
    register_sidebar(
        array(
            'id'            => 'primary',
            'name'          => __( 'Primary Sidebar' ),
            'description'   => __( 'A short description of the sidebar.' ),
            'before_widget' => '<div id="d1" class="widget">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );    
}
add_action( 'widgets_init', 'my_register_sidebar' );
// end sideBar


function my_register_footer() {
	register_sidebar(
        array(
            'id'            => 'footer1',
            'name'          => __( 'Primary Footer-1' ),
            'description'   => __( 'A short description of the footer.' ),
            'before_widget' => '<div id="f1" class="widget">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );
    register_sidebar(
        array(
            'id'            => 'footer2',
            'name'          => __( 'Primary Footer-2' ),
            'description'   => __( 'A short description of the footer.' ),
            'before_widget' => '<div id="f2" class="widget">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );
    register_sidebar(
        array(
            'id'            => 'footer3',
            'name'          => __( 'Primary Footer-3' ),
            'description'   => __( 'A short description of the footer.' ),
            'before_widget' => '<div id="f3" class="widget">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );	
}
add_action( 'widgets_init', 'my_register_footer' );




// Register and load the widget
function wpb_load_widget() {
    register_widget( 'wpb_widget' );
}
add_action( 'widgets_init', 'wpb_load_widget' );
 
// Creating the widget 
class wpb_widget extends WP_Widget {
 
	function __construct() {
		
		parent::__construct(
		 
			// Base ID of your widget
			'wpb_widget', 
			 
			// Widget name will appear in UI
			__('demo widget', 'wpb_widget_domain'), 
			 
			// Widget description
			array( 'description' => __( 'Simple Widget For Demo', 'wpb_widget_domain' ), ) 
		);
	}
	 
	// Creating widget front-end
	public function widget( $args, $instance ) {
		$title 			= apply_filters( 'widget_title', $instance['title'] );
		$description 	= apply_filters( 'widget_title', $instance['description'] );
	 
		// before and after widget arguments are defined by themes
		echo $args['before_widget'];
		if ( ! empty( $title ) )
		echo $args['before_title'] . $title . $args['after_title'];

		if ( ! empty( $description ) )
		echo $args['before_description'] . $description . $args['after_description'];
		 
		// This is where you run the code and display the output
		echo $args['after_widget'];
	}
	         
	// Widget Backend 
	public function form( $instance ) {
		$title 			= ( isset( $instance[ 'title' ]) ) 			? $instance[ 'title' ] : '';
		$description 	= ( isset( $instance[ 'description' ]) ) 	? $instance[ 'description' ] : '';

	// Widget admin form
		?>
		<p>
			<label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
			<input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
			
			<label for="<?php echo $this->get_field_id( 'description' ); ?>"><?php _e( 'Description:' ); ?></label>
			<textarea class="widefat" rows="8" id="<?php echo $this->get_field_id( 'description' ); ?>" name="<?php echo $this->get_field_name( 'description' ); ?>">
				<?php echo esc_attr( $description ); ?>			
			</textarea>
		</p>
		<?php 
	}
	     
	// Updating widget replacing old instances with new
	public function update( $new_instance, $old_instance ) {
		$instance 				 = array();
		$instance['title'] 		 = ( ! empty( $new_instance['title'] ) ) 		? strip_tags( $new_instance['title'] ) : '';
		$instance['description'] = ( ! empty( $new_instance['description'] ) )  ? strip_tags( $new_instance['description'] ) : '';

		return $instance;
		}
} // Class wpb_widget ends here


// SOCIAL WIDGET
// Register and load the widget
function social_menu_widget() {
    register_widget( 'social_widget' );
}
add_action( 'widgets_init', 'social_menu_widget' );
 
// Creating the widget 
class social_widget extends WP_Widget {
 
	function __construct() {
		parent::__construct(
		 
		// Base ID of your widget
		'social_widget', 
		 
		// Widget name will appear in UI
		__('Social Widget', 'social_widget_domain'), 
		 
		// Widget description
		array( 'description' => __( 'Social Menu Widgets', 'social_widget_domain' ), ) 
		);
	}

	// Creating widget front-end
	public function widget( $args, $instance ) {

		$title 		= apply_filters( 'widget_title', $instance['title'] ); 
		$facebook 	= $instance['facebook'];
		$instagram  = $instance['instagram'];
		$youtube 	= $instance['youtube'];
		$linkedIn 	= $instance['linkedIn'];
		$icon_ui 	= $instance['icon_ui'];
		 

		// before and after widget arguments are defined by themes
		echo $args['before_widget'];
		if ( ! empty( $title ) )
			echo $args['before_title'] . $title . $args['after_title'];

		echo '<div class="social_icon '.$icon_ui.'">';
		if ( ! empty( $facebook ) )
			echo '<a href="'. $facebook .'"><i class="fa fa-facebook"></i></a>';

		if ( ! empty( $instagram ) )
			echo '<a href="'. $instagram .'"><i class="fa fa-instagram"></i></a>';

		if ( ! empty( $youtube ) )
			echo '<a href="'. $youtube .'"><i class="fa fa-youtube"></i></a>';

		if ( ! empty( $linkedIn ) )
			echo '<a href="'. $linkedIn .'"><i class="fa fa-linkedin"></i></a>';

		echo '</div>';
		echo $args['after_widget'];
	}

	// Widget Backend 
	public function form( $instance ) {

		$title 		= ( isset( $instance[ 'title' ]) ) 		? $instance[ 'title' ] : '';
		$facebook 	= ( isset( $instance[ 'facebook' ]) ) 	? $instance[ 'facebook' ] : '';
		$instagram 	= ( isset( $instance[ 'instagram' ]) )  ? $instance[ 'instagram' ] : '';
		$youtube 	= ( isset( $instance[ 'youtube' ]) ) 	? $instance[ 'youtube' ] : '';
		$linkedIn 	= ( isset( $instance[ 'linkedIn' ]) ) 	? $instance[ 'linkedIn' ] : '';
		$icon_ui 	= ( isset( $instance[ 'icon_ui' ] ) && !empty($instance[ 'icon_ui' ])) ? $instance[ 'icon_ui' ] : 'rounded';
		// Widget admin form
		
		?>
		<div>
			<label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
			<input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
			<ul>
				<li>
					<label for="<?php echo $this->get_field_id( 'facebook' ); ?>"><?php _e( 'Facebook:' ); ?></label>
					<input class="widefat" id="<?php echo $this->get_field_id( 'facebook' ); ?>" name="<?php echo $this->get_field_name( 'facebook' ); ?>" type="text" value="<?php echo esc_attr( $facebook ); ?>" />
				</li>
				<li>	
					<label for="<?php echo $this->get_field_id( 'instagram' ); ?>"><?php _e( 'Instagram:' ); ?></label>
					<input class="widefat" id="<?php echo $this->get_field_id( 'instagram' ); ?>" name="<?php echo $this->get_field_name( 'instagram' ); ?>" type="text" value="<?php echo esc_attr( $instagram ); ?>" />
				</li>
				<li>	
					<label for="<?php echo $this->get_field_id( 'youtube' ); ?>"><?php _e( 'YouTube:' ); ?></label>
					<input class="widefat" id="<?php echo $this->get_field_id( 'youtube' ); ?>" name="<?php echo $this->get_field_name( 'youtube' ); ?>" type="text" value="<?php echo esc_attr( $youtube ); ?>" />
				</li>
				<li>
					<label for="<?php echo $this->get_field_id( 'linkedIn' ); ?>"><?php _e( 'LinkedIn:' ); ?></label>
					<input class="widefat" id="<?php echo $this->get_field_id( 'linkedIn' ); ?>" name="<?php echo $this->get_field_name( 'linkedIn' ); ?>" type="text" value="<?php echo esc_attr( $linkedIn ); ?>" />
				</li>
			</ul>
				<input type="radio" name="<?php echo $this->get_field_name( 'icon_ui' ); ?>" id="rounded" value="rounded" <?php echo ($icon_ui == "rounded") ? 'checked': '';?>>Rounded
				<input type="radio" name="<?php echo $this->get_field_name( 'icon_ui' ); ?>" id="square" value="square" <?php echo ($icon_ui == "square") ? 'checked': '';?>>Square
		</div>
		<?php 
	}
     
	// Updating widget replacing old instances with new
	public function update( $new_instance, $old_instance ) {
		$instance 				= array();
		$instance['title'] 	    = ( ! empty( $new_instance['title'] ) ) 	? strip_tags( $new_instance['title'] ) : '';
		$instance['facebook']   = ( ! empty( $new_instance['facebook'] ) ) 	? strip_tags( $new_instance['facebook'] ) : '';
		$instance['instagram']  = ( ! empty( $new_instance['instagram'] ) ) ? strip_tags( $new_instance['instagram'] ) : '';
		$instance['youtube'] 	= ( ! empty( $new_instance['youtube'] ) ) 	? strip_tags( $new_instance['youtube'] ) : '';
		$instance['linkedIn'] 	= ( ! empty( $new_instance['linkedIn'] ) ) 	? strip_tags( $new_instance['linkedIn'] ) : '';
		$instance['linkedIn'] 	= ( ! empty( $new_instance['linkedIn'] ) ) 	? strip_tags( $new_instance['linkedIn'] ) : '';
		$instance['icon_ui'] 	= ( ! empty( $new_instance['icon_ui'] ) ) 	? $new_instance['icon_ui'] : '';


		return $instance;
	}
} // Class wpb_widget ends here




// OPENING AND CLOSING HOURS
// Register and load the widget
function opening_hours_widget() {
    register_widget( 'hours_widget' );
}
add_action( 'widgets_init', 'opening_hours_widget' );
 
// Creating the widget 
class hours_widget extends WP_Widget {
 
	function __construct() {
		
		parent::__construct(
		 
			// Base ID of your widget
			'hours_widget', 
			 
			// Widget name will appear in UI
			__('Opening Hours widget', 'wpb_widget_domain'), 
			 
			// Widget description
			array( 'description' => __( 'Opening And Closing Time Widget', 'wpb_widget_domain' ), ) 
		);
	}
	 
	// Creating widget front-end
	public function widget( $args, $instance ) {
		$title 					= apply_filters( 'widget_title', $instance['title'] );
		$opening_closing_hours  = json_decode( $instance['opening_closing_hours'], true );
		

		// before and after widget arguments are defined by themes
		echo $args['before_widget'];
		if ( ! empty( $title ) )
		echo $args['before_title'] . $title . $args['after_title'];

		if ( ! empty( $opening_closing_hours ) ){
			echo '<table class="table">';
			foreach ($opening_closing_hours as $key => $value) {
				echo '<tr>';
				echo '<td style="text-transform:capitalize;">'.$key.'</td>';
				echo '<td>'.$value['opening'].'</td>';
				echo "<td> To </td>";
				echo '<td>'.$value['closing'].'</td>';
				echo '</tr>';
			}
			echo '</table>';
		}

		// This is where you run the code and display the output
		echo $args['after_widget'];
	}
	        

	// Widget Backend 
	public function form( $instance ) {
		$title 	= ( isset( $instance[ 'title' ]) ) ? $instance[ 'title' ] : '';
		$value 	= ( isset( $instance[ 'opening_closing_hours' ]) ) ? json_decode($instance[ 'opening_closing_hours' ], true) : '';
		$weekdays = array('Mon','Tue','Wed','Thu','Fri','Sat','Sun');

	// Widget admin form
		?>
		<p>
			<label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
			<input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
			<h4>Opening And Closing Hours</h4>
			<table>
				<tr>
					<th>Weekdays</th>
					<th>Start Time</th>
					<th>Closing Time</th>
				</tr>
				<?php 
				foreach($weekdays as $day)
				{	
					?>
				<tr>
					<td style="text-transform:capitalize;"><?php echo $day; ?></td>
					<td><input type="time" class="widefat" name="<?php echo $this->get_field_name( "opening_closing_hours[$day][opening]" ); ?>" value="<?php echo esc_attr( $value[$day]['opening'] ); ?>" /></td>
					<td><input type="time" class="widefat" name="<?php echo $this->get_field_name( "opening_closing_hours[$day][closing]" ); ?>" value="<?php echo esc_attr( $value[$day]['closing'] ); ?>" /></td>
				</tr>
					<?php 
				}
					?>
			</table>
		</p>
		<?php	
	}
	     
	// Updating widget replacing old instances with new
	public function update( $new_instance, $old_instance ) {

		$instance 				 = array();
		$instance['title'] 		 = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
		$instance['opening_closing_hours'] = ( ! empty( $new_instance['opening_closing_hours'] ) ) ?  json_encode( $new_instance['opening_closing_hours'] ) : '';
 		
		return $instance;
	}
} // Class wpb_widget ends here



// Function to add custom text to posts and pages
//   function custom_shortcode() {
//     return '<div style="color:#999; font-weight:700; font-size:24px;">'.'Hello Dhruvil'.'</div>';
// }
// add_shortcode('custom', 'custom_shortcode');


// Function to add custom text to posts and pages
// function number_shortcode( $atts, $content = null ) {
// 	extract(shortcode_atts(array(
//         'limit' => 5,
//     ), $atts));
// 	$html = '';
// 	for ($i=1; $i <= $limit; $i++) { 
// 		$html .='<div style="color:#999; font-size:24px;">'.$i.'</div>';	
// 	}

// 	$html .= '<p>'.$content.'</p>';
// 	return $html;
// }
// add_shortcode('number_series', 'number_shortcode');




// Function to add custom event to posts and pages
function event_shortcode( $atts, $content = null ) {
  	extract(shortcode_atts(
  		array(
	        'limit' 	=> 10,
	        'order' 	=> 'ASC',
	        'class' 	=> 'event',
	    ), $atts)
  	);

    // The Query
	$the_query = new WP_Query( array( 'post_type' => 'event', 'order' => $order, 'posts_per_page' => $limit ) );
 	$html 	.='<div class="row">';
    $html 	.='<div id="owl-carousel" class="owl-carousel owl-theme">';
   
    while ( $the_query->have_posts() ) : the_post();
        $the_query->the_post();
        $html 	.='<div class="pt-3 pb-3">';
        $html 	.='<div style="background:#f5f5f5; box-shadow:0px 0px 5px #c6c6c6; 			border-radius:6px; height:250px; width:320px;">';
        $html 	.='<div class="thumbnail">' . get_the_post_thumbnail() . '</div>';
        $html 	.='<h4 style="color:#333; margin-top:10px; text-align:center; 				text-transform:capitalize;" >
        			<a href="'.get_permalink().'">'.get_the_title().'</a></h4>';
        $html 	.='</div>';
        $html 	.='</div>';
	endwhile; 
   
    $html 	.='</div>';
    $html 	.='</div>';
    $html 	.='<script type="text/javascript">
			    	$(document).ready(function() {
			            $("#owl-carousel").owlCarousel({
						    loop:true,
						    margin:0,
						    responsiveClass:true,
						    responsive:{
						        0:{
						            items:1,
						            nav:true
						        },
						        600:{
						            items:2,
						            nav:false
						        },
						        1000:{
						            items:3,
						            nav:true,
						            loop:false
						        }
						    }
						})
					});	
		    	</script>';
	
    return $html;
}
add_shortcode('events', 'event_shortcode');


// EVENT WIDGET
// Register and load the widget
function event_load_widget() {
    register_widget( 'event_widget' );
}
add_action( 'widgets_init', 'event_load_widget' );
 
// Creating the widget 
class event_widget extends WP_Widget {
 
	function __construct() {
		
		parent::__construct(
		 
			// Base ID of your widget
			'event_widget', 
			 
			// Widget name will appear in UI
			__('Event Widget', 'event_widget_domain'), 
			 
			// Widget description
			array( 'description' => __( 'Event Widget For Display Events', 'event_widget_domain' ), ) 
		);
	}
	 
	// Creating widget front-end
	public function widget( $args, $instance ) {
		$title 				= apply_filters( 'widget_title', $instance['title'] );
		$per_page			= (! $instance['count']) ? 6 : $instance['count'];
		$order				= (! $instance['order']) ? 'DESC' : $instance['order'];
		$show_thumbnail		= ($instance['show_thumbnail']) ? true : false; 
		

		// before and after widget arguments are defined by themes
		echo $args['before_widget'];
		if ( ! empty( $title ) )
			echo $args['before_title'] . $title . $args['after_title'];


		// This is where you run the code and display the output
		$the_query = new WP_Query( array( 
									'post_type' 		=> 'event', 
									'order' 			=> $order, 
									'posts_per_page' 	=> $per_page 
									) 
								);
		
   		echo '<div class="thumbnail_list pt-3">';
   		echo '<div style="display: grid;margin-left: 30px;">';
	    if ( $the_query->have_posts() ) : 
	    	while ( $the_query->have_posts() ) : $the_query->the_post();
	    		echo '<div class="caption" style="margin-bottom:15px;">';
		        if ($show_thumbnail) {
		        	echo '<div class="thumb">';
		        	echo '<div class="thumbnail" style="height: 50px; float:left;width: 50px;background: #d2d2d2;">' . get_the_post_thumbnail(get_the_ID(),'thumbnail');
		        	echo '</div>';
		        	echo '</div>';
		        }
		        	echo '<div>';
			        echo '<div class="content" style="font-size:12px; float:left; text-transform:capitalize;">';
			        echo '<h6><a href="'.get_permalink().'">'.get_the_title().'</a></h6>'. get_the_date();
			        echo '</div>';			       
			        echo '</div>';	
			        echo '</div>';		       
			endwhile;
			wp_reset_postdata();
	  	endif;
	  	echo '</div>';
	  	echo '</div>';
		echo $args['after_widget'];
	}
	         
	
	// Widget Backend 
	public function form( $instance ) {
		$title 				= ( isset( $instance[ 'title' ]) ) 			? $instance[ 'title' ] : '';
		$count 				= ( isset( $instance[ 'count' ]) ) 			? $instance[ 'count' ] : '';
		$order 				= ( isset( $instance[ 'order' ]) ) 			? $instance[ 'order' ] : '';
		$show_thumbnail 	= ( isset( $instance[ 'show_thumbnail' ] ) && !empty($instance[ 'show_thumbnail' ])) ? $instance[ 'show_thumbnail' ] : '';


		// Widget admin form
		?>
		<p>
			<label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
			<input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
			<label for="<?php echo $this->get_field_id( 'count' ); ?>"><?php _e( 'Count:' ); ?></label> 
			<input class="widefat" id="<?php echo $this->get_field_id( 'count' ); ?>" name="<?php echo $this->get_field_name( 'count' ); ?>" type="text" value="<?php echo esc_attr( $count ); ?>" />
	  		<label for="<?php echo $this->get_field_id( 'order' ); ?>"><?php _e( 'Order:' ); ?></label> 
			<select class="form-control" id="order" style="width: 100%;" name="<?php echo $this->get_field_name( 'order' ); ?>">
				<option value="ASC" <?php echo ($order == 'ASC') ? 'selected': '';?> >ASC</option>
				<option value="DESC" <?php echo ($order == 'DESC') ? 'selected': '';?> >DESC</option>
			</select>
			<div class="checkbox">
			  <label><input type="checkbox" name="<?php echo $this->get_field_name( 'show_thumbnail' ); ?>" value="show_thumbnail" <?php echo ($show_thumbnail) ? 'checked': '';?>>Show Thumbnail</label>
			</div>
		</p>
		<?php 
	}
	     
	
	// Updating widget replacing old instances with new
	public function update( $new_instance, $old_instance ) {
		$instance 				 		= array();
		$instance['title'] 			 	= ( ! empty( $new_instance['title'] ) ) 		? strip_tags( $new_instance['title'] ) : '';
		$instance['count'] 		 		= ( ! empty( $new_instance['count'] ) ) 		? strip_tags( $new_instance['count'] ) : '';
		$instance['order'] 		 		= ( ! empty( $new_instance['order'] ) ) 		? strip_tags( $new_instance['order'] ) : '';
		$instance['show_thumbnail'] 	= ( ! empty( $new_instance['show_thumbnail'] ) ) 	? $new_instance['show_thumbnail'] : '';

		return $instance;
	}
} // Class wpb_widget ends here









require_once "custom-post-type-event.php";