<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\ImageProducts */

$this->title = 'Create Image Products';
$this->params['breadcrumbs'][] = ['label' => 'Image Products', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="image-products-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
