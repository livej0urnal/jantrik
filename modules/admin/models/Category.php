<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "category".
 *
 * @property int $id
 * @property string $title
 * @property string $title_eng
 * @property string $seotitle
 * @property string $seotitle_eng
 * @property string $description
 * @property string $description_eng
 */
class Category extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'category';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'title_eng', 'seotitle', 'seotitle_eng', 'description', 'description_eng'], 'required'],
            [['description', 'description_eng'], 'string'],
            [['title', 'title_eng', 'seotitle', 'seotitle_eng'], 'string', 'max' => 255],
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
            'title_eng' => 'Title Eng',
            'seotitle' => 'Seotitle',
            'seotitle_eng' => 'Seotitle Eng',
            'description' => 'Description',
            'description_eng' => 'Description Eng',
        ];
    }
}
