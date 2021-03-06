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
function theme_styles(){ 
	wp_register_style( 'fontawesome', 'http:////maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' );
	
	wp_enqueue_style( 'fontawesome');
	wp_enqueue_style( 'style', get_template_directory_uri() . '/style.css');
	wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/css/bootstrap.css');
	wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/js/bootstrap.min.js');
}
add_action('wp_enqueue_scripts', 'theme_styles');
// END CSS AND SCRIPTS


// HIDE ADMINBAR
add_filter('show_admin_bar', '__return_false');
// END


// navBar
function register_custom_nav_menus() {
	register_nav_menus( array(
		'header-menu' => __( 'Header Menu' ),
	) );
}
add_action( 'after_setup_theme', 'register_custom_nav_menus' );
// end navBar


// sideBar
/* Register the 'primary' sidebar. */
function my_register_sidebar() {
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


// FOOTER
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
// END FOOTER


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

		$title 		= ( isset( $instance[ 'title' ]     ) )		? $instance[ 'title' ] : '';
		$facebook 	= ( isset( $instance[ 'facebook' ]  ) ) 	? $instance[ 'facebook' ] : '';
		$instagram 	= ( isset( $instance[ 'instagram' ] ) )  	? $instance[ 'instagram' ] : '';
		$youtube 	= ( isset( $instance[ 'youtube' ]   ) )		? $instance[ 'youtube' ] : '';
		$linkedIn 	= ( isset( $instance[ 'linkedIn' ]  ) )		? $instance[ 'linkedIn' ] : '';
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
  function custom_shortcode() {
	return '<div style="color:#999; font-weight:700; font-size:24px;">'.'Hello Dhruvil'.'</div>';
}
add_shortcode('custom', 'custom_shortcode');


// Function to add custom text to posts and pages
function number_shortcode( $atts, $content = null ) {
	extract(shortcode_atts(array(
		'limit' => 5,
	), $atts));
	$html = '';
	for ($i=1; $i <= $limit; $i++) { 
		$html .='<div style="color:#999; font-size:24px;">'.$i.'</div>';	
	}

	$html .= '<p>'.$content.'</p>';
	return $html;
}
add_shortcode('number_series', 'number_shortcode');


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
	$the_query = new WP_Query( array( 
						'post_type' 	 => 'event',
				 		'order' 		 => $order, 
				 		'posts_per_page' => $limit 
				 	) );

    $html   .='';
	$html 	.='<div class="row">';
	$html 	.='<div id="owl-carousel" class="owl-carousel owl-theme">';
	while ( $the_query->have_posts() ) : the_post();
		$the_query->the_post();
		
		$html   .='<div style="margin-right:20px;">';
		$html 	.='<div class="pt-3 pb-3">';
		$html 	.='<div style="background:#f5f5f5; box-shadow:0px 0px 5px #c6c6c6; border-radius:6px;">';
		$html 	.='<div class="thumbnail">'.get_the_post_thumbnail().'</div>';
		$html 	.='<h4 style="color:#333; margin-top:10px; text-align:center; text-transform:capitalize;"> <a href="'.get_permalink().'">'.get_the_title().'</a></h4>';
		$html 	.='<h6 style="color:#111; text-align:center;">Location: '.get_post_meta( get_the_ID(), '_location' , true ).'</h6>';
		$html 	.='<div style="display:flex;">';
		$html 	.='<h6 class="col-md-8" style="color:#111; font-size:15px; text-align:left; padding:0;">Start_Date: '.get_post_meta( get_the_ID(), '_start_date' , true ).'</h6>';
				
				if(get_post_meta( get_the_ID(), '_entry' , true ) == 'Royal'){
					$html 	.='<h6 class="col-md-4"  style="font-size:15px; color:#111; text-align:left; padding:0;">Fees:Rs.'.get_post_meta( get_the_ID(), '_amount' , true ).'</h6>';
				}
				else{	
					$html 	.='<h6 style="color:#111; font-size:15px; text-align:center;">Free Entry</h6>';
				}
		$html 	.='</div>';
		$html 	.='</div>';
		$html 	.='</div>';
		$html 	.='</div>';
	endwhile; 
	$html 	.='</div>';
	$html 	.='</div>';

	$html 	.='<script type="text/javascript">
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
					echo '<h6><a href="'.get_permalink().'">'.get_the_title().'</a></h6>'.get_the_date();
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
		$title 			= ( isset( $instance[ 'title' ]) ) 	? $instance[ 'title' ] : '';
		$count 			= ( isset( $instance[ 'count' ]) ) 	? $instance[ 'count' ] : '';
		$order 			= ( isset( $instance[ 'order' ]) ) 	? $instance[ 'order' ] : '';
		$show_thumbnail = ( isset( $instance[ 'show_thumbnail' ] ) && !empty($instance[ 'show_thumbnail' ])) ? $instance[ 'show_thumbnail' ] : '';


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
		$instance 				 	= array();
		$instance['title'] 			= ( ! empty( $new_instance['title']  ) ) ? strip_tags( $new_instance['title'] ) : '';
		$instance['count'] 		 	= ( ! empty( $new_instance['count']  ) ) ? strip_tags( $new_instance['count'] ) : '';
		$instance['order'] 		 	= ( ! empty( $new_instance['order']  ) ) ? strip_tags( $new_instance['order'] ) : '';
		$instance['show_thumbnail'] = ( ! empty( $new_instance['show_thumbnail'] ) ) 	? $new_instance['show_thumbnail'] : '';

		return $instance;
	}
} // Class wpb_widget ends here


