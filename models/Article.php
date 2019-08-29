<?php


namespace app\models;

use yii\db\ActiveRecord;

class Article extends ActiveRecord
{
    public static function tableName()
    {
        return 'article';
    }

    public function getCategory()
    {
        return $this->hasOne(Category::className() , ['id' => 'category']);
    }

    public function getContent()
    {
        $langid = ($langid === null)? Lang::getCurrent()->id: $langid;

        return $this->hasOne(ArticleLang::className(), ['articles_id' => 'id'])->where('lang_id = :lang_id', [':lang_id' => $langid]);
    }
}