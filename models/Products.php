<?php


namespace app\models;

use yii\db\ActiveRecord;

class Products extends ActiveRecord
{
    public static function tableName()
    {
        return 'products';
    }

    public function getContent()
    {
        $langid = ($langid === null)? Lang::getCurrent()->id: $langid;

        return $this->hasOne(ProductsLang::className(), ['products_id' => 'id'])->where('lang_id = :lang_id', [':lang_id' => $langid]);
    }

    public function getImage()
    {
        return $this->hasMany(ImageProducts::className() , ['products_id' => 'id']);
    }

    public function getBrand()
    {
        return $this->hasOne(Brands::className() , ['id' => 'brandid']);
    }

    public function getRanks()
    {
        return $this->hasOne(Ranks::className() , ['id' => 'rankid']);
    }
}