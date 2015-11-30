<?
    use yii\helpers\Html;

    \frontend\assets\MainAsset::register($this);
    $this->beginPage();
?>
<!DOCTYPE html>

<html lang="<?= Yii::$app->language ?>">

<head>
    <title><?=$this->title;?></title>
    <meta charset="<?= Yii::$app->charset;?>" />
    <meta name="description" content="Вы ищите прораба?" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <?= Html::csrfMetaTags();  ?>
    <? $this->head(); ?>
</head>
<body>
<? $this->beginBody(); ?>
<?=$this->render('//common/header');?>
    <?=$content;?>
<?=$this->render('//common/footer');?>
<? $this->endBody(); ?>
</body>
</html>

<? $this->endPage(); ?>