<?php

namespace app\models;
namespace frontend\models;
use app\models\Media;
use Yii;

/**
 * This is the model class for table "users".
 *
 * @property integer $id
 * @property integer $active
 * @property string $name
 * @property string $email
 * @property string $password
 * @property string $avatar
 * @property integer $age
 * @property string $exp
 * @property string $price
 * @property string $description
 * @property string $position
 * @property integer $type
 */
class Users extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['active', 'age', 'type'], 'integer'],
            [['description'], 'string'],
            [['name', 'exp'], 'string', 'max' => 255],
            [['email'], 'string', 'max' => 100],
            [['password', 'avatar'], 'string', 'max' => 50],
            [['price', 'position'], 'string', 'max' => 11]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'active' => 'Active',
            'name' => 'Name',
            'email' => 'Email',
            'password' => 'Password',
            'avatar' => 'Avatar',
            'age' => 'Age',
            'exp' => 'Exp',
            'price' => 'Price',
            'description' => 'Description',
            'position' => 'Position',
            'type' => 'Type',
        ];
    }

    public function getSiteUsers()
    {
        $usersCount = Yii::$app->db->CreateCommand('SELECT type, COUNT(*) as cnt  FROM users WHERE active = 1 GROUP BY type')->queryAll();
        if ( !empty($usersCount) )
        {
            $out = array();
            foreach ( $usersCount as $user )
            {
                $out[$user['type']] = $user;
            }
            return $out;
        }
    }


}
