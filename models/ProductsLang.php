<?php


namespace app\models;

use yii\db\ActiveRecord;

class ProductsLang extends ActiveRecord
{
    public static function tableName()
    {
        return 'products_lang';
    }
}