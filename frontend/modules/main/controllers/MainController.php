<?php

namespace app\modules\main\controllers;

class MainController extends \yii\web\Controller
{

    public function actionIndex()
    {

        $this->layout = "bootstrap";
        return $this->render('index', ['hi' => 'hello, world']);
    }

}
