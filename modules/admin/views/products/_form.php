<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Products */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="products-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'rankid')->textInput() ?>

    <?= $form->field($model, 'brandid')->textInput() ?>

    <?= $form->field($model, 'top')->dropDownList([ '0', '1', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'seller')->dropDownList([ '0', '1', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'featured')->dropDownList([ '0', '1', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'price')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'in_stock')->textInput() ?>

    <?= $form->field($model, 'last_price')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sale')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
