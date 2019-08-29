<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Products Langs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="products-lang-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Products Lang', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'products_id',
            'title',
            'seotitle',
            'seodescription:ntext',
            //'short:ntext',
            //'details:ntext',
            //'lang_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
