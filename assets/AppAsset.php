<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
        'css/meanmenu.min.css',
        'css/animate.css',
        'css/nivo-slider.css',
        'css/owl.carousel.min.css',
        'css/slick.css',
        'css/jquery-ui.min.css',
        'css/font-awesome.min.css',
        'css/jquery.fancybox.css',
        'css/bootstrap.min.css',
        'css/default.css',
        'style.css',
        'css/responsive.css',
        'css/cart.css',
    ];
    public $js = [
        'js/vendor/jquery-1.12.4.min.js',
        'js/vendor/modernizr-2.8.3.min.js',
        'js/jquery.meanmenu.min.js',
        'js/jquery.scrollUp.js',
        'js/owl.carousel.min.js',
        'js/slick.min.js',
        'js/wow.min.js',
        'js/jquery-ui.min.js',
        'js/jquery.countdown.min.js',
        'js/jquery.nivo.slider.js',
        'js/jquery.fancybox.min.js',
        'js/bootstrap.min.js',
        'js/popper.js',
        'js/plugins.js',
        'js/main.js',
        'js/script.js',
    ];
    public $depends = [
        // отключаем yii2 bootstrap

//        'yii\web\YiiAsset',
//        'yii\bootstrap\BootstrapAsset',
    ];
}
