<?php


namespace app\widgets;

use app\models\Lang;
use yii\bootstrap\Widget;


class WLang extends Widget
{
    public $langid;
    public function init(){}

    public function run() {
        $langid = Lang::getCurrent();
        return $this->render('view', [
            'current' => Lang::getCurrent(),
            'langs' => Lang::find()->where('id != :current_id', [':current_id' => Lang::getCurrent()->id])->all(),
        ]);
    }
}