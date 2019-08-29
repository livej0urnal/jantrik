<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "slider".
 *
 * @property int $id
 * @property string $image
 * @property string $title
 * @property string $title_eng
 * @property string $keywords
 * @property string $keywords_eng
 * @property string $link
 * @property string $class
 */
class Slider extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'slider';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['image', 'title', 'title_eng', 'keywords', 'keywords_eng', 'link', 'class'], 'required'],
            [['image', 'title', 'title_eng', 'keywords', 'keywords_eng', 'link', 'class'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'image' => 'Image',
            'title' => 'Title',
            'title_eng' => 'Title Eng',
            'keywords' => 'Keywords',
            'keywords_eng' => 'Keywords Eng',
            'link' => 'Link',
            'class' => 'Class',
        ];
    }
}
