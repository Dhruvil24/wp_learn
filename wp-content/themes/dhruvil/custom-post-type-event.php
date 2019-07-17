<?php
if ( ! function_exists('wp_create_event_post_type') ) {

	// Register Custom Post Type
	function wp_create_event_post_type() {

		/*
		* @ Register post type "Event" 
		*/
		$labels = array(
			'name'                  => _x( 'Events', 'Post Type General Name', '' ),
			'singular_name'         => _x( 'Event', 'Post Type Singular Name', '' ),
			'menu_name'             => __( 'Event', '' ),
			'name_admin_bar'        => __( 'Event', '' ),
			'archives'              => __( 'Event Archives', '' ),
			'attributes'            => __( 'Event Attributes', '' ),
			'parent_item_colon'     => __( 'Parent Item:', '' ),
			'all_items'             => __( 'All Events', '' ),
			'add_new_item'          => __( 'Add New Event', '' ),
			'add_new'               => __( 'Add New', '' ),
			'new_item'              => __( 'New Event', '' ),
			'edit_item'             => __( 'Edit Event', '' ),
			'update_item'           => __( 'Update Event', '' ),
			'view_item'             => __( 'View Event', '' ),
			'view_items'            => __( 'View Events', '' ),
			'search_items'          => __( 'Search Event', '' ),
			'not_found'             => __( 'Not found', '' ),
			'not_found_in_trash'    => __( 'Not found in Trash', '' ),
			'items_list'            => __( 'Events list', '' ),
			'items_list_navigation' => __( 'Events list navigation', '' ),
			'filter_items_list'     => __( 'Filter events list', '' ),
		);
		$args = array(
			'label'                 => __( 'Event', '' ),
			'description'           => __( 'Event post type for manage events', '' ),
			'labels'                => $labels,
			'supports'              => array( 'title', 'editor', 'thumbnail', 'comments', 'custom-fields' ),
			'hierarchical'          => false,
			'public'                => true,
			'show_ui'               => true,
			'show_in_menu'          => true,
			'menu_position'         => 5,
			'menu_icon'             => 'dashicons-buddicons-replies',
			'show_in_admin_bar'     => true,
			'show_in_nav_menus'     => true,
			'can_export'            => true,
			'has_archive'           => true,
			'exclude_from_search'   => false,
			'publicly_queryable'    => true,
			'capability_type'       => 'post',
			'show_in_rest'          => false,
		);
		register_post_type( 'event', $args );

		/*
		* @ Register taxonomy "Event Type" 
		*/

		$labels = array(
			'name'                       => _x( 'Event Types', 'Taxonomy General Name', '' ),
			'singular_name'              => _x( 'Event Type', 'Taxonomy Singular Name', '' ),
			'menu_name'                  => __( 'Event Type', '' ),
			'all_items'                  => __( 'All Event Types', '' ),
			'parent_item'                => __( 'Parent Event Type', '' ),
			'parent_item_colon'          => __( 'Parent Event Type:', '' ),
			'new_item_name'              => __( 'New Event Type Name', '' ),
			'add_new_item'               => __( 'Add New Event Type', '' ),
			'edit_item'                  => __( 'Edit Event Type', '' ),
			'update_item'                => __( 'Update Event Type', '' ),
			'view_item'                  => __( 'View Event Type', '' ),
			'separate_items_with_commas' => __( 'Separate Event Types with commas', '' ),
			'add_or_remove_items'        => __( 'Add or remove Event Types', '' ),
			'choose_from_most_used'      => __( 'Choose from the most used', '' ),
			'popular_items'              => __( 'Popular Event Types', '' ),
			'search_items'               => __( 'Search Event Types', '' ),
			'not_found'                  => __( 'Not Found', '' ),
			'no_terms'                   => __( 'No Event Types', '' ),
			'items_list'                 => __( 'Event Types list', '' ),
			'items_list_navigation'      => __( 'Event Types list navigation', '' ),
		);
		$args = array(
			'labels'                     => $labels,
			'hierarchical'               => true,
			'public'                     => true,
			'show_ui'                    => true,
			'show_admin_column'          => true,
			'show_in_nav_menus'          => true,
			'show_tagcloud'              => true,
			'show_in_rest'               => false,
		);
		register_taxonomy( 'event_type', array( 'event' ), $args );

	}
	add_action( 'init', 'wp_create_event_post_type', 0 );

}



	

