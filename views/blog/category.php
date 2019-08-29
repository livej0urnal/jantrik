<!-- Blog Area Start -->
<div class="blog-area pb-60">
    <div class="container">
        <div class="row">

            <!-- Main Blog Start -->
            <div class="col-lg-8">
                <div class="col-lg-12">
                    <div class="row">
                        <?php if(!empty($articles)) : ?>
                            <?php foreach ($articles as $article) : ?>
                                <!-- Single Blog Start -->
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="single-blog">
                                        <div class="blog-img">
                                            <a href="<?= \yii\helpers\Url::to(['single' , 'id' => $article->id]) ?>">
                                                <?= \yii\helpers\Html::img($article->image, ['alt' => $article->content->title]) ?>
                                            </a>
                                        </div>
                                        <div class="blog-content">
                                            <h4 class="blog-title">
                                                <a href="<?= \yii\helpers\Url::to(['single' , 'id' => $article->id]) ?>">
                                                    <?= $article->content->title ?>
                                                </a>
                                            </h4>
                                            <div class="blog-meta">
                                                <ul>
                                                    <li>
                                                        <a href="#">
                                                            <?php
                                                            $data = $article->posted;
                                                            $data = Yii::$app->formatter->asDate($article->posted , 'long')
                                                            ?>
                                                            <?= $data ; ?>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Blog End -->
                            <?php endforeach; ?>
                        <?php else: ?>
                            <h4>No articles</h4>
                        <?php endif; ?>
                    </div>

                </div>
            </div>
            <!-- Main Blog End -->
            <!-- Sidebar Main Blog Start -->
            <div class="col-lg-4">
                <div class="main-right-sidebar border-default universal-padding">

                    <!-- Recent Post Start -->
                    <?php if(!empty($recent) ) : ?>
                        <div class="recent-post pt-30 same-sidebar">
                            <h3 class="sidebar-title"><?= Yii::t('blog' , 'Recent posts') ?></h3>
                            <ul>
                                <?php foreach ($recent as $item) : ?>
                                    <!-- Singel Post Thumb Start -->
                                    <li class="post-thumb fix">
                                        <div class="left-post-thumb f-left mr-20 mb-20">
                                            <a href="<?= \yii\helpers\Url::to(['single' , 'id' => $item->id]) ?>">
                                                <?= \yii\helpers\Html::img($item->image , ['alt' => $item->content->title , 'class' => 'img']) ?>
                                            </a>
                                        </div>
                                        <div class="right-post-thumb fix">
                                            <h4>
                                                <a href="<?= \yii\helpers\Url::to(['single' , 'id' => $item->id]) ?>">
                                                    <?= $item->content->title ?>
                                                </a>
                                            </h4>
                                            <span>
                                         <?php
                                         $data = $article->posted;
                                         $data = Yii::$app->formatter->asDate($article->posted , 'long')
                                         ?>
                                         <?= $data ; ?>
                                    </span>
                                        </div>
                                    </li>
                                    <!-- Singel Post Thumb End -->
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    <?php endif; ?>
                    <!-- Recent Post End -->

                    <?php if(!empty($category) ) : ?>
                        <!-- Category Post Start -->
                        <div class="categorie recent-post same-sidebar">
                            <h3 class="sidebar-title mt-40"><?= Yii::t('blog' , 'Categories') ?></h3>
                            <ul class="categorie-list">
                                <?php foreach ($category as $item) : ?>
                                    <?php if(Yii::$app->language == 'en') : ?>
                                        <li><a href="<?= \yii\helpers\Url::to(['category' , 'id' => $item->id]) ?>"><?= $item->title_eng ?></a></li>
                                    <?php else: ?>
                                        <li><a href="<?= \yii\helpers\Url::to(['category' , 'id' => $item->id]) ?>"><?= $item->title ?></a></li>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                        <!-- Category Post End -->
                    <?php endif; ?>
                </div>
            </div>
            <!-- Sidebar Main Blog End -->
        </div>
    </div>
    <!-- Container End -->
</div>
<!-- Blog Area End -->