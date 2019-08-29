<?php
    use yii\helpers\Html;
?>

<!-- My Account Page Start Here -->
<div class="my-account white-bg pb-60">
    <div class="container">
        <div class="account-dashboard">
            <div class="dashboard-upper-info">
                <div class="row no-gutters align-items-center">
                    <div class="col-lg-3 col-md-6">
                        <div class="d-single-info">
                            <p class="user-name"><?= Yii::t('profile' , 'Hello') ?> <span><?= $user->firstname ?></span></p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="d-single-info">
                            <p><?= Yii::t('profile' , 'Your email') ?>: <span><?= $user->email ?></span></p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="d-single-info">
                            <p><?= Yii::t('profile' , 'Your phone') ?>: <span><?= $user->telephone ?></span></p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="d-single-info text-center">
                            <a class="view-cart" href="/cart/checkout"><i class="fa fa-cart-plus" aria-hidden="true"></i><?= Yii::t('profile' , 'view cart') ?></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2">
                    <!-- Nav tabs -->
                    <ul class="nav flex-column dashboard-list" role="tablist">
                        <li><a class="active" data-toggle="tab" href="#orders"><?= Yii::t('profile' , 'Orders') ?></a></li>
                        <li><a href="/profile/logout" href="#logout"><?= Yii::t('profile' , 'logout') ?></a></li>
                    </ul>
                </div>
                <div class="col-lg-10">
                    <!-- Tab panes -->
                    <div class="tab-content dashboard-content mt-all-40">

                        <div id="orders" class="tab-pane active">
                            <h3><?= Yii::t('profile' , 'Orders')  ?></h3>
                            <?php if(!empty($orders)) : ?>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th><?= Yii::t('profile' , 'Order') ?></th>
                                        <th><?= Yii::t('profile' , 'Date') ?></th>
                                        <th><?= Yii::t('profile' , 'Status') ?></th>
                                        <th><?= Yii::t('profile' , 'Total') ?></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php foreach ($orders as $order) : ?>
                                    <tr>
                                        <td><?= $order->id ?></td>
                                        <td><?php
                                            $data = $order->created_at;
                                            $data = Yii::$app->formatter->asDate($order->created_at , 'long')
                                            ?>
                                            <?= $data ; ?></td>
                                        <td>
                                        <?php if($order->status == '0') {
                                            echo '<span class="text-danger">Active</span>';
                                        }
                                        else {
                                            echo '<span class="text-success">Complete</span>';
                                        } ?>
                                        </td>
                                        <td>$ <?= $order->sum ?> for <?= $order->qty ?> item </td>
                                    </tr>
                                    <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                            <?php else: ?>
                                <p><?= Yii::t('profile' , 'No orders') ?></p>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- My Account Page End Here -->