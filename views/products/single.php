<?php
    use yii\helpers\Html;
?>

<!-- Product Thumbnail Start -->
<div class="main-product-thumbnail pb-60">
    <div class="container">
        <div class="row">
            <!-- Main Thumbnail Image Start -->
            <div class="col-lg-5">
                <?php if(!empty($product->image)) : ?>
                <?php foreach ($product->image as $item) : ?>
                <!-- Thumbnail Large Image start -->
                <div class="tab-content">
                    <div id="thumb1" class="tab-pane active image-product">
                        <a data-fancybox="images" href="<?= $item->img ?>">
                            <?= Html::img($item->img , ['alt' => $product->content->title]) ?>
                        </a>
                    </div>
                </div>
                <!-- Thumbnail Large Image End -->
                <?php endforeach; ?>

                <?php else: ?>
                <?php endif; ?>
            </div>
            <!-- Main Thumbnail Image End -->
            <!-- Thumbnail Description Start -->
            <div class="col-lg-7">
                <div class="thubnail-desc fix">
                    <h3 class="product-header">
                        <?= $product->content->title ?>
                    </h3>
                    <div class="rating-summary fix mtb-10">
                        <div class="rating f-left">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div>

                    </div>
                    <div class="pro-price mb-10">
                        <p>
                            <span class="price">
                                $ <?= $product->price ?>
                            </span>
                            <?php if($product->last_price == null) : ?>
                            <?php else: ?>
                                <del class="prev-price">
                                    $ <?= $product->last_price ?>
                                </del>
                            <?php endif; ?>
                        </p>
                    </div>
                    <div class="pro-ref mb-15">
                        <?php if($product->in_stock <= '0') : ?>
                            <p>
                            <span class="in-stock" style="color: red">
                                <?= Yii::t('index' , 'out of stock') ?>
                            </span>
                            </p>
                        <?php else: ?>
                            <p>
                            <span class="in-stock">
                                <?= Yii::t('index' , 'in stock') ?> :
                            </span>
                                <span class="sku"><?= $product->in_stock ?> <?= Yii::t('index' , 'position') ?>
                            </span>
                            </p>
                        <?php endif; ?>

                    </div>
                    <div class="box-quantity">
                        <form action="#">
                            <input class="number" id="qty" type="number" min="1" value="1" onclick="qty.value = parseInt(qty.value) ">
                            <a class="add-cart add-to-cart" href="<?= \yii\helpers\Url::to(['cart/add' , 'id' => $product->id]) ?>" data-id="<?= $product->id ?>"><?= Yii::t('index' , 'Add to cart')  ?></a>
                        </form>
                    </div>
                    <div class="product-link">
                        <ul class="list-inline">
                            <li><a href="wishlist.html"><?= Yii::t('index' , 'Add to wishlist')  ?></a></li>
                            <li><a href="compare.html"><?= Yii::t('index' , 'Add to compare')  ?></a></li>
                        </ul>
                    </div>
                    <p class="ptb-20">
                        <?= $product->content->short ?>
                    </p>
                </div>
            </div>
            <!-- Thumbnail Description End -->
        </div>
        <!-- Row End -->
    </div>
    <!-- Container End -->
</div>
<!-- Product Thumbnail End -->
<!-- Product Thumbnail Description Start -->
<div class="thumnail-desc pb-60">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <ul class="main-thumb-desc nav">
                    <li><a class="active" data-toggle="tab" href="#dtail"><?= Yii::t('index' , 'Details') ?></a></li>
                </ul>
                <!-- Product Thumbnail Tab Content Start -->
                <div class="tab-content thumb-content border-default">
                    <div id="dtail" class="tab-pane in active">
                        <?= $product->content->details ?>
                    </div>
                </div>
                <!-- Product Thumbnail Tab Content End -->
            </div>
        </div>
        <!-- Row End -->
    </div>
    <!-- Container End -->
</div>
<!-- Product Thumbnail Description End -->
<?php if(!empty($related)) : ?>
<!-- Realted Product Start -->
<div class="related-product pb-30">
    <div class="container">
        <div class="related-box">
            <div class="group-title">
                <h2><?= Yii::t('index' , 'Related products') ?></h2>
            </div>
            <!-- Realted Product Activation Start -->
            <div class="new-upsell-pro owl-carousel">
                <?php foreach ($related as $item) : ?>
                <!-- Single Product Start -->
                <div class="single-product">
                    <!-- Product Image Start -->
                    <div class="pro-img">
                        <a href="<?= \yii\helpers\Url::to(['products/single' , 'id' => $item->id]) ?>">
                            <?= Html::img($item->image['0']['img'] , ['alt' => $item->content->title]) ?>
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
                                <a class="add-cart add-to-cart" href="<?= \yii\helpers\Url::to(['/cart/add' , 'id' => $item->id ]) ?>" data-id="<?= $item->id ?>" data-toggle="tooltip" title="<?= Yii::t('index' , 'Add to cart') ?>"><?= Yii::t('index' , 'Add to cart') ?></a>
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
            <!-- Realted Product Activation End -->
        </div>
    </div>
</div>
<!-- Realted Product End -->
<?php endif; ?>