// META BOX
function add_your_fields_meta_box() {
	add_meta_box(
		'your_fields_meta_box', // $id
		'Event Title', // $title
		'event_meta_box_callback', // $callback
		'event' // $screen	
	);
}
add_action( 'add_meta_boxes', 'add_your_fields_meta_box' );




function event_meta_box_callback($post){
	// Add a nonce field so we can check for it later.
	wp_nonce_field( 'event_notice_nonce', 'event_notice_nonce' );

	$location 	 = get_post_meta( get_the_ID(), '_location', true );
	$start_date  = get_post_meta( get_the_ID(), '_start_date', true );
	$entry 		 = get_post_meta( get_the_ID(), '_entry', true );
	$amount 	 = get_post_meta( get_the_ID(), '_amount', true );


	$event_html  = ''; 
	$event_html .='<div style="display:flex;">';
	$event_html .='<div style="margin-bottom:0; width:40%;">';
	$event_html .='<label>Location:</lable>';
	$event_html .='<input type="text" style="width:100%;" id="location" name="location" 
					value="'.esc_attr( $location ).'">';
	$event_html .='<label>Start_Date:</lable>';
	$event_html .='<input style="width:100%;" type="date" id="date" name="date" 
					value="'.esc_attr( $start_date ).'">';
	$event_html .='<label>Entry:</lable>';
	$event_html .='<select name="entry" onchange="myFun(this)" style="width:100%;">';
	$event_html .='<option value="Free" '.esc_attr($entry == 'Free' ? 'selected' : '').' >Free</option>';   
	$event_html .='<option value="Royal" '.esc_attr($entry == 'Royal' ? 'selected' : '').' >Royal</option>';
	$event_html .='</select>';   
	if($entry == 'Royal')
	{
		$event_html .='<div id="div1">Rs. <input type=text id=amount style=width:100% name=amount 
						value='.esc_attr( $amount ).'></div>';
	}
	else
	{
		$event_html .='<div id="div1"></div>';
	}
	$event_html .='</div>';
	$event_html .='</div>';
	$event_html .='<div>';
	$event_html .='<script>
					function myFun(entry){
						if(entry.value == "Royal"){
						$("#div1").html("Rs. <input type=text id=amount style=width:100% name=amount value='.esc_attr( $amount ).'>");
						}
						else
						{
							$("#div1").html("");
						}
					}       
				  </script>';
	$event_html .='</div>';
	echo $event_html;
}



/**
 * When the post is saved, saves our custom data.
 *
 * @param int $post_id
 */
