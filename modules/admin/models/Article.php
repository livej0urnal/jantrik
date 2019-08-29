<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "article".
 *
 * @property int $id
 * @property string $posted
 * @property string $image
 * @property int $category
 * @property string $recent
 */
class Article extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'article';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['posted', 'image', 'category'], 'required'],
            [['posted'], 'safe'],
            [['category'], 'integer'],
            [['recent'], 'string'],
            [['image'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'posted' => 'Posted',
            'image' => 'Image',
            'category' => 'Category',
            'recent' => 'Recent',
        ];
    }
}
