<?php


namespace app\models;
use yii\base\Model;

class Signup extends Model
{
    public $email;
    public $password;
    public $firstname;
    public $lastname;
    public $telephone;

    public function rules()
    {
        return [
            [['email' , 'password', 'firstname' , 'lastname' , 'telephone'], 'required'],
            ['email' , 'email'],
            ['email' , 'unique' , 'targetClass' => 'app\models\User'],
            [['firstname' , 'lastname'], 'unique' , 'targetClass' => 'app\models\User'],
            ['telephone' , 'is8NumbersOnly'],
            [['firstname' , 'lastname'], 'string' , 'min' => 3 , 'max' => 20],
            ['password' , 'string' , 'min' => 2, 'max' => 10]
        ];
    }

    public function signup()
    {
        $user = new User();
        $user->email = $this->email;
        $user->firstname = $this->firstname;
        $user->lastname = $this->lastname;
        $user->telephone = $this->telephone;
        $user->setPassword($this->password);
        $user->password = sha1($this->password);
        $user->save();
    }

    public function is8NumbersOnly($attribute)
    {
        if (!preg_match('/^[0-9]{12}$/', $this->$attribute)) {
            $this->addError($attribute, 'must contain exactly 12 digits.');
        }
    }
}