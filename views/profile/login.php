<?php
    use yii\widgets\ActiveForm;
?>

<!-- LogIn Page Start -->
<div class="log-in pb-60">
    <div class="container">
        <div class="row">
            <!-- New Customer Start -->
            <div class="col-sm-6">
                <div class="well">
                    <div class="new-customer">
                        <h3><?= Yii::t('profile' , 'New customer') ?></h3>
                        <p class="mtb-10"><strong><?= Yii::t('profile' , 'Register') ?></strong></p>
                        <p><?= Yii::t('profile' , 'By creating an account you will be able to shop faster, be up to date on an order\'s status, and keep track of the orders you have previously made') ?></p>
                        <a class="customer-btn" href="/profile/signup"><?= Yii::t('profile' , 'Continue') ?></a>
                    </div>
                </div>
            </div>
            <!-- New Customer End -->
            <!-- Returning Customer Start -->
            <div class="col-sm-6">
                <div class="well">
                    <div class="return-customer">
                        <h3 class="mb-10"><?= Yii::t('profile' , 'Have account?') ?></h3>

                        <?php $form = ActiveForm::begin([
                            'class' => 'form-horizontal',
                            'enableClientScript'=> false,
                        ]) ?>
                            <div class="form-group">

                                <?= $form->field($login_model , 'email')->textInput() ?>
                            </div>
                            <div class="form-group">

                                <?= $form->field($login_model , 'password')->passwordInput() ?>
                            </div>
                            <input type="submit" value="<?= Yii::t('profile' , 'Login') ?>" class="return-customer-btn">
                        <?php ActiveForm::end() ?>
                    </div>
                </div>
            </div>
            <!-- Returning Customer End -->
        </div>
        <!-- Row End -->
    </div>
    <!-- Container End -->
</div>
<!-- LogIn Page End -->
