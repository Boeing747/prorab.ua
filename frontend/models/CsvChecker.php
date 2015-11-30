<?
    namespace frontend\models;
    use Yii;

    class CsvChecker{

        public function getCsv($file)
        {
            $filecsv = file($file);
            $out = array();
            $empty = array(null);
            foreach ( $filecsv as $item )
            {
                $ar = explode(';', $item);
                $check = array_diff($ar, $empty);
                if (sizeof($check) == 9)
                {
                    $out[] = $ar;
                }
            }

            if( is_array($out))
                return $out;

        }

        public function toDb($ar)
        {
            $data = '';
            foreach ( $ar as $key=>$item )
            {
                if ( $key == 0 )
                     continue;

                $age = intVal($item[3]);
                $exp = htmlspecialchars(addslashes(iconv('WINDOWS-1251', 'UTF-8', $item[4])));
                $description = htmlspecialchars(addslashes(iconv('WINDOWS-1251', 'UTF-8', $item[3])));
                $position = htmlspecialchars(addslashes(iconv('WINDOWS-1251', 'UTF-8', $item[6])));
                $price = str_replace('грн.', '', $item[7]);

                $data .= "(" . $key . ',' .  $age . ',\'' . $exp . '\',\'' . $description . '\', \'' . $position . '\',\'' . $price . '\'),';
            }

            $data = substr($data, 0, strlen($data)-1 );

            Yii::$app->db->createCommand("INSERT INTO `users` (`name`, `age`, `exp`, `description`, `position`, `price`) VALUES " . $data)->execute();

            die('done');
        }
    }