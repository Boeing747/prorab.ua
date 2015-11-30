<?php

namespace app\modules\catalog\controllers;

use frontend\models\Users;
use app\models\City;
use yii\web\Controller;
use yii\data\Pagination;

class DefaultController extends Controller
{
    public function actionIndex()
    {
        $query = Users::find()->leftJoin('media', array('id' => 'user_id'))->where(['type' => 1, 'active' => 1]);


        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $countQuery->count()]);
            echo $pages; die();
        $page = 1;

        if(isset($_REQUEST["page"]))
        {
            $page = intVal($_REQUEST["page"]);
        }

        $limit = 12;
        $offset = $limit * ($page - 1);
        $pageSize = ceil($countQuery->count()/$limit);
        $pages->setPageSize($pageSize);

        $models = $query->offset($offset)
            ->limit($limit)
            ->all();


        $city = City::find()->all();

        return $this->render('index', [
            'models' => $models,
            'pages' => $pages,
            'city' => $city
        ]);
    }
}
