<?php
$wp_customize->add_setting('startGalleryImg1', array(
    'default' => get_stylesheet_directory_uri() . '/images/assets/default.jpg',
    'transport' => 'postMessage',
    'sanitize_callback' => 'esc_url_raw',

));

$wp_customize->add_control(
   new WP_Customize_Image_Control(
       $wp_customize,
       'startGalleryImg1',
       array(
           'label'      => __( '1st Start Gallery Img', 'theme_name' ),
            'description'      => __( 'Choose first Start Gallery Img', 'theme_name' ),
           'section'    => 'bloook_theme_section',
           'settings'   => 'startGalleryImg1',

       )
   )
)
?>