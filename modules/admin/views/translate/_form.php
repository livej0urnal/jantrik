<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\ArticleLang */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="article-lang-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'articles_id')->textInput() ?>

    <?= $form->field($model, 'lang_id')->textInput() ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'seotitle')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'seodescription')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'content')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
