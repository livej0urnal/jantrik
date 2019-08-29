<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Ranks */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="ranks-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'seotitle')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'seodescription')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'title_eng')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'seotitle_eng')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'seodescription_eng')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
