<?php


namespace app\models;

use yii\db\ActiveRecord;

class ArticleLang extends ActiveRecord
{
    public static function tableName()
    {
        return 'article_lang';
    }
}