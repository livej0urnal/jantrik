<?php


namespace app\controllers;
use app\controllers\AppController;
use app\models\Article;
use app\models\Category;
use yii\data\Pagination;
use Yii;

class BlogController extends AppController
{
    public function actionBlog()
    {
        $id = Yii::$app->request->get('id');
        $category = Category::find()->all();
        $articles = Article::find()->all();
        if(empty($articles)){
            throw new \yii\web\HttpException(404, 'The requested Item could not be found.');
        }
        $query = Article::find()->orderBy(['id' => SORT_DESC]);
        $pages = new Pagination(['totalCount' => $query->count() , 'pageSize' => 4 , 'forcePageParam'=> false , 'pageSizeParam' => false]);
        $articles = $query->offset($pages->offset)->limit($pages->limit)->all();
        $recent = Article::find()->where(['recent' => '1'])->all();
        $lang_id = Yii::$app->language;
        if($lang_id == 'en') {

            $this->setMeta('Blog page ' , '' , '');
        }
        else{

            $this->setMeta('Наши новости ' , '' , '');
        }
        return $this->render('blog' , compact('category' , 'articles' , 'recent' , 'pages'));
    }

    public function actionSingle($id)
    {
        $id = Yii::$app->request->get('id');
        $article = Article::findOne($id);
        if(empty($article)){
            throw new \yii\web\HttpException(404, 'The requested Item could not be found.');
        }
        $recent = Article::find()->where(['recent' => '1'])->all();
        $category = Category::find()->all();
        $this->setMeta($article->content->seotitle);
        return $this->render('single' , compact('article' , 'recent' , 'category'));
    }

    public function actionCategory()
    {
        $id = Yii::$app->request->get('id');
        $category = Category::findOne($id);
        if(empty($category)){
            throw new \yii\web\HttpException(404, 'The requested Item could not be found.');
        }
        $recent = Article::find()->where(['recent' => '1'])->all();
        $articles = Article::find()->where(['category' => $category->id])->all();
        $lang_id = Yii::$app->language;
        if($lang_id == 'en') {

            $this->setMeta($category->seotitle_eng  , '' , $category->description_eng);
        }
        else{

            $this->setMeta($category->seotitle , '' , $category->description);
        }
        return $this->render('category' , compact('articles' , 'recent'));
    }
}