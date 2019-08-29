<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "products".
 *
 * @property int $id
 * @property int $rankid
 * @property int $brandid
 * @property string $top
 * @property string $seller
 * @property string $featured
 * @property string $price
 * @property int $in_stock
 * @property string $last_price
 * @property string $sale
 */
class Products extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'products';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['rankid', 'brandid', 'price'], 'required'],
            [['rankid', 'brandid', 'in_stock'], 'integer'],
            [['top', 'seller', 'featured'], 'string'],
            [['price', 'last_price', 'sale'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'rankid' => 'Rankid',
            'brandid' => 'Brandid',
            'top' => 'Top',
            'seller' => 'Seller',
            'featured' => 'Featured',
            'price' => 'Price',
            'in_stock' => 'In Stock',
            'last_price' => 'Last Price',
            'sale' => 'Sale',
        ];
    }
}
