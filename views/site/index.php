<?php
    use yii\helpers\Html;
?>
<!-- Slider Area Start -->
<?php if(!empty($sliders)) : ?>
<div class="slider-area slider-style-three">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="slider-wrapper theme-default">

                    <!-- Slider Background  Image Start-->
                    <div id="slider" class="nivoSlider">
                        <?php foreach ($sliders as $slider) : ?>
                        <a href="shop.html">
                            <?= Html::img($slider->image , ['alt' => $slider->title , 'data-thumb' => $slider->image , 'title' => '#'.$slider->class] ) ?>
                        </a>
                        <?php endforeach; ?>
                    </div>
                    <!-- Slider Background  Image Start-->
                    <?php foreach ($sliders as $slider) : ?>
                    <div id="<?= $slider->class ?>" class="nivo-html-caption nivo-caption">
                        <div class="text-content-wrapper">
                            <div class="text-content">
                                <?php if(Yii::$app->language == 'en') : ?>
                                <h4 class="title2 wow bounceInLeft text-white mb-16" data-wow-duration="2s" data-wow-delay="0s"><?= $slider->title_eng ?></h4>
                                <h1 class="title1 wow bounceInRight text-white mb-16" data-wow-duration="2s" data-wow-delay="1s"><?= $slider->keywords_eng ?></h1>
                                <div class="banner-readmore wow bounceInUp mt-35" data-wow-duration="2s" data-wow-delay="2s">
                                    <a class="button slider-btn" href="<?= $slider->link ?>">Shop now</a>
                                </div>
                                <?php else: ?>
                                    <h4 class="title2 wow bounceInLeft text-white mb-16" data-wow-duration="2s" data-wow-delay="0s"><?= $slider->title ?></h4>
                                    <h1 class="title1 wow bounceInRight text-white mb-16" data-wow-duration="2s" data-wow-delay="1s"><?= $slider->keywords ?></h1>
                                    <div class="banner-readmore wow bounceInUp mt-35" data-wow-duration="2s" data-wow-delay="2s">
                                        <a class="button slider-btn" href="<?= $slider->link ?>">Купить</a>
                                    </div>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-md-4">
                <!-- Single Banner Start -->
                <div class="single-banner zoom mb-20">
                    <?php if(Yii::$app->language == 'en'): ?>

                        <a href="<?= $banners['0']['link'] ?>"><img src="<?= $banners['0']['img_eng'] ?>" alt="slider-banner"></a>
                    <?php else: ?>

                        <a href="<?= $banners['0']['link'] ?>"><img src="<?= $banners['0']['img'] ?>" alt="slider-banner"></a>
                    <?php endif; ?>
                </div>
                <!-- Single Banner End -->
                <!-- Single Banner Start -->
                <div class="single-banner zoom">
                    <?php if(Yii::$app->language == 'en'): ?>

                        <a href="<?= $banners['1']['link'] ?>"><img src="<?= $banners['1']['img_eng'] ?>" alt="slider-banner"></a>
                    <?php else: ?>

                        <a href="<?= $banners['1']['link'] ?>"><img src="<?= $banners['1']['img'] ?>" alt="slider-banner"></a>
                    <?php endif; ?>
                </div>
                <!-- Single Banner End -->
            </div>
        </div>
    </div>