function save_event_notice_meta_box_data( $post_id ) {

	// Check if our nonce is set.
	if ( ! isset( $_POST['event_notice_nonce'] ) ) {
		return;
	}

	// Verify that the nonce is valid.
	if ( ! wp_verify_nonce( $_POST['event_notice_nonce'], 'event_notice_nonce' ) ) {
		return;
	}

	// If this is an autosave, our form has not been submitted, so we don't want to do anything.
	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
		return;
	}

	// Check the user's permissions.
	if ( isset( $_POST['post_type'] ) && 'event' == $_POST['post_type'] ) 
	{
		if ( ! current_user_can( 'edit_page', $post_id ) ) {
			return;
		}
	}
	else 
	{
		return;
	}


	$location 	 = sanitize_text_field( $_POST['location'] );
	$start_date  = sanitize_text_field( $_POST['date'] );
	$entry 		 = sanitize_text_field( $_POST['entry'] );
	$amount		 = sanitize_text_field( $_POST['amount'] );


	// Update the meta field in the database.
	update_post_meta( $post_id, '_location', $location );
	update_post_meta( $post_id, '_start_date', $start_date );
	update_post_meta( $post_id, '_entry', $entry );
	update_post_meta( $post_id, '_amount', $amount );
}
add_action( 'save_post', 'save_event_notice_meta_box_data' );


// GRID SHORTCODE
function event_grid_shortcode( $atts, $content = null ) {
	extract(shortcode_atts(
		array(
			'column' 	=> 4,
		), $atts)
	);
	$class = 'column-4';
	if($column <= 6 && $column >= 2){
		$class = 'column-'.$column;
	}

	// The Query
	$the_query = new WP_Query( array( 'post_type' => 'event') );
	$html 	.='<div class="row grid '.$class.'">';
		while ( $the_query->have_posts() ) : the_post();
			$the_query->the_post();
			$html 	.='<div class="item">';
			$html 	.='<div class="bg-grid" style="background:#f5f5f5;box-shadow:0px 0px 5px #c6c6c6;border-radius:6px;">';
			$html   .='<div class="grid-thumbnail"style="padding:5px;">'.get_the_post_thumbnail().'</div>';
			$html 	.='<h6 style="color:#333; text-align:center; text-transform:capitalize;">
						<a href="'.get_permalink().'">'.get_the_title().'</a></h6>';
			$html 	.='</div>';
			$html 	.='</div>';
		endwhile; 
	$html 	.='</div>';
	
	return $html;
}
add_shortcode('event_grid', 'event_grid_shortcode');


// EVENT GALLERY WIDGET
// Register and load the widget
function event_gallery_load_widget() {
	register_widget( 'event_gallery_widget' );
}
add_action( 'widgets_init', 'event_gallery_load_widget' );
 
// Creating the widget 
class event_gallery_widget extends WP_Widget {
 
	function __construct() {
		
		parent::__construct(
		 
			// Base ID of your widget
			'event_gallery_widget', 
			 
			// Widget name will appear in UI
			__('Event Gallery Widget', 'event_gallery_widget_domain'), 
			 
			// Widget description
			array( 'description' => __( 'Event Gallery Widget For Display Events Images', 'event_gallery_widget_domain' ), ) 
		);
	}
	 
