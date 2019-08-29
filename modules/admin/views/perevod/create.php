<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\ProductsLang */

$this->title = 'Create Products Lang';
$this->params['breadcrumbs'][] = ['label' => 'Products Langs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="products-lang-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
