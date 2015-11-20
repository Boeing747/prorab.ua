<?  namespace frontend\assets;

    use yii\web\AssetBundle;
    use yii\web\View;

    class MainAsset extends AssetBundle{
        public $basepath = '@webroot';
        public $baseurl = '@web';

        public $css = [
            'source/css/glyphicon.css',
            'source/css/add.css',
            'source/css/allfont.css',
        ];

        public $js = [
            'source/js/add.js',
            'source/js/fotorama.js'
        ];

        public $depends = [
            'yii\web\YiiAsset', // yii.js, jquery.js
            'yii\bootstrap\BootstrapAsset', // bootstrap.css
            'yii\bootstrap\BootstrapPluginAsset' // bootstrap.js
        ];

        public $jsOptions = [
            'position' =>  View::POS_END,
        ];
    }