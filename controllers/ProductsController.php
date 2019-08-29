<?php


namespace app\controllers;
use app\controllers\AppController;
use app\models\Products;
use app\models\ProductsLang;
use app\models\ImageProducts;
use app\models\Brands;
use app\models\Ranks;
use yii\data\Pagination;
use Yii;

class ProductsController extends AppController
{
    public function actionSingle($id)
    {
        $id = Yii::$app->request->get('id');
        $product = Products::findOne($id);
        if(empty($product)){
            throw new \yii\web\HttpException(404, 'The requested Item could not be found.');
        }
        $related = Products::find()->where(['featured' => '1'])->limit(6)->all();
        $this->setMeta($product->content->seotitle, '' , $product->content->seodescription);
        return $this->render('single' , compact('product' , 'related'));
    }



    public function actionCategory()
    {
        $id = Yii::$app->request->get('id');
        $category = Ranks::findOne($id);
        if(empty($category)){
            throw new \yii\web\HttpException(404, 'The requested Item could not be found.');
        }
        $products = Products::find()->where(['rankid' => $category->id])->all();
        $query = Products::find()->where(['rankid' => $id]);
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 6 , 'forcePageParam' => false, 'pageSizeParam' => false ]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        $brands = Brands::find()->all();
        $top = Products::find()->where(['rankid' => $category->id ,'top' => '1'])->limit(3)->all();
        if(Yii::$app->language == 'en') {
            $this->setMeta($category->seotitle_eng , '' , $category->seodescription_eng);
        }
        else {
            $this->setMeta($category->seotitle , '' , $category->seodescription);
        }
        return $this->render('ranks' , compact('products' , 'category' , 'pages' , 'brands' , 'top'));
    }

    public function actionBrand()
    {
        $id = Yii::$app->request->get('id');
        $brand = Brands::findOne($id);
        $products = Products::find()->where(['brandid' => $brand->id])->all();
        $query = Products::find()->where(['brandid' => $id]);
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 6 , 'forcePageParam' => false, 'pageSizeParam' => false ]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        if(empty($brand)){
            throw new \yii\web\HttpException(404, 'The requested Item could not be found.');
        }
        if(Yii::$app->language == 'en') {
            $this->setMeta($brand->title_eng , '' , $brand->description_eng);
        }
        else {
            $this->setMeta($brand->title , '' , $brand->description);
        }
        return $this->render('brand' , compact('brand' , 'products' , 'pages'));
    }

    public function actionSearch()
    {
        $q = trim(Yii::$app->request->get('q'));
        if(!$q)
        {
            return $this->render('search');
        }
        $query = ProductsLang::find()->where(['like', 'title', $q ]);
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 12 , 'forcePageParam' => false, 'pageSizeParam' => false ]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        return $this->render('search' , compact('products' , 'pages' , 'q' , 'product'));
    }
}