	// Creating widget front-end
	public function widget( $args, $instance ) {

		$title 			= apply_filters( 'widget_title', $instance['title'] );
		$count 			= (! $instance['count'] ) ?   6    : $instance['count'];
		$order			= (! $instance['order'] ) ? 'DESC' : $instance['order'];
		$grid			= (! $instance['grid'] ) ?   3    : $instance['grid'];
		$icon_gallery 	= $instance['icon_gallery'];

		// before and after widget arguments are defined by themes
		echo $args['before_widget'];
		if ( ! empty( $title ) )
			echo $args['before_title'] . $title . $args['after_title'];


		// This is where you run the code and display the output
		$the_query = new WP_Query( array( 
							'post_type' 	=> 'event', 
							'order' 		=> $order, 
							'gird' 			=> $grid, 
							'posts_per_page'=> $count
							) 
						);
		if($grid <= 6 && $grid >= 2){
			$class = 'column-'.$grid;
		}

		echo '<div class="row gallery-grid '.$class.'" style="margin:0;">';
		while ( $the_query->have_posts() ) : the_post();
			$the_query->the_post();
			echo '<div class="item">';
			echo '<div class="bg '.$icon_gallery.'">';
			echo '<div class="grid-thumbnail" style="padding:3px;"><a  data-fancybox="grid-thumbnail" rel="fancybox-button" data-width="750" data-height="500" href="'.get_the_post_thumbnail_url().'"><img src="'.get_the_post_thumbnail_url().'" /></a></div>';
			echo '</div>';
			echo '</div>';
		endwhile;

		echo '</div>';
		// wp_reset_postdata();
		echo $args['after_widget'];			
	}

	
	// Widget Backend 
	public function form( $instance ) {

		$title			= ( isset( $instance[ 'title' ] ) ) 	? $instance[ 'title' ] : '';
		$count 			= ( isset( $instance[ 'count' ] ) ) 	? $instance[ 'count' ] : '';
		$order			= ( isset( $instance[ 'order' ] ) ) 	? $instance[ 'order' ] : '';
		$grid			= ( isset( $instance[ 'grid' ]  ) ) 	? $instance[ 'grid' ]  : '';
		$icon_gallery 	= ( isset( $instance[ 'icon_gallery' ] ) && !empty($instance[ 'icon_gallery' ])) ? $instance[ 'icon_gallery' ] : 'rounded';

		// Widget admin form
		?>
		<div>
			<label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
			<input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
			<label for="<?php echo $this->get_field_id( 'count' ); ?>"><?php _e( 'Count:' ); ?></label> 
			<select class="form-control" id="count" style="width: 100%;" name="<?php echo $this->get_field_name( 'count' ); ?>">
				<option value="3"  <?php echo ($count == '3')  ? 'selected' : '';?> >3  </option>
				<option value="6"  <?php echo ($count == '6')  ? 'selected' : '';?> >6  </option>
				<option value="9"  <?php echo ($count == '9')  ? 'selected' : '';?> >9  </option>
				<option value="12" <?php echo ($count == '12') ? 'selected' : '';?> >12 </option>
				<option value="16" <?php echo ($count == '16') ? 'selected' : '';?> >16 </option>
			</select>			
			<label for="<?php echo $this->get_field_id( 'order' ); ?>"><?php _e( 'Order:' ); ?></label> 
			<select class="form-control" id="order" style="width: 100%;" name="<?php echo $this->get_field_name( 'order' ); ?>">
				<option value="ASC"  <?php echo ($order == 'ASC')  ? 'selected' : '';?> >ASC </option>
				<option value="DESC" <?php echo ($order == 'DESC') ? 'selected' : '';?> >DESC</option>
			</select>
			<label for="<?php echo $this->get_field_id( 'grid' ); ?>"><?php _e( 'Grid:' ); ?></label> 
			<select class="form-control" id="grid" style="width: 100%;" name="<?php echo $this->get_field_name( 'grid' ); ?>">
				<option value="2" <?php echo ($grid == '2')  ? 'selected' : '';?> >2 </option>
				<option value="3" <?php echo ($grid == '3')  ? 'selected' : '';?> >3 </option>
				<option value="4" <?php echo ($grid == '4')  ? 'selected' : '';?> >4 </option>
				<option value="5" <?php echo ($grid == '5')  ? 'selected' : '';?> >5 </option>
				<option value="6" <?php echo ($grid == '6')  ? 'selected' : '';?> >6 </option>
			</select>
			<div style="padding: 10px;">
				<input type="radio" name="<?php echo $this->get_field_name( 'icon_gallery' ); ?>" id="rounded" value="rounded" <?php echo ($icon_gallery == "rounded") ? 'checked': '';?>>Rounded
				<input type="radio" name="<?php echo $this->get_field_name( 'icon_gallery' ); ?>" id="square" value="square" <?php echo ($icon_gallery == "square") ? 'checked': '';?>>Square
			</div>
		</div>
		<?php 
	}
		 
	
	// Updating widget replacing old instances with new
	public function update( $new_instance, $old_instance ) {

		$instance 				 	= array();
		$instance['title'] 			= ( ! empty( $new_instance['title'] ) ) 		? strip_tags( $new_instance['title'] ) : '';
		$instance['count'] 		 	= ( ! empty( $new_instance['count'] ) ) 		? strip_tags( $new_instance['count'] ) : '';
		$instance['order'] 		 	= ( ! empty( $new_instance['order'] ) ) 		? strip_tags( $new_instance['order'] ) : '';
		$instance['grid'] 		 	= ( ! empty( $new_instance['grid'] ) ) 			? strip_tags( $new_instance['grid'] ) : '';
		$instance['icon_gallery'] 	= ( ! empty( $new_instance['icon_gallery'] ) ) 	? $new_instance['icon_gallery'] : '';
		return $instance;
	}
} // Class wpb_widget ends here



function demo_hook() {
	echo "Helloooooo";
}
add_action( 'pre_trackback_post', 'demo_hook' );

require_once "custom-post-type-event.php";