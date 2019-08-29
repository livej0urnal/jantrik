<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "brands".
 *
 * @property int $id
 * @property string $title
 * @property string $description
 * @property string $logo
 * @property string $title_eng
 * @property string $description_eng
 */
class Brands extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'brands';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'logo', 'title_eng'], 'required'],
            [['description', 'description_eng'], 'string'],
            [['title', 'logo', 'title_eng'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Description',
            'logo' => 'Logo',
            'title_eng' => 'Title Eng',
            'description_eng' => 'Description Eng',
        ];
    }
}
