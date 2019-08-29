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
   <!-- Sidebar Shopping Option Start -->
   <div class="col-lg-3  order-2">
    <div class="sidebar white-bg">
     <div class="single-sidebar">
      <div class="group-title">
       <h2><?= Yii::t('index' , 'Price') ?></h2>
      </div>
      <form action="#">
       <div id="slider-range" class="ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content">
        <div class="ui-slider-range ui-corner-all ui-widget-header" ></div>
       </div>
       <input id="amount" class="amount" readonly="" type="text">
      </form>
     </div>
        <?php if(!empty($brands)) : ?>
     <div class="single-sidebar">
      <div class="group-title">
       <h2><?= Yii::t('index' , 'Manufacturer') ?></h2>
      </div>
      <ul class="manufactures-list">
          <?php foreach ($brands as $brand) : ?>
          <?php if(Yii::$app->language == 'en') : ?>

                  <li><a href="<?= Url::to(['products/brand' , 'id' => $brand->id]) ?>"><?= $brand->title_eng ?></a></li>
          <?php else: ?>

                  <li><a href="<?= Url::to(['products/brand' , 'id' => $brand->id]) ?>"><?= $brand->title ?></a></li>
          <?php endif; ?>
          <?php endforeach; ?>
      </ul>
     </div>
        <?php endif; ?>
    <?php if(!empty($top )) :?>
     <div class="single-sidebar">
      <div class="group-title">
       <h2><?= Yii::t('index' , 'Top sell') ?></h2>
      </div>
      <div class="best-seller-pro-two compare-pro best-seller-pro-two owl-carousel">
          <?php foreach ($top as $item) :?>
       <!-- Best Seller Multi Product Start -->
       <div class="best-seller-multi-product">
        <!-- Single Product Start -->
        <div class="single-product">
         <!-- Product Image Start -->
         <div class="pro-img ">
          <a href="<?= Url::to(['products/single' , 'id' => $item->id]) ?>">
              <?= Html::img($item->image['0']['img'] , ['alt' => $item->content->title]) ?>
          </a>
         </div>
         <!-- Product Image End -->
         <!-- Product Content Start -->
         <div class="pro-content">
          <h4>
              <a href="<?= Url::to(['products/single' , 'id' => $item->id]) ?>">
                  <?= $item->content->title ?>
              </a>
          </h4>
          <div class="product-rating">
           <i class="fa fa-star"></i>
           <i class="fa fa-star"></i>
           <i class="fa fa-star"></i>
           <i class="fa fa-star-o"></i>
           <i class="fa fa-star-o"></i>
          </div>
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
         <!-- Product Content End -->
        </div>
        <!-- Single Product End -->
       </div>
       <!-- Best Seller Multi Product End -->
       <?php endforeach; ?>
      </div>
     </div>
    <?php endif; ?>
     <div class="single-sidebar single-banner zoom pt-20">
      <a href="#" class="hidden-sm"><img src="/img/banner/8.jpg" alt="slider-banner"></a>
     </div>
     <!-- Single Banner End -->
    </div>
   </div>
   <!-- Sidebar Shopping Option End -->
   <!-- Product Categorie List Start -->
   <div class="col-lg-9 order-lg-2">
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
               <?= Html::img($product->image['0']['img'] , ['alt' => $product->content->title]) ?>
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
                   <?= $product->content->title ?>
               </a>
           </h4>
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
           <div class="pro-actions">
            <div class="actions-secondary">
                <a href="wishlist.html" data-toggle="tooltip" title="<?= Yii::t('index' , 'Add to wishlist') ?>"><i class="fa fa-heart"></i></a>
                <a class="add-cart add-to-cart" href="<?= \yii\helpers\Url::to(['cart/add' , 'id' => $product->id]) ?>" data-id="<?= $product->id ?>"><?= Yii::t('index' , 'Add to cart')  ?></a>
                <a href="compare.html" data-toggle="tooltip" title="<?= Yii::t('index' , 'Add to compare')  ?>"><i class="fa fa-signal"></i></a>
            </div>
           </div>
          </div>
          <!-- Product Content End -->
             <?php if($product->sale == null) : ?>
             <?php else: ?>

                 <span class="sticker-new">-<?= $product->sale ?></span>
             <?php endif; ?>
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
