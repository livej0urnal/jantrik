<?php
    use yii\helpers\Html;
    use yii\widgets\ActiveForm;
?>
<!-- Cart Main Area Start -->
<div class="cart-main-area pt-30  pb-60">
    <div class="container">
        <h2 class="text-capitalize sub-heading"><?= Yii::t('cart' , 'Cart') ?></h2>
        <?php if(Yii::$app->session->hasFlash('success')): ?>
            <div class="alert alert-success alert-dismissable" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <?php echo Yii::$app->session->getFlash('success'); ?>
            </div>
        <?php endif; ?>

        <?php if(Yii::$app->session->hasFlash('error')) : ?>
            <div class="alert alert-danger alert-dismissable" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <?php echo Yii::$app->session->getFlash('error'); ?>
            </div>
        <?php endif; ?>
        <?php if(!empty($_SESSION['cart'])) :?>
        <div class="row">
            <div class="col-md-12">
                    <!-- Table Content Start -->
                    <div class="table-content table-responsive mb-50 cart-table">
                        <table>
                            <thead>
                            <tr>
                                <th class="product-thumbnail"><?= Yii::t('cart' , 'Image') ?></th>
                                <th class="product-name"><?= Yii::t('cart' , 'Product') ?></th>
                                <th class="product-price"><?= Yii::t('cart' , 'Price') ?></th>
                                <th class="product-quantity"><?= Yii::t('cart' , 'Quantity') ?></th>
                                <th class="product-subtotal"><?= Yii::t('cart' , 'Total') ?></th>
                                <th class="product-remove"><?= Yii::t('cart' , 'Remove') ?></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($_SESSION['cart'] as $id => $item) : ?>
                            <tr>
                                <td class="product-thumbnail">
                                    <a href="#">
                                        <?= Html::img($item['img'] , ['alt' => $item['name']]) ?>
                                    </a>
                                </td>
                                <td class="product-name">
                                    <a href="#">
                                        <?= $item['name'] ?>
                                    </a>
                                </td>
                                <td class="product-price">
                                    <span class="amount">$<?= $item['price'] ?>
                                    </span>
                                </td>
                                <td class="product-quantity">
                                    <?= $item['qty'] ?>
                                </td>
                                <td class="product-subtotal">
                                    <?php $price = (int)$item['price']; $qty = (int)$item['qty']; $itogo = $price * $qty; ?>
                                    $<?php echo $itogo ?>
                                </td>
                                <td class="product-remove"> <a href="#" class="del-item" data-id="<?= $id ?>"><i class="fa fa-times" aria-hidden="true"></i></a></td>
                            </tr>
                            <?php endforeach; ?>
                            </tbody>
                        </table>
                        <div class="clear">

                        </div>
                        <div class="col-lg-12 col-md-12">
                            <div class="row">
                                <div class="col-lg-6 col-md-7">
                                    <div class="checkbox-form">
                                        <?php $form = ActiveForm::begin([
                                            'enableClientScript'=> false,
                                            'class' => 'form-horizontal'
                                        ]) ?>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="checkout-form-list">
                                                    <?= $form->field($order, 'name') ?>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="checkout-form-list mb-30">
                                                    <?= $form->field($order, 'email') ?>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="checkout-form-list mb-30">
                                                    <?= $form->field($order, 'phone') ?>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="checkout-form-list mb-30">
                                                    <?= $form->field($order, 'address') ?>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="buttons-cart" style="float: right">
                                            <a href="" onclick="clearCart()">Clear cart</a>
                                            <input type="submit" value="Done">
                                        </div>
                                        <?php ActiveForm::end() ?>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="cart_totals">
                                        <br>
                                        <table>
                                            <tbody>

                                            <tr class="order-total">
                                                <th><?= Yii::t('cart' , 'Total') ?></th>
                                                <td>
                                                    <strong><span class="amount">$<?= $_SESSION['cart.sum'] ?></span></strong>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

            </div>
        </div>
        <!-- Row End -->
        <?php else: ?>
            <p style="text-align: center"> <?= Yii::t('cart' , 'No products') ?></p>
        <?php endif; ?>
    </div>
</div>
<!-- Cart Main Area End -->
