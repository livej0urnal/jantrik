<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\ArticleLang */

$this->title = 'Create Article Lang';
$this->params['breadcrumbs'][] = ['label' => 'Article Langs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="article-lang-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
