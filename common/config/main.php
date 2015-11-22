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
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'urlManager' => [
            'class' => 'yii\web\UrlManager',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                'module/<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
            ]
        ],
    ],
];
