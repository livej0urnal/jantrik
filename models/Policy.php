<?php


namespace app\models;
use yii\db\ActiveRecord;

class Policy extends ActiveRecord
{
    public static function tableName()
    {
        return 'policy';
    }
}