<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "image_products".
 *
 * @property int $id
 * @property int $products_id
 * @property string $img
 */
class ImageProducts extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'image_products';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['products_id', 'img'], 'required'],
            [['products_id'], 'integer'],
            [['img'], 'string', 'max' => 255],
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
            'img' => 'Img',
        ];
    }
}
