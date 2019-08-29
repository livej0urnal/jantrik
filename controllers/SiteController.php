<?php

namespace app\controllers;

use app\models\Banners;
use app\models\Brands;
use app\models\Policy;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\controllers\AppController;
use app\models\Category;
use app\models\Article;
use app\models\Slider;
use app\models\Products;

class SiteController extends AppController
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'  , 'get'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $id = Yii::$app->request->get('id');
        $sliders = Slider::find()->all();
        $banners = Banners::find()->all();
        $new = Products::find()->orderBy(['id' => SORT_DESC])->limit(6)->all();
        $featured = Products::find()->where(['featured' => '1'])->limit(6)->all();
        $sellers = Products::find()->where(['seller' => '1'])->limit(5)->all();
        $policy = Policy::find()->all();
        $articles = Article::find()->orderBy(['id' => SORT_DESC])->limit(5)->all();
        $brands = Brands::find()->all();
        return $this->render('index' , compact('articles' , 'sliders' , 'banners' , 'sellers' , 'new' , 'featured' , 'policy' , 'brands'));
    }


}
