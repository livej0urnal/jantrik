<?php


namespace app\controllers;
use app\models\Login;
use app\models\Order;
use app\models\Signup;
use app\models\User;
use Yii;
use yii\helpers\Url;

class ProfileController extends AppController
{
    public function actionSignup()
    {
        $model = new Signup();
        if(isset($_POST['Signup']))
        {
            $model->attributes = Yii::$app->request->post('Signup');
            if($model->validate() && $model->signup())
            {
                return $this->redirect(['index']);
            }
        }
        if(Yii::$app->language == 'en')
        {
            $this->setMeta('Register form' , '' , '');
        }
        else{
            $this->setMeta('Форма регистрации' , '' , '');
        }
        return $this->render('signup' , compact('model'));
    }

    public function actionLogin()
    {
        if(Yii::$app->user->isGuest){
            $login_model = new Login();
            if(Yii::$app->request->post('Login'))
            {
                $login_model->attributes = Yii::$app->request->post('Login');
                if($login_model->validate())
                {
                    Yii::$app->user->login($login_model->getUser());
                    return $this->goHome();
                }
            }
            if(Yii::$app->language == 'en')
            {
                $this->setMeta('Login form' , '' , '');
            }
            else{
                $this->setMeta('Форма авторизации' , '' , '');
            }
            return $this->render('login' , compact('login_model'));
        }
        else{
            return $this->goHome();
        }

    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionProfile()
    {
        $id = Yii::$app->user->id;
        $user = User::findOne($id);
        $orders = Order::find()->where(['user_id' => $user->id])->all();
        $this->setMeta(' User ' . $user->firstname . ' ' . $user->lastname , '');
        return $this->render('profile' , compact('user' , 'orders'));
    }
}