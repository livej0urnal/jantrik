<?php


namespace app\models;
use yii\db\ActiveRecord;

class Category extends ActiveRecord
{
    public static function tableName()
    {
        return 'category';
    }

    public function getArticle()
    {
        return $this->hasMany(Article::className() , ['category' => 'id']);
    }
}