<?php


namespace app\models;
use yii\db\ActiveRecord;

class Banners extends ActiveRecord
{
    public static function tableName()
    {
        return 'banners';
    }
}