</div>
<?php endif; ?>
<!-- Slider Area End -->
<!-- New Products Start -->
<div class="new-products pt-60">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-4 order-2">
                <?php if(!empty($sellers)) : ?>
                <div class="side-product-list" id="top_products">
                    <div class="group-title">
                        <h2><?= Yii::t('index' , 'Top products') ?></h2>
                    </div>
                    <!-- Deal Pro Activation Start -->
                    <div class="slider-right-content side-product-list-active ">
                        <!-- Double Product Start -->
                        <div class="double-pro">
                            <?php foreach ($sellers as $item) :?>
                            <!-- Single Product Start -->
                            <div class="single-product">
                                <div class="pro-img">
                                    <a href="<?= \yii\helpers\Url::to(['products/single', 'id' => $item->id]) ?>">
                                        <?= Html::img($item->image['0']['img'] , ['alt' => $item->content->title]) ?>
                                    </a>
                                </div>
                                <div class="pro-content">
                                    <div class="product-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <h4>
                                        <a href="<?= \yii\helpers\Url::to(['products/single', 'id' => $item->id]) ?>">
                                            <?= $item->content->title ?>
                                        </a>
                                    </h4>
                                    <p>
                                        <span class="price">
                                            $ <?= $item->price ?>
                                        </span>
                                        <?php if($item->last_price == null) : ?>
                                        <?php else: ?>
                                        <del class="prev-price">
                                            $ <?= $item->last_price ?>
                                        </del>
                                        <?php endif; ?>
                                    </p>
                                </div>
                                <?php if($item->sale == null) : ?>
                                <?php else: ?>

                                    <span class="sticker-new">-<?= $item->sale ?></span>
                                <?php endif; ?>
                            </div>
                            <!-- Single Product End -->
                            <?php endforeach; ?>
                        </div>
                        <!-- Double Product End -->
                    </div>
                    <!-- Deal Pro Activation End -->
                </div>
                <?php endif; ?>
            </div>
            <div class="col-xl-9 col-lg-8  order-lg-2">
                <!-- New Pro Content End -->
                <div class="new-pro-content">
                    <div class="pro-tab-title border-line">
                        <!-- Featured Product List Item Start -->
                        <ul class="nav product-list product-tab-list mb-30">
                            <li><a  class="active" data-toggle="tab" href="#new-arrival"><?= Yii::t('index' , 'New arrivals') ?></a></li>
                            <li><a data-toggle="tab" href="#toprated"><?= Yii::t('index' , 'Featured') ?></a></li>
                            <li><a data-toggle="tab" href="#new-arrivals"><?= Yii::t('index' , 'Top rated') ?></a></li>
                        </ul>
                        <!-- Featured Product List Item End -->
                    </div>
                    <div class="tab-content product-tab-content jump">
                        <?php if(!empty($new)) : ?>
                        <div id="new-arrival" class="tab-pane active">
                            <!-- New Products Activation Start -->
                            <div class="new-pro-active owl-carousel">
                                <?php foreach ($new as $item) : ?>
                                <!-- Single Product Start -->
                                <div class="single-product">
                                    <!-- Product Image Start -->
                                    <div class="pro-img">
                                        <a href="<?= \yii\helpers\Url::to(['products/single' , 'id' => $item->id]) ?>">
                                            <?= Html::img($item->image['0']['img'] , ['alt' => $item->content->title ]) ?>
                                        </a>
                                    </div>
                                    <!-- Product Image End -->
                                    <!-- Product Content Start -->
                                    <div class="pro-content">
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <h4>
                                            <a href="<?= \yii\helpers\Url::to(['products/single' , 'id' => $item->id]) ?>">
                                                <?= $item->content->title ?>
                                            </a>
                                        </h4>
                                        <p>
                                        <span class="price">
                                            $ <?= $item->price ?>
                                        </span>
                                            <?php if($item->last_price == null) : ?>
                                            <?php else: ?>
                                                <del class="prev-price">
                                                    $ <?= $item->last_price ?>
                                                </del>
                                            <?php endif; ?>
                                        </p>
                                        <div class="pro-actions">
                                            <div class="actions-secondary">
                                                <a href="wishlist.html" data-toggle="tooltip" title="<?= Yii::t('index' , 'Add to wishlist') ?>"><i class="fa fa-heart"></i></a>
                                                <a class="add-cart add-to-cart" href="<?= \yii\helpers\Url::to(['cart/add' , 'id' => $item->id]) ?>" data-id="<?= $item->id ?>"><?= Yii::t('index' , 'Add to cart')  ?></a>
                                                <a href="compare.html" data-toggle="tooltip" title="<?= Yii::t('index' , 'Add to compare')  ?>"><i class="fa fa-signal"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php if($item->sale == null) : ?>
                                    <?php else: ?>

                                        <span class="sticker-new">-<?= $item->sale ?></span>
                                    <?php endif; ?>
                                    <!-- Product Content End -->
                                </div>
                                <!-- Single Product End -->
                                <?php endforeach; ?>
                            </div>
                            <!-- New Products Activation End -->
                        </div>
                        <?php endif; ?>
                        <!-- New Products End -->
                        <?php if(!empty($featured) ) : ?>
                        <div id="toprated" class="tab-pane">
                            <!-- New Products Activation Start -->
                            <div class="new-pro-active owl-carousel">
                                <?php foreach ($featured as $item) : ?>
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="<?= \yii\helpers\Url::to(['products/single' , 'id' => $item->id]) ?>">
                                                <?= Html::img($item->image['0']['img'] , ['alt' => $item->content->title ]) ?>
                                            </a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="product-rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <h4>
                                                <a href="<?= \yii\helpers\Url::to(['products/single' , 'id' => $item->id]) ?>">
                                                    <?= $item->content->title ?>
                                                </a>
                                            </h4>
                                            <p>
                                        <span class="price">
                                            $ <?= $item->price ?>
                                        </span>
                                                <?php if($item->last_price == null) : ?>
                                                <?php else: ?>
                                                    <del class="prev-price">
                                                        $ <?= $item->last_price ?>
                                                    </del>
                                                <?php endif; ?>
                                            </p>
                                            <div class="pro-actions">
                                                <div class="actions-secondary">
                                                    <a href="wishlist.html" data-toggle="tooltip" title="<?= Yii::t('index' , 'Add to wishlist') ?>"><i class="fa fa-heart"></i></a>
                                                    <a class="add-cart add-to-cart" href="<?= \yii\helpers\Url::to(['cart/add' , 'id' => $item->id]) ?>" data-id="<?= $item->id ?>"><?= Yii::t('index' , 'Add to cart')  ?></a>
                                                    <a href="compare.html" data-toggle="tooltip" title="<?= Yii::t('index' , 'Add to compare')  ?>"><i class="fa fa-signal"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <?php if($item->sale == null) : ?>
                                        <?php else: ?>

                                            <span class="sticker-new">-<?= $item->sale ?></span>
                                        <?php endif; ?>
                                        <!-- Product Content End -->
                                    </div>
                                    <!-- Single Product End -->
                                <?php endforeach; ?>
                            </div>
                            <!-- New Products Activation End -->
                        </div>
                        <?php endif; ?>

                        <?php if(!empty($sellers)) : ?>
                            <div id="new-arrivals" class="tab-pane">
                                <!-- New Products Activation Start -->
                                <div class="new-pro-active owl-carousel">
                                    <?php foreach ($sellers as $item) : ?>
                                        <!-- Single Product Start -->
                                        <div class="single-product">
                                            <!-- Product Image Start -->
                                            <div class="pro-img">
                                                <a href="<?= \yii\helpers\Url::to(['products/single' , 'id' => $item->id]) ?>">
                                                    <?= Html::img($item->image['0']['img'] , ['alt' => $item->content->title ]) ?>
                                                </a>
                                            </div>
                                            <!-- Product Image End -->
                                            <!-- Product Content Start -->
                                            <div class="pro-content">
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <h4>
                                                    <a href="<?= \yii\helpers\Url::to(['products/single' , 'id' => $item->id]) ?>">
                                                        <?= $item->content->title ?>
                                                    </a>
                                                </h4>
                                                <p>
                                        <span class="price">
                                            $ <?= $item->price ?>
                                        </span>
                                                    <?php if($item->last_price == null) : ?>
                                                    <?php else: ?>
                                                        <del class="prev-price">
                                                            $ <?= $item->last_price ?>
                                                        </del>
                                                    <?php endif; ?>
                                                </p>
                                                <div class="pro-actions">
                                                    <div class="actions-secondary">
                                                        <a href="wishlist.html" data-toggle="tooltip" title="<?= Yii::t('index' , 'Add to wishlist') ?>"><i class="fa fa-heart"></i></a>
                                                        <a class="add-cart add-to-cart" href="<?= \yii\helpers\Url::to(['cart/add' , 'id' => $item->id]) ?>" data-id="<?= $item->id ?>"><?= Yii::t('index' , 'Add to cart')  ?></a>
                                                        <a href="compare.html" data-toggle="tooltip" title="<?= Yii::t('index' , 'Add to compare')  ?>"><i class="fa fa-signal"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Product Content End -->
                                            <?php if($item->sale == null) : ?>
                                            <?php else: ?>

                                                <span class="sticker-new">-<?= $item->sale ?></span>
                                            <?php endif; ?>
                                        </div>
                                        <!-- Single Product End -->
                                    <?php endforeach; ?>
                                </div>
                                <!-- New Products Activation End -->
                            </div>
                        <?php endif; ?>
                    </div>
                    <!-- Tab-Content End -->
                    <div class="single-banner zoom mt-30 mt-sm-10">
                        <?php if(Yii::$app->language == 'en'): ?>

                            <a href="<?= $banners['2']['link'] ?>"><img src="<?= $banners['2']['img_eng'] ?>" alt="slider-banner"></a>
                        <?php else: ?>

                            <a href="<?= $banners['2']['link'] ?>"><img src="<?= $banners['2']['img'] ?>" alt="slider-banner"></a>
                        <?php endif; ?>
                    </div>
                </div>
                <!-- New Pro Content End -->
            </div>
        </div>

    </div>
    <!-- Container End -->
