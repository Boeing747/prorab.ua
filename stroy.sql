/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50541
Source Host           : localhost:3306
Source Database       : stroy

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-12-01 00:36:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', 'Киев');
INSERT INTO `city` VALUES ('2', 'Днепропетровск');
INSERT INTO `city` VALUES ('3', 'Донецк');
INSERT INTO `city` VALUES ('4', 'Запорожье');
INSERT INTO `city` VALUES ('5', 'Кривой Рог');
INSERT INTO `city` VALUES ('6', 'Львов');
INSERT INTO `city` VALUES ('7', 'Луганск');
INSERT INTO `city` VALUES ('8', 'Мариуполь');
INSERT INTO `city` VALUES ('9', 'Николаев');
INSERT INTO `city` VALUES ('10', 'Одесса');
INSERT INTO `city` VALUES ('11', 'Севастополь');
INSERT INTO `city` VALUES ('12', 'Симферополь');
INSERT INTO `city` VALUES ('13', 'Харьков');
INSERT INTO `city` VALUES ('14', 'Винница');
INSERT INTO `city` VALUES ('15', 'Чернигов');

-- ----------------------------
-- Table structure for `media`
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `main` tinyint(4) DEFAULT NULL,
  `gallery_main` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES ('1', null, '1', '/img/vasil.png', '1', '1', '1');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(4) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `exp` varchar(255) DEFAULT NULL,
  `price` varchar(11) DEFAULT NULL,
  `description` text,
  `position` varchar(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `city_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=819 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('744', '1', '1', null, null, null, '54', 'Общий рабочий стаж — 21 год и 6 месяцев', '6 000 ', '54 года (родился 9 апреля 1961), мужской, высшее образование, женат, есть дети Киев, Ул. Вербицкого, м. Харьковская', 'Начальник у', '1', null);
INSERT INTO `users` VALUES ('745', '1', '2', null, null, null, '44', 'Общий рабочий стаж — 27 лет и 3 месяца', '', '44 года (родился 30 августа 1971), мужской, высшее образование Киев , готов к переезду в Тюмень, Саранск, Сургут , Новый Уренгой и еще 1 город', 'Геодезист', '1', null);
INSERT INTO `users` VALUES ('746', '1', '3', null, null, null, '44', 'Общий рабочий стаж — 9 лет и 1 месяц', '', '44 года (родился 31 мая 1971), мужской, высшее образование, не женат, есть дети Киев, Шевченковский, м. Политехнический институт', 'Архитектор,', '1', null);
INSERT INTO `users` VALUES ('747', '1', '4', null, null, null, '37', 'Общий рабочий стаж — 9 лет и 5 месяцев', '12 000 ', '37 лет (родился 12 мая 1978), мужской, высшее образование, не женат, детей нет Киев, Позняки, м. Осокорки', 'Руководител', '1', null);
INSERT INTO `users` VALUES ('748', '1', '5', null, null, null, '39', 'Общий рабочий стаж — 16 лет и 2 месяца', '', '39 лет (родился 24 марта 1976), мужской, высшее образование, женат, есть дети Киев, Соломенский , готов к переезду', 'Инженер-стр', '1', null);
INSERT INTO `users` VALUES ('749', '1', '6', null, null, null, '38', 'Общий рабочий стаж — 8 лет и 8 месяцев', '', '38 лет (родилась 26 января 1977), женский, высшее образование, не замужем, есть дети Киев, Днепровский, м. Дарница , м. Левобережная', 'Руководител', '1', null);
INSERT INTO `users` VALUES ('750', '1', '7', null, null, null, '28', 'Общий рабочий стаж — 1 год и 2 месяца', '4 200 ', '28 лет (родился 19 апреля 1987), мужской, неполное высшее образование, не женат, детей нет Киев, Шевченковский (Нивки), м. Нивки', 'Зам.руковод', '1', null);
INSERT INTO `users` VALUES ('751', '1', '8', null, null, null, '33', 'Ключевые навыки Н Навыки и умения: - Знание иностранных языков: английский (свободно), французский (базовый), русский и украинский - Знание ПК на уровне пользователя: Word, Excel, Power Point, Outlook, Trade-x, 1С, Axapta - Знание кассового аппарата - Зна', '8 400 ', '33 года (родился 16 октября 1982), мужской, высшее образование, женат, детей нет Киев', 'Директор, з', '1', null);
INSERT INTO `users` VALUES ('752', '1', '9', null, null, null, '40', 'Общий рабочий стаж — 13 лет и 9 месяцев сентябрь 2011 — н.в. 4 года и 2 месяца Начальник отдела тонирования и антигравийной защиты кузова авто (Полная занятость) Автоком, г. Киев. Должностные обязанности и достижения: Организация, планирование, управление', '3 000 ', '40 лет (родился 25 февраля 1975), мужской, среднее специальное образование, женат, есть дети Киев, м. Академгородок Гражданство: Украина', 'Охранник, о', '1', null);
INSERT INTO `users` VALUES ('753', '1', '10', null, null, null, '47', 'Общий рабочий стаж — 18 лет и 9 месяцев', '7 000 ', '47 лет (родился 30 апреля 1968), мужской, высшее образование, женат, есть дети Киев', 'Исполнитель', '1', null);
INSERT INTO `users` VALUES ('754', '1', '11', null, null, null, '28', 'Общий рабочий стаж — 5 месяцев', '3 000 ', '28 лет (родилась 9 мая 1987), женский, высшее образование, не замужем, детей нет Киев Гражданство: Украина', 'Економіст, ', '1', null);
INSERT INTO `users` VALUES ('755', '1', '12', null, null, null, '27', 'Общий рабочий стаж — 6 месяцев', '', '27 лет (родилась 12 августа 1988), женский, высшее образование, не замужем, детей нет Киев Готова к командировкам, гражданство: Украина', 'Кредитный и', '1', null);
INSERT INTO `users` VALUES ('756', '1', '13', null, null, null, '33', 'Общий рабочий стаж — 10 лет и 10 месяцев', '4 900 ', '33 года (родилась 24 февраля 1982), женский, высшее образование, не замужем, детей нет Киев, Святошинский р-н, ул. Г. Юры', 'Ведущий спе', '1', null);
INSERT INTO `users` VALUES ('757', '1', '14', null, null, null, '29', 'Ключевые навыки Проходження практики протягом періоду з 19.05.08 по 12.06.08 в Державній податковій інспекції Солом\'янського району м. Києва – відділ по взаємодії з правоохоронними органами та контролю з управління юридичних осіб. Стажування в ЗАТ КБ „При', '2 800 ', '29 лет (родилась 2 ноября 1986), женский, неполное высшее образование, замужем, детей нет Киев, Шевченковский р-н, вул. Г. Тимофеевой 15, кв.70', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('758', '1', '15', null, null, null, '37', '&quot;Общий рабочий стаж — 3 года июнь 2006 — октябрь 2006 4 месяца Юрист (Полная занятость) ДП «Торговая компания «Корса», г. Киев. июнь 2005 — июнь 2006 1 год Юрист (Полная занятость) ОАО &quot;&quot;Акционерная компания &quot;&quot;Киевреконструкция&qu', '4 200 ', '37 лет (родился 20 июля 1978), мужской, высшее образование, не женат, детей нет Киев', 'Юрисконсуль', '1', null);
INSERT INTO `users` VALUES ('759', '1', '16', null, null, null, '28', 'Общий рабочий стаж — 3 месяца', '1 750 ', '28 лет (родилась 1 июня 1987), женский, неполное высшее образование, не замужем, детей нет Киев, Соломенский, ближайшее метро Шулявская, Лыбедская и Вокзальная.', 'Специалист', '1', null);
INSERT INTO `users` VALUES ('760', '1', '17', null, null, null, '28', 'Общий рабочий стаж — 1 год и 2 месяца', '3 500 ', '28 лет (родилась 10 февраля 1987), женский, высшее образование, не замужем, детей нет Киев, Подольский', 'Операционис', '1', null);
INSERT INTO `users` VALUES ('761', '1', '18', null, null, null, '34', 'Общий рабочий стаж — 14 лет и 3 месяца', '', '34 года (родилась 9 декабря 1980), женский, высшее образование, не замужем, детей нет Киев, Дарница , готова к переезду Готова к командировкам', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('762', '1', '19', null, null, null, '30', 'Общий рабочий стаж — 6 лет и 3 месяца', '', '30 лет (родился 7 октября 1985), мужской, высшее образование Киев', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('763', '1', '20', null, null, null, '35', 'Общий рабочий стаж — 11 лет и 6 месяцев', '40 000 ', '35 лет (родился 9 марта 1980), мужской, высшее образование, не женат, детей нет Киев, дарницкий', 'Продавец-ко', '1', null);
INSERT INTO `users` VALUES ('764', '1', '21', null, null, null, '39', '&quot;Общий рабочий стаж — 8 лет и 8 месяцев март 2011 — июль 2011 4 месяца Бухгалтер (Полная занятость) ТОВ ТД Техінвест, г. Киев. Должностные обязанности и достижения: Бухгалтер, офис-менеджер (первичная документация, приход, расход товара, клиент-банк,', '3 000 ', '39 лет (родилась 6 сентября 1976), женский, высшее образование, не замужем, есть дети Киев, Боярка, ул Пушкина, м. Житомирская Готова к командировкам', 'Оператор ПК', '1', null);
INSERT INTO `users` VALUES ('765', '1', '22', null, null, null, '26', 'Общий рабочий стаж — 3 года и 1 месяц сентябрь 2011 — октябрь 2012 1 год и 1 месяц Механік (Частичная занятость) шиномонтаж , г. Киев. Должностные обязанности и достижения: Шиномонтаж- ремонт та обслуговування коліс шумоізоляція, устоновка: - ксенон - пар', '', '26 лет (родился 7 ноября 1989), мужской, высшее образование, не женат, детей нет Киев, Голосієвський, м. Голосеевская Гражданство: Украина', 'Водитель, и', '1', null);
INSERT INTO `users` VALUES ('766', '1', '23', null, null, null, '26', 'Общий рабочий стаж — 1 год и 3 месяца', '', '26 лет (родился 18 марта 1989), мужской, среднее специальное образование, не женат, детей нет Киев, Деснянскій, м. Левобережная', 'Автомойщик', '1', null);
INSERT INTO `users` VALUES ('767', '1', '24', null, null, null, '31', '&quot;Общий рабочий стаж — 9 лет и 11 месяцев июль 2010 — н.в. 5 лет и 4 месяца Специалист по учету и аудиту (Полная занятость) Консалтинговая группа «Информ плюс», г. Киев. Должностные обязанности и достижения: Профессиональные навыки: 1. Полное ведение ', '10 000 ', '31 год (родилась 20 сентября 1984), женский, высшее образование, замужем, есть дети Киев, Святошинський р-н, м. Академгородок , м. Житомирская , м. Святошин', 'Финансовый ', '1', null);
INSERT INTO `users` VALUES ('768', '1', '25', null, null, null, '49', 'Общий рабочий стаж — 12 лет и 6 месяцев', '5 000 ', '49 лет (родился 15 июля 1966), мужской, высшее образование, женат, есть дети Киев Готов к командировкам, гражданство: Украина', 'Специалист ', '1', null);
INSERT INTO `users` VALUES ('769', '1', '26', null, null, null, '34', 'Общий рабочий стаж — 11 лет и 6 месяцев', '4 200 ', '34 года (родилась 27 мая 1981), женский, высшее образование, замужем, есть дети Киев, смт. Чабаны, (возможно работа в Голосеевском р-не), м. Лыбедская', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('770', '1', '27', null, null, null, '30', 'Общий рабочий стаж — 7 лет и 9 месяцев', '5 000 ', '30 лет (родился 18 марта 1985), мужской, высшее образование, не женат, детей нет Киев, м. Святошин', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('771', '1', '28', null, null, null, '29', 'Общий рабочий стаж — 2 года и 7 месяцев', '1 750 ', '29 лет (родилась 3 мая 1986), женский, неполное высшее образование, не замужем, есть дети Киев, Дарницкий', 'Касир', '1', null);
INSERT INTO `users` VALUES ('772', '1', '29', null, null, null, '31', 'Общий рабочий стаж — 10 лет и 1 месяц', '4 500 ', '31 год (родилась 8 февраля 1984), женский, высшее образование Киев', 'Бухгалтер', '1', null);
INSERT INTO `users` VALUES ('773', '1', '30', null, null, null, '31', 'Общий рабочий стаж — 7 лет и 7 месяцев', '', '31 год (родилась 12 марта 1984), женский, высшее образование, не замужем, детей нет Киев', 'Бухгалтер', '1', null);
INSERT INTO `users` VALUES ('774', '1', '31', null, null, null, '38', '&quot;Общий рабочий стаж — 12 лет март 2012 — ноябрь 2012 8 месяцев Бухгалтер-кассир (Полная занятость) ООО &quot;&quot;КБФ&quot;&quot;, г. Киев. Должностные обязанности и достижения: Клиент-банк, платежи в нац.и иностр.валютах, формирование выписок, касс', '', '38 лет (родилась 20 сентября 1977), женский, высшее образование, замужем, есть дети Киев, Борщаговка, м. Святошин Не готова к командировкам, гражданство: Украина', 'Инспектор О', '1', null);
INSERT INTO `users` VALUES ('775', '1', '32', null, null, null, '23', 'Общий рабочий стаж — 2 года август 2012 — октябрь 2012 2 месяца Администратор (Полная занятость) L kafa, г. Киев. февраль 2012 — август 2012 6 месяцев Старший кассир (Полная занятость) Новус Украина, г. Киев. Должностные обязанности и достижения: Инкассац', '3 000 ', '23 года (родилась 28 июня 1992), женский, неполное высшее образование, не замужем, детей нет Киев, Троещина, м. Дарница , м. Оболонь , м. Петровка Готова к командировкам, гражданство: Украина', 'Администрат', '1', null);
INSERT INTO `users` VALUES ('776', '1', '33', null, null, null, '28', 'Общий рабочий стаж — 3 месяца', '3 500 ', '28 лет (родился 18 декабря 1986), мужской, среднее специальное образование, не женат, детей нет Киев, Днепровский, м. Дарница', 'Продавец', '1', null);
INSERT INTO `users` VALUES ('777', '1', '34', null, null, null, '33', 'Общий рабочий стаж — 9 лет февраль 2009 — н.в. 6 лет и 9 месяцев Старший оператор - диспетчер (Полная занятость) ТОВ Бонус Z, г. Киев. Должностные обязанности и достижения: Прием и распредиление заказов август 2008 — ноябрь 2008 3 месяца Экономист отделен', '3 500 ', '33 года (родилась 1 мая 1982), женский, неполное высшее образование, не замужем, есть дети Киев, Деснянский р-н Не готова к командировкам', 'Специалист ', '1', null);
INSERT INTO `users` VALUES ('778', '1', '35', null, null, null, '29', 'Общий рабочий стаж — 10 лет и 8 месяцев', '4 200 ', '29 лет (родилась 19 июля 1986), женский, высшее образование, не замужем, детей нет Киев, Оболонь', 'Менеджер / ', '1', null);
INSERT INTO `users` VALUES ('779', '1', '36', null, null, null, '27', '&quot;Общий рабочий стаж — 3 года и 2 месяца март 2012 — декабрь 2012 9 месяцев Торговый представитель (Полная занятость) ТОВ &quot;&quot;Белоцерковский молочный завод&quot;&quot;, г. Киев. Должностные обязанности и достижения: Работа с клиентами, прием з', '4 500 ', '27 лет (родилась 12 сентября 1988), женский, неполное высшее образование, замужем, есть дети Киев Не готова к командировкам, гражданство: Украина', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('780', '1', '37', null, null, null, '37', 'Общий рабочий стаж — 8 месяцев', '', '37 лет (родилась 24 июля 1978), женский, среднее специальное образование, не замужем, детей нет Киев, м. Васильковская Гражданство: Украина', 'Кассир в су', '1', null);
INSERT INTO `users` VALUES ('781', '1', '38', null, null, null, '39', 'Общий рабочий стаж — 13 лет и 9 месяцев', '', '39 лет (родилась 30 сентября 1976), женский, высшее образование, замужем, есть дети Киев, Ул. С. Сосниных', 'Исполнитель', '1', null);
INSERT INTO `users` VALUES ('782', '1', '39', null, null, null, '40', 'Общий рабочий стаж — 11 лет и 2 месяца', '3 000 ', '40 лет (родилась 15 июля 1975), женский, среднее специальное образование Киев', 'Буфетчица', '1', null);
INSERT INTO `users` VALUES ('783', '1', '40', null, null, null, '26', 'Общий рабочий стаж — 2 года и 11 месяцев', '3 000 ', '26 лет (родился 14 июня 1989), мужской, неполное высшее образование, не женат, детей нет Киев, Деснянский Готов к командировкам, гражданство: Украина', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('784', '1', '41', null, null, null, '42', 'Общий рабочий стаж — 8 лет и 8 месяцев', '5 600 ', '42 года (родился 16 мая 1973), мужской, среднее специальное образование, женат, есть дети Киев, Святошинский', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('785', '1', '42', null, null, null, '32', '&quot;Общий рабочий стаж — 9 лет июнь 2008 — н.в. 7 лет и 5 месяцев Менеджер по продажам (Полная занятость) ООО &quot;&quot; Цемлайн&quot;&quot;, г. Киев. Должностные обязанности и достижения: Поиск новых клиентов, ведение переговоров по цене и доставки п', '', '32 года (родился 24 сентября 1983), мужской, высшее образование, женат, детей нет Киев, м. Выдубичи', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('786', '1', '43', null, null, null, '33', 'Общий рабочий стаж — 2 года и 4 месяца', '4 500 ', '33 года (родился 22 сентября 1982), мужской, среднее образование, женат, детей нет Киев, Киево-Святошенский Гражданство: Украина', 'Мясник-обва', '1', null);
INSERT INTO `users` VALUES ('787', '1', '44', null, null, null, '60', 'Общий рабочий стаж — 38 лет и 8 месяцев', '', '60 лет (родился 9 июня 1955), мужской, высшее образование, женат, есть дети Киев Гражданство: Украина', 'Директор, г', '1', null);
INSERT INTO `users` VALUES ('788', '1', '45', null, null, null, '35', 'Общий рабочий стаж — 2 года и 10 месяцев', '', '35 лет (родился 28 августа 1980), мужской, среднее специальное образование Киев', 'Слесарь-рем', '1', null);
INSERT INTO `users` VALUES ('789', '1', '46', null, null, null, '64', 'Общий рабочий стаж — 47 лет', '', '64 года (родился 22 ноября 1950), мужской, среднее образование, женат, есть дети Киев, Отрадный', 'Токарь-коор', '1', null);
INSERT INTO `users` VALUES ('790', '1', '47', null, null, null, '29', 'Общий рабочий стаж — 10 лет и 11 месяцев', '2 800 ', '29 лет (родился 15 января 1986), мужской, среднее специальное образование, не женат, детей нет Киев, Голосеево', 'Водитель ав', '1', null);
INSERT INTO `users` VALUES ('791', '1', '48', null, null, null, '40', 'Общий рабочий стаж — 1 год и 1 месяц', '4 200 ', '40 лет (родился 1 июля 1975), мужской, высшее образование, женат, есть дети Киев, Троещина, м. Петровка', 'Руководител', '1', null);
INSERT INTO `users` VALUES ('792', '1', '49', null, null, null, '61', 'Общий рабочий стаж — 3 года и 10 месяцев', '8 000 ', '61 год (родился 13 апреля 1954), мужской, высшее образование, женат, есть дети Киев, Киев', 'Технический', '1', null);
INSERT INTO `users` VALUES ('793', '1', '50', null, null, null, '27', 'Общий рабочий стаж — 4 года и 9 месяцев', '5 500 ', '27 лет (родился 2 января 1988), мужской, высшее образование, не женат, детей нет Киев, Деснянский, м. Дарница , м. Петровка Готов к командировкам, гражданство: Украина', 'Заместитель', '1', null);
INSERT INTO `users` VALUES ('794', '1', '51', null, null, null, '22', 'Общий рабочий стаж — 6 месяцев', '6 000 ', '22 года (родился 6 января 1993), мужской, неполное высшее образование, не женат, детей нет Киев, Святошинский, м. Академгородок', 'Риелтор', '1', null);
INSERT INTO `users` VALUES ('795', '1', '52', null, null, null, '36', 'Общий рабочий стаж — 13 лет и 7 месяцев', '7 000 ', '36 лет (родилась 25 мая 1979), женский, высшее образование, не замужем, детей нет Киев, Вышгород, м. Героев Днепра Готова к командировкам, гражданство: Украина', 'Помощник ме', '1', null);
INSERT INTO `users` VALUES ('796', '1', '53', null, null, null, '31', 'Общий рабочий стаж — 1 год и 2 месяца', '', '31 год (родился 20 августа 1984), мужской, неполное высшее образование, женат, детей нет Киев, Позняки, м. Харьковская', 'Директор по', '1', null);
INSERT INTO `users` VALUES ('797', '1', '54', null, null, null, '32', 'Общий рабочий стаж — 7 лет и 2 месяца', '', '32 года (родился 7 ноября 1983), мужской, высшее образование, не женат, детей нет Киев Готов к командировкам', 'Инженер-мех', '1', null);
INSERT INTO `users` VALUES ('798', '1', '55', null, null, null, '51', 'Общий рабочий стаж — 3 года и 2 месяца', '', '51 год (родился 3 августа 1964), мужской, среднее специальное образование, женат, есть дети Киев, м. Петровка , м. Черниговская', 'Электрик, с', '1', null);
INSERT INTO `users` VALUES ('799', '1', '56', null, null, null, '34', 'Общий рабочий стаж — 13 лет и 7 месяцев', '4 200 ', '34 года (родилась 9 апреля 1981), женский, высшее образование, не замужем, детей нет Киев, м. Лыбедская', 'Агроном, ко', '1', null);
INSERT INTO `users` VALUES ('800', '1', '57', null, null, null, '36', '&quot;Общий рабочий стаж — 11 лет и 8 месяцев июнь 2010 — н.в. 5 лет и 5 месяцев Водитель (Полная занятость) ОАО &quot;&quot;Энергосбыт&quot;&quot;, г. Краснокаменск (Забайкальский край). Должностные обязанности и достижения: Водитель автомобиля УАЗ, пере', '', '36 лет (родился 9 ноября 1979), мужской, среднее специальное образование, женат, детей нет Киев, Краснокаменский район. г. Краснокаменск , готов к переезду Гражданство: Россия', 'Водитель', '1', null);
INSERT INTO `users` VALUES ('801', '1', '58', null, null, null, '31', 'Общий рабочий стаж — 6 лет и 9 месяцев', '4 000 ', '31 год (родилась 4 февраля 1984), женский, высшее образование, замужем, детей нет Киев, Киев', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('802', '1', '59', null, null, null, '32', 'Общий рабочий стаж — 3 года и 11 месяцев январь 2014 — н.в. 1 год и 10 месяцев Оператор базы данных ООО «АйТи Логистика», г. Киев. Должностные обязанности и достижения: Ведение базы данных, приём заявок, оформление заявок, контроль выполнения заявок в зад', '4 000 ', '32 года (родилась 9 октября 1983), женский, неполное высшее образование Киев Готова к командировкам', 'Офис-менедж', '1', null);
INSERT INTO `users` VALUES ('803', '1', '60', null, null, null, '40', 'Общий рабочий стаж — 10 лет и 5 месяцев', '3 000 ', '40 лет (родилась 2 августа 1975), женский, среднее специальное образование, замужем, есть дети Киев, Дарницкий, м. Черниговская , м. Красный хутор Гражданство: Украина', 'Оператор-ди', '1', null);
INSERT INTO `users` VALUES ('804', '1', '61', null, null, null, '38', 'Общий рабочий стаж — 4 года и 8 месяцев', '2 500 ', '38 лет (родилась 1 января 1977), женский, среднее специальное образование, замужем, есть дети Киев, Святошинский, м. Житомирская , м. Святошин', 'Диспетчер в', '1', null);
INSERT INTO `users` VALUES ('805', '1', '62', null, null, null, '29', '&quot;Общий рабочий стаж — 4 года и 3 месяца май 2008 — январь 2009 8 месяцев Административный помощник (Полная занятость) ООО &quot;&quot;Астера&quot;&quot;, г. Киев.&quot;', '4 000 ', '29 лет (родилась 2 апреля 1986), женский, высшее образование, замужем, детей нет Киев, м. Кловская, Липки. Печерск, м. Кловская', 'Начальник а', '1', null);
INSERT INTO `users` VALUES ('806', '1', '63', null, null, null, '27', 'Общий рабочий стаж — 11 месяцев', '3 850 ', '27 лет (родилась 3 мая 1988), женский, неполное высшее образование, не замужем, детей нет Киев, м. Академгородок', 'Администрат', '1', null);
INSERT INTO `users` VALUES ('807', '1', '64', null, null, null, '24', 'Общий рабочий стаж — 6 месяцев', '', '24 года (родился 21 апреля 1991), мужской, неполное высшее образование, не женат, детей нет Киев, Голосеевский Не готов к командировкам', 'Оператор в ', '1', null);
INSERT INTO `users` VALUES ('808', '1', '65', null, null, null, '32', 'Общий рабочий стаж — 8 лет и 7 месяцев', '5 000 ', '32 года (родилась 4 мая 1983), женский, высшее образование, не замужем, есть дети Киев, м. Нивки Готова к командировкам, гражданство: Украина', 'Менеджер по', '1', null);
INSERT INTO `users` VALUES ('809', '1', '66', null, null, null, '28', 'Общий рабочий стаж — 13 лет и 8 месяцев', '2 500 ', '28 лет (родилась 28 сентября 1987), женский, высшее образование, замужем, детей нет Киев', 'Оператор ПК', '1', null);
INSERT INTO `users` VALUES ('810', '1', '67', null, null, null, '25', 'Общий рабочий стаж — 5 месяцев', '', '25 лет (родилась 10 января 1990), женский, высшее образование, не замужем, детей нет Киев, Оболонь Гражданство: Украина', 'Помощник, с', '1', null);
INSERT INTO `users` VALUES ('811', '1', '68', null, null, null, '26', '&quot;Общий рабочий стаж — 5 лет и 4 месяца апрель 2013 — август 2013 4 месяца Офис -менеджер (Полная занятость) ТОВ &quot;&quot;М2&quot;&quot;, г. Киев. Должностные обязанности и достижения: Апрель 2013 — август 2013 &quot;&quot;М2&quot;&quot; — Строител', '5 000 ', '26 лет (родилась 6 февраля 1989), женский, неполное высшее образование, не замужем, детей нет Киев , готова к переезду Готова к командировкам, гражданство: Украина', 'Администрат', '1', null);
INSERT INTO `users` VALUES ('812', '1', '69', null, null, null, '28', 'Общий рабочий стаж — 8 лет и 10 месяцев', '4 000 ', '28 лет (родилась 25 декабря 1986), женский, высшее образование, не замужем, детей нет Киев Готова к командировкам, гражданство: Дальнее зарубежье', 'Офис-менедж', '1', null);
INSERT INTO `users` VALUES ('813', '1', '70', null, null, null, '24', 'Общий рабочий стаж — 5 месяцев', '3 000 ', '24 года (родилась 8 августа 1991), женский, высшее образование, не замужем, детей нет Киев, м. Черниговская Готова к командировкам, гражданство: Украина', 'Офис-менедж', '1', null);
INSERT INTO `users` VALUES ('814', '1', '71', null, null, null, '55', 'Общий рабочий стаж — 13 лет и 2 месяца', '3 500 ', '55 лет (родилась 30 марта 1960), женский, высшее образование, замужем, есть дети Киев, м. Святошин Не готова к командировкам, гражданство: Украина', 'Клиент-мене', '1', null);
INSERT INTO `users` VALUES ('815', '1', '72', null, null, null, '25', 'Общий рабочий стаж — 4 месяца', '', '25 лет (родилась 1 декабря 1989), женский, высшее образование, замужем, детей нет Киев Не готова к командировкам, гражданство: Украина', 'Администрат', '1', null);
INSERT INTO `users` VALUES ('816', '1', '73', null, null, null, '26', 'Общий рабочий стаж — 3 года и 10 месяцев', '5 000 ', '26 лет (родилась 26 июля 1989), женский, среднее специальное образование, замужем, есть дети Киев, Киевская обл., м. Святошин , готова к переезду Готова к командировкам, гражданство: Украина', 'Секретарь /', '1', null);
INSERT INTO `users` VALUES ('817', '1', '74', null, null, null, '29', 'Общий рабочий стаж — 9 месяцев', '3 500 ', '29 лет (родилась 22 сентября 1986), женский, высшее образование, не замужем, детей нет Киев, Арсенальная, Кловская, Печерская. , готова к переезду Готова к командировкам, гражданство: Украина', 'Администрат', '1', null);
INSERT INTO `users` VALUES ('818', '1', 'Pavel', null, null, null, null, null, null, null, null, '2', null);