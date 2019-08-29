<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
use yii\helpers\Url;
?>
<?php if(!empty($products)) : ?>
    <!-- Shop Page Start -->
    <div class="main-shop-page pb-60">
        <div class="container">
            <!-- Row End -->
            <div class="row">
                <!-- Product Categorie List Start -->
                <div class="col-lg-12 order-lg-2">
                    <div class="main-categorie">
                        <!-- Grid & List Main Area End -->
                        <div class="tab-content fix">
                            <div id="grid-view" class="tab-pane active ">
                                <div class="row">
                                    <?php foreach ($products as $product) : ?>
                                        <!-- Single Product Start -->
                                        <div class="col-lg-4 col-sm-6">
                                            <div class="single-product">
                                                <!-- Product Image Start -->
                                                <div class="pro-img">
                                                    <a href="<?= Url::to(['products/single' , 'id' => $product->id]) ?>">
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
                                                        <a href="<?= Url::to(['products/single' , 'id' => $product->id]) ?>">
                                                            <?= $product->title ?>
                                                        </a>
                                                    </h4>

                                                </div>
                                                <!-- Product Content End -->
                                            </div>
                                        </div>
                                        <!-- Single Product End -->
                                    <?php endforeach; ?>
                                </div>
                            </div>
                            <!-- #grid view End -->
                            <!-- Row End -->
                            <div class="row">
                                <div class="col-sm-12">
                                    <?php echo LinkPager::widget([
                                        'pagination' => $pages,
                                        'options' => ['class' => 'blog-pagination pt-20'],
                                        'linkOptions' => ['class' => 'link-pagination'],
                                    ]); ?>
                                    <!-- End of .blog-pagination -->
                                </div>
                            </div>
                            <!-- Row End -->
                        </div>
                        <!-- Grid & List Main Area End -->
                    </div>
                </div>
                <!-- product Categorie List End -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Shop Page End -->
<?php else: ?>
    <!-- Error 404 Area Start -->
    <div class="error404-area pb-60 pt-20" style="margin-top:100px; margin-bottom: 100px">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="error-wrapper text-center">
                        <div class="error-text">
                            <p><?= Yii::t('index' , 'No products in this category') ?></p>
                        </div>
                        <div class="error-button">
                            <a href="<?= \yii\helpers\Url::home() ?>"><?= Yii::t('index' , 'Back to home') ?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Error 404 Area End -->
<?php endif; ?>
