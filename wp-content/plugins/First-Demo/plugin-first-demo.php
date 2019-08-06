<?php
/**
 * Plugin Name:First Demo Plugin
 * Plugin URI: http://localhost/dhruvil/wp/wp_learn/wp-admin/plugins/First-Demo
 * Description: The very first plugin that I have ever created.
 * Version: 1.0
 * Author: Dhruvil
 * Author URI: 
 */

// constants
define( "PLUGIN_DIR_PATH" , plugin_dir_path(__FILE__) );
define( "PLUGIN_URL" , plugins_url() );
define( "PLUGIN_VERSION" , "1.0" );


// ADD ADMIN MENU
add_action("admin_menu", "addMenu");
function addMenu(){
	add_menu_page( 
		"Example Options" , //page_title 
		"Custom Menu" , //menu_title
		"manage_options" , //capability 
		"example-options" , //menu_slug
		"add_new_function" , //function
		"dashicons-tickets" , //icon_url
		6 //position 
	);
	add_submenu_page( 
		"example-options" , //parent_slug
		"Add New" , //page_title
		"Add New" , //menu_title
		"manage_options" , //capability
		"example-options" , //menu_slug
		"add_new_function" //function
	);
	add_submenu_page( 
		"example-options" , //parent_slug
		"All Pages" , //page_title
		"All Pages" , //menu_title
		"manage_options" , //capability
		"all_pages" , //menu_slug
		"all_page_function" //function
	);
}

function add_new_function(){
	// add new function
	include_once PLUGIN_DIR_PATH."/views/add-new.php";
}
function all_page_function(){
	// all page function
	include_once PLUGIN_DIR_PATH."/views/all-page.php";
}


// INCLUDE CSS AND SCRIPTS
function first_demo_plugin_assets(){
	// css and js files
	wp_enqueue_style(
		"style" , // unique name for css file
		PLUGIN_URL."../First-Demo/assets/css/style.css" , // css file path 
		'' , // dependency on other files
		PLUGIN_VERSION // plugin version number
	);

	wp_enqueue_script(
		"style" , // unique name for js file
		PLUGIN_URL."../First-Demo/assets/js/script.js" , // js file path 
		'' , // dependency on other files
		PLUGIN_VERSION , // plugin version number
		true
	);
}
add_action( "init" , "first_demo_plugin_assets" );


// REGISTER PLUGIN
function first_demo_plugin_tables(){
	global $wpdb;
	require_once(ABSPATH . 'wp-admin/includes/upgrade.php');

	if(count($wpdb->get_var('SHOW TABLES LIKE "table_name"')) == 0 ){
		$sql_query_to_create_table = 
				"CREATE TABLE `first_demo_plugin` (
						 `id` int(11) NOT NULL AUTO_INCREMENT,
						 `name` varchar(150) DEFAULT NULL,
						 `email` varchar(150) DEFAULT NULL,
						 `phone` varchar(150) DEFAULT NULL,
						 `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
						 PRIMARY KEY (`id`)
						) ENGINE=InnoDB DEFAULT CHARSET=utf8";

		dbDelta($sql_query_to_create_table);
	} 
}
register_activation_hook(__FILE__,'first_demo_plugin_tables');


// DEACTIVATE OR UNINSTALL PLUGIN
function deactivate_table(){
	// uninstall muysql code
	global $wpdb;
	$wpdb->query('DROP TABLE if Exists first_demo_plugin');	
}
register_deactivation_hook(__FILE__,'deactivate_table');