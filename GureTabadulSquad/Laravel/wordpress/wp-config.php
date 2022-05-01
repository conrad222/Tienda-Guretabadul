<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'guretabadul' );

/** Database username */
define( 'DB_USER', 'admin' );

/** Database password */
define( 'DB_PASSWORD', 'z' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'mXWt}z|B8L<BLzd|rC^05u<x~Y3.0H;(%/A*PHO(c|J=B6vvVgZ347kK|DYF35v^' );
define( 'SECURE_AUTH_KEY',  '$;;lJHQ$hDtjWa%DjpZ&}dv%Z+6@{A`4ovmrBkv_,|*z4n_GNQ,etgfu:fUY^&mB' );
define( 'LOGGED_IN_KEY',    'X4d+7|X*%pacdM,*QThjvOOC?qTUuU5f2nW>I-_&v6Xg&tM&KLoy{52OB#=0ZbNy' );
define( 'NONCE_KEY',        'L*5E4-#~5;L7=~14+D},t>SK*oi-KCDAp:&Cq!%[GxLA7Yhcc#5^rct[/phjIw D' );
define( 'AUTH_SALT',        'oW@/1z:IQcZ}J&Yr:C`ENI-;s|~ZFV 042PaADC,(kJ*Jor:>y JP*Jv#B5NGtpq' );
define( 'SECURE_AUTH_SALT', 'ye(!yTW>:yywRUmjhWn14g?i~LK_ |d^N{%y8bG6D<PBiPq/i^ou4F@zUE6V,k,M' );
define( 'LOGGED_IN_SALT',   'a@!.Y=5v/qjr1H9<brA3iN_A)V@Z4~Lz-{n|EW<)SI3}*dW/s[^*:,]L%rFKN$d`' );
define( 'NONCE_SALT',       'E3;G^{W1+L;wn=h:yU*H8^z2lU>!a&qT*H=`,gRVgqtqE4s)8J[E2LDTWmM8)C{f' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
