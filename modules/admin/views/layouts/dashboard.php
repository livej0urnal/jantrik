<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\DashAsset;

DashAsset::register($this);
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>Dashboard</title>
    <?= Html::csrfMetaTags() ?>
    <?php $this->head() ?>
    <!-- Favicon -->
    <link href="/dashboard/assets/img/brand/favicon.png" rel="icon" type="image/png">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!-- Icons -->
    <link href="/dashboard/assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
    <link href="/dashboard/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
    <!-- Argon CSS -->
    <link type="text/css" href="/dashboard/assets/css/argon.css?v=1.0.0" rel="stylesheet">
</head>

<body>

<?php $this->beginBody() ?>
<!-- Sidenav -->
<nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    <div class="container-fluid">
        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">

            <!-- Navigation -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/admin">
                        <i class="ni ni-tv-2 text-primary"></i> Dashboard
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/order/index">
                        <i class="ni ni-check-bold text-primary"></i> Orders
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/slider/index" class="nav-link">
                        <i class="ni ni-tv-2 text-orange"></i> Sliders
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/banners/index" class="nav-link">
                        <i class="ni ni-image text-info"></i> Banners
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/lang/index" class="nav-link">
                       <i class="ni ni-world-2 text-primary"></i> Langs
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/category/index" class="nav-link">
                        <i class="ni ni-align-left-2 text-orange"></i> Blog category
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/article/index" class="nav-link">
                        <i class="ni ni-archive-2 text-orange"></i> Articles
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/translate/index" class="nav-link">
                        <i class="ni ni-world-2 text-orange"></i> Articles Langs
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/products/index" class="nav-link">
                        <i class="ni ni-box-2 text-yellow"></i> Products
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/images/index" class="nav-link">
                        <i class="ni ni-album-2 text-yellow"></i> Image Products
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/perevod/index" class="nav-link">
                        <i class="ni ni-fat-add text-yellow"></i> Products Langs
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/ranks/index" class="nav-link">
                        <i class="ni ni-align-left-2 text-yellow"></i> Category
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/brands/index" class="nav-link">
                        <i class="ni ni-bag-17 text-yellow"></i> Brands
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/admin/user/index" class="nav-link">
                        <i class="ni ni-circle-08 text-pink"></i> Users
                    </a>
                </li>

            </ul>
            <!-- Divider -->
            <hr class="my-3">

        </div>
    </div>
</nav>
<!-- Main content -->
<div class="main-content">
    <!-- Header -->
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8" style="padding-top: 0px!important;">
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-12">
                <div class="card-shadow">
                    <div class="card shadow">
                        <div class="card-body">
                            <?= $content ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $this->endBody() ?>
</body>

</html>

<?php $this->endPage() ?>