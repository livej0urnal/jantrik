<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "banners".
 *
 * @property int $id
 * @property string $img
 * @property string $img_eng
 * @property string $link
 */
class Banners extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'banners';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['img', 'img_eng', 'link'], 'required'],
            [['img', 'img_eng', 'link'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'img' => 'Img',
            'img_eng' => 'Img Eng',
            'link' => 'Link',
        ];
    }
}
