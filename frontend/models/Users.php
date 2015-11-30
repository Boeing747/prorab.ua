<?  namespace frontend\models;
    use Yii;

    class Users
    {
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
