<?php
return [
    'name' => 'Find Builder',
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',



    'modules' => [
        'main' => [
            'class' => 'app\modules\main\Module',
        ],
        'test' => [
            'class' => 'app\modules\test\Module',
        ],
    ],

    'components' => [

        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=stroy',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ],

        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'urlManager' => [
            'class' => 'yii\web\UrlManager',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [ '' => 'site/index',
                'signup' => '/site/signup',
                //'module/<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
                '<controller:\w+>/<id:\d+>'=>'<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
                '<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
            ]
        ],
    ],
];
