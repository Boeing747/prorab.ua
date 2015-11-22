<?
    use yii\helpers\Html;
    use yii\bootstrap\Nav;

    \frontend\assets\MainAsset::register($this);
    $this->beginPage();
?>
<!DOCTYPE html>

<html lang="<?= Yii::$app->language ?>">

<head>
    <title><?=$this->title;?></title>
    <meta charset="<?= Yii::$app->charset;?>" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <?= Html::csrfMetaTags();  ?>
    <? $this->head(); ?>
</head>
<body>
<? $this->beginBody(); ?>
<?=$this->render('//common/header');?>
        <div clas="row" class="main-text-block">
            <div class="col-xs-6" >
                <img class="main-text-pic" src="/img/casca_transp.png" />
            </div>
            <div class="col-xs-6" >
                <h1>НЕ МОЖЕТЕ ЗНАЙТИ
                    <span>ПЕРЕВiРЕНОГО</span>
                    <span class="bud">БУДiВЕЛЬНИКА?</span>
                </h1>
                <input type="button" value="" class="find-btn center-block" />
            </div>
        </div>

    </div>
    <div class="row full-row about-site center-block">
        <div class="container">
            <div class="col-xs-12 text-center">
                <ul class="list-inline ">
                    <li class="percent brown"></li>
                    <li class="percent brown"></li>
                    <li class="percent brown"></li>
                    <li class="percent white"></li>
                </ul>
            </div>
            <div class="col-xs-12">
                <ul class="about-site-list list-inline">
                    <li class="site-item">
                        <span class="site-item-icon near"></span>
                        <span class="about-site-title">Поруч</span>
                        <span class="about-site-info">Обирайте перевіреного виконроба з Вашого міста</span>
                    </li>
                    <li class="left-border"></li>
                    <li class="site-item">
                        <span class="site-item-icon handshake"></span>
                        <span class="about-site-title">Зручно</span>
                        <span class="about-site-info">Співпрацюйте без посередників. Залишайте коментарі</span>
                    </li>
                    <li class="left-border"></li>
                    <li class="site-item">
                        <span class="site-item-icon piggy"></span>
                        <span class="about-site-title">Економно</span>
                        <span class="about-site-info">Будуйте дешевше. Заощаджуйте на комісії будівельним компаніям</span>
                    </li>
                    <li class="left-border"></li>
                    <li class="site-item">
                        <span class="site-item-icon easy"></span>
                        <span class="about-site-title">Просто</span>
                        <span class="about-site-info">Дивіться інтерв’ю на каналі Youtube</span>
                    </li>
                    <li class="left-border"></li>
                    <li class="site-item">
                        <span class="site-item-icon usefull"></span>
                        <span class="about-site-title">Корисно</span>
                        <span class="about-site-info">Читайте відгуки тих, хто вже успішно побудував дім</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="row full-row quest text-center">
        <div class="col-xs-12">
            <img src="/img/question.png" />
        </div>
        <div class="col-xs-12">
            <h2>В тебе багато задоволених клієнтів?<br />
                <span>Додай своє портфоліо</span><br />
                та дпомагай людям у будівництві
            </h2>
        </div>
        <div class="col-xs-12">
            <input value="" type="button" class="reg-btn" />
        </div>
    </div>
    <div class="row full-row text-center feedback">
        <div class="col-xs-12">
            <h2>ВІДГУКИ</h2>
        </div>
        <div class="col-xs-12 ">
            <div class="feedback-block">
                <div class="feedback-img">
                    <img src="/img/ph1.png" />
                    <div class="feedback-name">ВАСИЛЬ</div>
                </div>
                <div class="feedback-descrip">
                    <div class="feedback-stars">
                        <ul class="list-inline">
                            <li class="stars_block full"></li>
                            <li class="stars_block full"></li>
                            <li class="stars_block full"></li>
                            <li class="stars_block empty"></li>
                            <li class="stars_block empty"></li>
                        </ul>
                    </div>
                    <div style="clear: both"></div>
                    <div class="feedback-text">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sagittis ipsum mi, at cursus ante euismod vitae. Duis ligula risus, viverra quis posuere et, fringilla nec mi.
                    </div>
                    <div class="feedback-more">
                        Подробнее
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12">
            <ul class="list-inline">
                <li class="percent brown"></li>
                <li class="percent brown"></li>
                <li class="percent brown"></li>
                <li class="percent green"></li>
            </ul>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-xs-12 stat text-center">
                <div class="title">
                    на сайті вже
                </div>
            </div>
            <div class="col-xs-12 stat text-center">
                <div class="stat-circles">
                    <div class="diag1-block">
                        <div class="diag1 text-center">300</div>
                        <div class="diag-text text-center">виконробів</div>
                    </div>
                    <div class="diag2-block">
                        <div class="diag2 text-center">120</div>
                        <div class="diag-text text-center">користувачів</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 recomend">
                <div class="recomend-text">Знаєш
                    <span>класного</span>&nbsp;виконроба?
                </div>
                <div style="clear: both"></div>
                <div class="rec-btn pull-right">
                    <input type="button" class="recomend-btn" />
                </div>
            </div>
        </div>
    </div>
    <?=$this->render('//common/footer');?>
<? $this->endBody(); ?>
</body>
</html>

<? $this->endPage(); ?>