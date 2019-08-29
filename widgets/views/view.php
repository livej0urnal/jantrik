<?php
use yii\helpers\Html;

?>
        <li id="lang">
            <a href=""  class="dropdown-toggle">
            <?= Html::img('/icons/'.$current->local.'.png' , ['class' => 'icon-lang' , 'alt' => $current->name]) ?>
            </a>

        <?php foreach ($langs as $lang):?>
            <ul class="ht-dropdown">
                    <li>
                        <a href="/<?= $lang->url.Yii::$app->getRequest()->getLangUrl() ?>" class="selects-lang">
                            <?= Html::img('/icons/'.$lang->url.'.png' , ['class' => 'icon-lang'  , 'alt' => $current->name]) ?>
                        </a>
                    </li>
                </ul>
        <?php endforeach;?>
        </li>