</div>
<!-- New Products End -->
<!-- Banner Start -->
<div class="upper-banner banner ptb-60 ">
    <div class="container">
        <div class="row">
            <!-- Single Banner Start -->
            <div class="col-sm-6">
                <div class="single-banner zoom">
                    <?php if(Yii::$app->language == 'en'): ?>

                        <a href="<?= $banners['3']['link'] ?>"><img src="<?= $banners['3']['img_eng'] ?>" alt="slider-banner"></a>
                    <?php else: ?>

                        <a href="<?= $banners['3']['link'] ?>"><img src="<?= $banners['3']['img'] ?>" alt="slider-banner"></a>
                    <?php endif; ?>
                </div>
            </div>
            <!-- Single Banner End -->
            <!-- Single Banner Start -->
            <div class="col-sm-6">
                <div class="single-banner zoom">
                    <?php if(Yii::$app->language == 'en'): ?>

                        <a href="<?= $banners['4']['link'] ?>"><img src="<?= $banners['4']['img_eng'] ?>" alt="slider-banner"></a>
                    <?php else: ?>

                        <a href="<?= $banners['4']['link'] ?>"><img src="<?= $banners['4']['img'] ?>" alt="slider-banner"></a>
                    <?php endif; ?>
                </div>
            </div>
            <!-- Single Banner End -->
        </div>
        <!-- Row End -->
    </div>
    <!-- Container End -->
