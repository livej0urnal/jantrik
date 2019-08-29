<?php


namespace app\models;

use yii\db\ActiveRecord;

class Ranks extends ActiveRecord
{
    public static function tableName()
    {
        return 'ranks';
    }

    public function getProducts()
    {
        return $this->hasMany(Products::className() , ['rankid' => 'id']);
    }
}