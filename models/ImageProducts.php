<?php


namespace app\models;

use yii\db\ActiveRecord;

class ImageProducts extends ActiveRecord
{
    public static function tableName()
    {
        return 'image_products';
    }

    public function getProducts()
    {
        return $this->hasOne(Products::className() , ['id' => 'products_id']);
    }
}