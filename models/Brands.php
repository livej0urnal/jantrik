<?php


namespace app\models;
use yii\db\ActiveRecord;

class Brands extends ActiveRecord
{
    public static function tableName()
    {
        return 'brands';
    }

    public function getProducts()
    {
        return $this->hasMany(Products::className() , ['brandid' => 'id']);
    }
}