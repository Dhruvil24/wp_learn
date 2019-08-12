<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_demo' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'uQc5Txo:,(0P[c({:f47urA9N68>`qJlqV,9s7Od60q2479:x8U?wnM^I}df<9N+' );
define( 'SECURE_AUTH_KEY',  'JS&VdvJ} e{O GlOk_+Qeq4ipO({|N)HK&C||X.T19E;{daSEr5cSW7]5ORGJ)Ot' );
define( 'LOGGED_IN_KEY',    '[YT|k]R:>d~gB/6PnqI$c=)~w_4*`<P6~xASvo0+$t8u_~X*X-EVW~><QTD.H68C' );
define( 'NONCE_KEY',        '#47?39a}idpke5UyXLPTqRNIrL]1TT)&o=E*6/nGd]F?@yMO1Ya8H`-HiAi9)q%V' );
define( 'AUTH_SALT',        'fTb(p?Wd$R2?P^K3dhPD!19KzKkhMMk!$=os%T?9AnCEUzK R0U@MVi:51Mycb( ' );
define( 'SECURE_AUTH_SALT', 'ZM[yWj.s)lu-BH+7.q9`f31/IVk:OQlRl7DVu y?fNv!5HF.*5_wmL2[Dh8ahi>$' );
define( 'LOGGED_IN_SALT',   '=5GP!MnE|Q]{<^qzBGOF0w):wYIh<iX (+TPw|M{0!gD]ZIn@*1$ZRX7.yGHAjNQ' );
define( 'NONCE_SALT',       'CDXCOz(voCHLEpob3c,Fvr2-pJaUNQy_L{RE[4sz_11,V~Sv|$bec^R<7]ytohRt' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
