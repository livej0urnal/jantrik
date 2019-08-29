<?php

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

use yii\helpers\Html;

$this->title = $name;
?>

<!-- Error 404 Area Start -->
<div class="error404-area pb-60 pt-20" style="margin-top:100px; margin-bottom: 100px">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="error-wrapper text-center">
                    <div class="error-text">
                        <h2><?= Html::encode($this->title) ?></h2>
                        <p><?= nl2br(Html::encode($message)) ?></p>
                    </div>
                    <div class="error-button">
                        <a href="<?= \yii\helpers\Url::home() ?>"><?= Yii::t('index' , 'Back to home') ?></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Error 404 Area End -->
