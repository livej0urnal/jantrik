<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "products_lang".
 *
 * @property int $id
 * @property int $products_id
 * @property string $title
 * @property string $seotitle
 * @property string $seodescription
 * @property string $short
 * @property string $details
 * @property int $lang_id
 */
class ProductsLang extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'products_lang';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['products_id', 'title', 'seotitle', 'seodescription', 'short', 'details', 'lang_id'], 'required'],
            [['products_id', 'lang_id'], 'integer'],
            [['seodescription', 'short', 'details'], 'string'],
            [['title', 'seotitle'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'products_id' => 'Products ID',
            'title' => 'Title',
            'seotitle' => 'Seotitle',
            'seodescription' => 'Seodescription',
            'short' => 'Short',
            'details' => 'Details',
            'lang_id' => 'Lang ID',
        ];
    }
}
