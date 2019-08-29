<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "ranks".
 *
 * @property int $id
 * @property string $title
 * @property string $seotitle
 * @property string $seodescription
 * @property string $title_eng
 * @property string $seotitle_eng
 * @property string $seodescription_eng
 */
class Ranks extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ranks';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'seotitle', 'title_eng', 'seotitle_eng', 'seodescription_eng'], 'required'],
            [['seodescription', 'seodescription_eng'], 'string'],
            [['title', 'seotitle', 'title_eng', 'seotitle_eng'], 'string', 'max' => 255],
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
            'seotitle' => 'Seotitle',
            'seodescription' => 'Seodescription',
            'title_eng' => 'Title Eng',
            'seotitle_eng' => 'Seotitle Eng',
            'seodescription_eng' => 'Seodescription Eng',
        ];
    }
}