</div>
<!-- Banner End -->
<?php if(!empty($policy)) : ?>
<!-- Company Policy Start -->
<div class="company-policy pb-60 pb-sm-25">
    <div class="container">
        <div class="row">
            <?php foreach ($policy as $item) : ?>
            <?php if(Yii::$app->language == 'ru') : ?>
                    <!-- Single Policy Start -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-policy">
                            <div class="icone-img">
                                <?= Html::img($item->icon , ['alt' => $item->title_eng]) ?>
                            </div>
                            <div class="policy-desc">
                                <h3><?= $item->title_eng ?></h3>
                                <p><?= $item->description_eng ?></p>
                            </div>
                        </div>
                    </div>
                    <!-- Single Policy End -->
            <?php else: ?>
                    <!-- Single Policy Start -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-policy">
                            <div class="icone-img">
                                <?= Html::img($item->icon , ['alt' => $item->title]) ?>
                            </div>
                            <div class="policy-desc">
                                <h3><?= $item->title ?></h3>
                                <p><?= $item->description ?></p>
                            </div>
                        </div>
                    </div>
                    <!-- Single Policy End -->
            <?php endif; ?>

            <?php endforeach; ?>
        </div>
    </div>
</div>
<!-- Company Policy End -->
<?php else: ?>
<?php endif; ?>

<!-- Blog Page Start -->
<?php if(!empty($articles)) : ?>
<div class="blog-area pb-60">
    <div class="container">
        <div class="group-title">
            <h2><?= Yii::t('blog' , 'From the blog') ?></h2>
        </div>
        <!-- Popular Categorie Activation Start -->
        <div class="blog-active owl-carousel">
            <!-- Single Blog Start -->
            <?php foreach ($articles as $article) : ?>
            <div class="single-blog">
                <div class="blog-img">
                    <a href="<?= \yii\helpers\Url::to(['blog/single' , 'id' => $article->id]) ?>">
                        <?= Html::img($article->image , ['alt' => $article->content->title]) ?>
                    </a>
                </div>
                <div class="blog-content">
                    <h4 class="blog-title">
                        <a href="<?= \yii\helpers\Url::to(['blog/single' , 'id' => $article->id]) ?>">
                            <?= $article->content->title ?>
                        </a>
                    </h4>
                    <div class="blog-meta">
                        <ul>
                            <li>
                                <?php
                                $data = $article->posted;
                                $data = Yii::$app->formatter->asDate($article->posted , 'long')
                                ?>
                                <?= $data ; ?>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
            <!-- Single Blog End -->
        </div>
        <!-- Popular Categorie Activation End -->
    </div>
    <!-- Container End -->
</div>
<?php endif; ?>
<!-- Blog Page End -->
<?php if(!empty($brands) ) : ?>
<!-- Brand Logo Start -->
<div class="brand-area pb-60">
    <div class="container">
        <!-- Brand Banner Start -->
        <div class="brand-banner owl-carousel">
            <?php foreach ($brands as $brand) : ?>
            <div class="single-brand">
                <?php if(Yii::$app->language == 'en') : ?>
                <a href="<?= \yii\helpers\Url::to(['products/brand' , 'id' => $brand->id]) ?>">
                    <?= Html::img($brand->logo , ['alt' => $brand->title_eng , 'class' => 'img']) ?>
                </a>
                <?php else: ?>
                    <a href="<?= \yii\helpers\Url::to(['products/brand' , 'id' => $brand->id]) ?>">
                        <?= Html::img($brand->logo , ['alt' => $brand->title , 'class' => 'img']) ?>
                    </a>
                <?php endif; ?>
            </div>
            <?php endforeach; ?>
        </div>
        <!-- Brand Banner End -->
    </div>
</div>
<!-- Brand Logo End -->
<?php endif; ?>