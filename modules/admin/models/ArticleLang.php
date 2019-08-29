<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "article_lang".
 *
 * @property int $id
 * @property int $articles_id
 * @property int $lang_id
 * @property string $title
 * @property string $seotitle
 * @property string $seodescription
 * @property string $content
 */
class ArticleLang extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'article_lang';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['articles_id', 'lang_id', 'title', 'seotitle', 'seodescription', 'content'], 'required'],
            [['articles_id', 'lang_id'], 'integer'],
            [['seodescription', 'content'], 'string'],
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
            'articles_id' => 'Articles ID',
            'lang_id' => 'Lang ID',
            'title' => 'Title',
            'seotitle' => 'Seotitle',
            'seodescription' => 'Seodescription',
            'content' => 'Content',
        ];
    }
}
