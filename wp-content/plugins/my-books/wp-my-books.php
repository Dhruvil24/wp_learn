<?php
/**
 * Plugin Name: My Book
 * Plugin URI: http://localhost/dhruvil/wp/wp_learn/wp-admin/plugins/my-books
 * Description: This is my custom Book Plugin
 * Author: Dhruvil Chauhan
 * Author URI:
 * Version: 1.0
 */

    if(!defined("ABSPATH"))
        exit;
    if(!defined("MY_BOOK_PLUGIN_DIR_PATH"))
        define("MY_BOOK_PLUGIN_DIR_PATH",plugin_dir_path(__FILE__));
    if(!defined("MY_BOOK_PLUGIN_URL"))
        define("MY_BOOK_PLUGIN_URL",plugins_url()."/my-books");
    define( "PLUGIN_VERSION" , "1.0" );

//    echo "MY PLUGIN PATH : ".MY_BOOK_PLUGIN_DIR_PATH;
//    echo "<br>";
//    echo "MY PLUGIN URL : ".MY_BOOK_PLUGIN_URL;
//    die;

    function my_book_include_assets(){
        //styles
        wp_enqueue_style( "bootstrap", MY_BOOK_PLUGIN_URL."/assets/css/bootstrap.min.css", "" );
        wp_enqueue_style( "datatable", MY_BOOK_PLUGIN_URL."/assets/css/jquery.dataTables.min.css", "" );
        wp_enqueue_style( "notifybar", MY_BOOK_PLUGIN_URL."/assets/css/jquery.notifyBar.css", "" );
        wp_enqueue_style( "style", MY_BOOK_PLUGIN_URL."/assets/css/style.css", "" );
        //scripts
        wp_enqueue_script( "jquery" );
        wp_enqueue_script( "bootstrap.min.js", MY_BOOK_PLUGIN_URL."/assets/js/bootstrap.min.js", "", true );
        wp_enqueue_script( "jquery.validate.min.js", MY_BOOK_PLUGIN_URL."/assets/js/jquery.validate.min.js", "", true );
        wp_enqueue_script( "jquery.dataTables.min.js", MY_BOOK_PLUGIN_URL."/assets/js/jquery.dataTables.min.js", "", true );
        wp_enqueue_script( "jquery.notifyBar.js", MY_BOOK_PLUGIN_URL."/assets/js/jquery.notifyBar.js", "", true );
        wp_enqueue_script( "script.js", MY_BOOK_PLUGIN_URL."/assets/js/script.js", "", true );
        wp_localize_script( "script.js", "mybookajaxurl", admin_url("admin-ajax.php") );
    }
    add_action( "init", "my_book_include_assets" );


    add_action("admin_menu", "my_book_plugin_menus");
    function my_book_plugin_menus(){
        add_menu_page( "My Book" , "My Book" , "manage_options" , "book-list" , "my_book_list" , "dashicons-book-alt" , 30 );
        add_submenu_page( "book-list", "Book List", "Book List", "manage_options", "my-book-list", "my-book-list" );
    }
?>