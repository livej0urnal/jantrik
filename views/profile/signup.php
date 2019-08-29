<?php
    use yii\widgets\ActiveForm;

?>

<!-- Register Account Start -->
<div class="register-account pb-60">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="register-title">
                    <h3 class="mb-10"><?= Yii::t('profile' , 'Register account') ?></h3>
                    <p class="mb-10"><?= Yii::t('profile' , 'If you already have an account with us, please login at the login page.') ?></p>
                </div>
            </div>
        </div>
        <!-- Row End -->
        <div class="row">
            <div class="col-sm-12">
                <?php
                $form = ActiveForm::begin([
                        'class' => 'form-horizontal',
                        'enableClientScript'=> false,
                ]);
                ?>
                    <fieldset>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <?= $form->field($model , 'firstname')->textInput() ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <?= $form->field($model , 'lastname')->textInput(['class' => 'form-control']) ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <?= $form->field($model , 'email')->textInput() ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <?= $form->field($model , 'telephone')->textInput() ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <?= $form->field($model , 'password')->passwordInput() ?>
                            </div>
                        </div>
                    </fieldset>
                    <div class="buttons newsletter-input">
                        <div class="pull-right">
                            <input type="submit" value="<?= Yii::t('profile' , 'Continue') ?>" class="newsletter-btn">
                        </div>
                    </div>
                    <?php
                    $form::end();
                    ?>
            </div>
        </div>
        <!-- Row End -->
    </div>
    <!-- Container End -->
</div>
<!-- Register Account End -->