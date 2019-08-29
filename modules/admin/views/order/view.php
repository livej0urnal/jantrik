<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Order */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Orders', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="order-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?php $items = $model->orderItems;?>
    <div class="table-bordered detail-view">
        <table class="table table-striped table-bordered detail-view" style="width: 100%;">
            <thead>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($items as $item ): ?>
                <tr>
                    <td><a href="<?= \yii\helpers\Url::to(['/products/single', 'id'=>$item->product_id]) ?>" target="_blank" style="color: inherit"><?= $item['name'] ?></a></td>
                    <td><?= $item['qty_item'] ?></td>
                    <td>$<?= $item['price'] ?></td>
                    <td>$<?= $item['sum_item'] ?></td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <br>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'created_at',
            'updated_at',
            'qty',
            'sum',
            'status',
            'name',
            'email:email',
            'phone',
            'address',
            'user_id',
        ],
    ]) ?>

</div>
