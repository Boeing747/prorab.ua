<?php

namespace app\modules\catalog;

class Module extends \yii\base\Module
{
    public $controllerNamespace = 'app\modules\catalog\controllers';


    public function init()
    {
        $this->layout = 'bootstrap';
        parent::init();
        $this->setLayoutPath('@frontend/views/layouts');

        // custom initialization code goes here
    }
}
