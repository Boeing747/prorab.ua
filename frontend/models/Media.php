<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "media".
 *
 * @property integer $id
 * @property string $name
 * @property integer $user_id
 * @property string $file
 * @property integer $type
 * @property integer $main
 * @property integer $gallery_main
 */
class Media extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'media';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'type', 'main', 'gallery_main'], 'integer'],
            [['name', 'file'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'user_id' => 'User ID',
            'file' => 'File',
            'type' => 'Type',
            'main' => 'Main',
            'gallery_main' => 'Gallery Main',
        ];
    }
}
