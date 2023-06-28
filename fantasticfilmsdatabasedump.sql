CREATE DATABASE  IF NOT EXISTS `imdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `imdb`;
-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: localhost    Database: imdb
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_first_name` varchar(64) NOT NULL,
  `user_last_name` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'Elissa','Alarmani'),(2,'Pauline','Liu');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `critic`
--

DROP TABLE IF EXISTS `critic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `critic` (
  `critic_id` varchar(15) NOT NULL,
  `critic_user_name` varchar(64) NOT NULL,
  PRIMARY KEY (`critic_id`),
  UNIQUE KEY `critic_user_name` (`critic_user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critic`
--

LOCK TABLES `critic` WRITE;
/*!40000 ALTER TABLE `critic` DISABLE KEYS */;
INSERT INTO `critic` VALUES ('ur44112735','A_Different_Drummer'),('ur96416540','acedj'),('ur36885175','adrien_ngoc_1701'),('ur1696608','Agent10'),('ur16117882','alexkolokotronis'),('ur15148330','AlsExGal'),('ur11842025','ametaphysicalshark'),('ur0562732','Anonymous_Maxine'),('ur64091169','artgutierrez'),('ur67306446','ArtVandelayImporterExporter'),('ur118977607','auuwws'),('ur0945066','BA_Harrison'),('ur1288555','BackFire83'),('ur2483625','bkoganbing'),('ur0342623','blanche-2'),('ur1002035','bob the moo'),('ur1416505','Boba_Fett1138'),('ur56005872','Bored_Dragon'),('ur0068788','Boyo-2'),('ur0375636','Buddy-51'),('ur24740649','CalRhys'),('ur4445210','ccthemovieman-1'),('ur67278807','chaswe-28402'),('ur1501216','Chris Knipp'),('ur88612516','cinephile-27690'),('ur2707735','classicsoncall'),('ur2488512','claudio_carvalho'),('ur2020269','Coventry'),('ur0100872','Cowman'),('ur6201371','cricketbat'),('ur6136051','Davor_Blazevic_1959'),('ur1219578','dbdumonteil'),('ur0892646','dee.reid'),('ur0543054','dfranzen70'),('ur0317399','DICK STEEL'),('ur2666204','DrLenera'),('ur31328960','Ed-Shullivan'),('ur8462477','eddie_baggins'),('ur65733095','elvircorhodzic'),('ur3608743','EUyeshima'),('ur64692948','evansjoshyr'),('ur18970655','Fella_shibby'),('ur0806494','ferguson-6'),('ur2626332','FiendishDramaturgy'),('ur0867063','FilmFlaneur'),('ur2339662','FilmOtaku'),('ur0508954','fjhuerta-2'),('ur0556711','FlickJunkie-2'),('ur1234929','gavin6942'),('ur66111139','gbill-74877'),('ur0756238','Geeky Randy'),('ur15794099','gogoschka-1'),('ur0035842','Gordon-11'),('ur67432377','Her-Excellency'),('ur0278527','Hitchcoc'),('ur16161013','hitchcockthelegend'),('ur0491610','howard.schumann'),('ur119249824','hwm-05554'),('ur2510120','ivko'),('ur14121727','j-a-julian'),('ur55640799','jack_o_hasanov_imdb'),('ur87808462','jackgdemoss'),('ur27779876','jacobs-greenwood'),('ur1298472','jaywolfenstien'),('ur26226712','Jeremy_Urquhart'),('ur1406078','jotix100'),('ur0954062','khatcher-2'),('ur61197531','Kirpianuscus'),('ur5876717','kosmasp'),('ur0556667','kylopod'),('ur2420383','Lechuguilla'),('ur15298231','Lejink'),('ur0482513','Leofwine_draca'),('ur23582121','Loving_Silence'),('ur0853359','lugonian'),('ur3270789','ma-cortes'),('ur5156288','MaxBorg89'),('ur19484559','MoistMovies'),('ur0111563','Movie-12'),('ur1173088','MovieAddict2016'),('ur87850731','MrHeraclius'),('ur77838279','myriamlenys'),('ur0176092','Nazi_Fighter_David'),('ur7813355','neil-476'),('ur2042633','noralee'),('ur0384847','nycritic'),('ur1559834','OttoVonB'),('ur126297403','pickle-92642'),('ur26820801','Pjtaylor-96-138044'),('ur2467618','planktonrules'),('ur0463200','preppy-3'),('ur113529171','Pukeonthestreet'),('ur3728510','pyrocitor'),('ur0453068','Quinoa1984'),('ur59265736','RJBrez'),('ur0819382','rmax304823'),('ur82002563','santhosh-10290'),('ur63572901','shawnmikedryer'),('ur1062540','simon_booth'),('ur15311310','Sleepin_Dragon'),('ur2375356','slokes'),('ur1293485','Smells_Like_Cheese'),('ur2898520','SnoopyStyle'),('ur1174211','Snow Leopard'),('ur0060242','Stephen-12'),('ur0150331','stryker-5'),('ur2637155','Surecure'),('ur1010941','surenm'),('ur0643062','tedg'),('ur1116241','telegonus'),('ur0688559','tfrizzell'),('ur0805697','the red duchess'),('ur2354731','the-evil-cult'),('ur20552756','TheLittleSongbird'),('ur67902729','TheMovieDiorama'),('ur4130201','tieman64'),('ur2950767','tjcclarke'),('ur87552659','tkarlmann'),('ur2326544','TOMASBBloodhound'),('ur64798417','Top_Dawg_Critic'),('ur53620903','TVpotatoCat'),('ur0438066','TxMike'),('ur1318549','uds3'),('ur2000855','vchimpanzee'),('ur0509769','wisewebwoman'),('ur0101706','Wizard-8'),('ur4409266','Wuchakk'),('ur4103165','Xstal'),('ur0446676','yawn-2'),('ur0391152','zetes'),('ur7826013','zkonedog');
/*!40000 ALTER TABLE `critic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured_imdb_review`
--

DROP TABLE IF EXISTS `featured_imdb_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `featured_imdb_review` (
  `imdb_review_id` varchar(50) NOT NULL,
  `imdb_review_summary` text NOT NULL,
  `critic_id` varchar(50) NOT NULL,
  PRIMARY KEY (`imdb_review_id`),
  KEY `critic_id` (`critic_id`),
  CONSTRAINT `featured_imdb_review_ibfk_1` FOREIGN KEY (`critic_id`) REFERENCES `critic` (`critic_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured_imdb_review`
--

LOCK TABLES `featured_imdb_review` WRITE;
/*!40000 ALTER TABLE `featured_imdb_review` DISABLE KEYS */;
INSERT INTO `featured_imdb_review` VALUES ('rw0002492','\"\"A Must See Silent Comedy\"\"','ur1174211'),('rw0003413','\"\"Astounding Creativity\"\"','ur1174211'),('rw0005470','\"\"an incredible directorial vision, and a devastating lead in Falconetti, make this one of the greatest achievements in all celluloid\"\"','ur0453068'),('rw0007532','\"\"Lady and the Tramp, before animation and at the start of talkies one of the most wonderful films ever conceived and executed\"\"','ur0453068'),('rw0020075','\"\"A National Treasure\"\"','ur0556711'),('rw0020959','\"\"Still Has Its Magic\"\"','ur1174211'),('rw0021783','\"\"The Man With Hitler\'s Face\"\"','ur0853359'),('rw0023962','\"\"CITIZEN KANE may let some people down, but it\'s still worth seeing.\"\"','ur0100872'),('rw0030161','\"\"One of the best films noir ever, Double Indemnity communicates with amazing effectiveness the depths of depravity, greed, lust, and betrayal of the seemingly innocent and beautiful.\"\"','ur0562732'),('rw0038353','\"\"Quiet DesperationItalian Style.\"\"','ur0688559'),('rw0047035','\"\"Only when he learned he would die did he start to live\"\"','ur1559834'),('rw0052668','\"\"A Deep  Entertaining Classic\"\"','ur1174211'),('rw0053357','\"\"Solid Gold\"\"','ur1559834'),('rw0055920','\"\"Absolutely Perfect. One of the best films ever made. \"\"','ur0391152'),('rw0060044','\"\"The overused term \"classic movie\" really comes into its own here!\"\"','ur1318549'),('rw0062665','\"\"A masterpiece\"\"','ur0491610'),('rw0066252','\"\"Distinctive  Unforgettable Masterpiece\"\"','ur1174211'),('rw0068933','\"\"\"N\'Oublie Pas Les Ordures\"\"\"','ur0150331'),('rw0072083','\"\"It\'s the Little Things\"\"','ur1116241'),('rw0076063','\"\"\"You don\'t mind if I kill all of you\" \"What Kill me if you can\" \"It\'ll hurt.\"\"\"','ur0453068'),('rw0077919','\"\"Makes a Strong Case for Best Film Ever.\"\"','ur0688559'),('rw0079616','\"\"One of the most important films of all time\"\"','ur2339662'),('rw0083653','\"\"If you like ransompolice storiesmysteries, and have interest in Kurosawa or Mifune, check it out at least once\"\"','ur0453068'),('rw0088316','\"\"No winners\"\"','ur1501216'),('rw0094926','\"\"A very powerful personal experience\"\"','ur0491610'),('rw0100969','\"\"Unmatched accomplishment\"\"','ur1062540'),('rw0115514','\"\"One of those films you have to watch multiple times\"\"','ur1696608'),('rw0135607','\"\"Breathtaking in its scope and tragic grandeur...\"\"','ur0176092'),('rw0148846','\"\"It Is More Than a Film, It Is Like a Crystal Ball\"\"','ur0688559'),('rw0156286','\"\"One of the most successful movies of all time and I\'m not talking about the Box Office take\"\"','ur2626332'),('rw0166364','\"\"Redux still brilliant but now with new strengths and weaknesses\"\"','ur1002035'),('rw0175328','\"\"All the fun of the original with a much better, darker plot\"\"','ur1002035'),('rw0179295','\"\"Essential masterpiece; powerful De Niro; simply one of the best films of all time.\"\"','ur1173088'),('rw0194126','\"\"Took nearly twenty years to make  not a single minute was wasted\"\"','ur0954062'),('rw0197822','\"\"A classic that still holds up to this very day\"\"','ur1173088'),('rw0208335','\"\"One of those movies that you\'ll never forget\"\"','ur1293485'),('rw0216010','\"\"This is the movie that made a big break through for scifi movies\"\"','ur1293485'),('rw0225549','\"\"My third favorite Kurosawa film deliberately paced not painfully so, heavy on tragedy, and glorious in overall artistry\"\"','ur0453068'),('rw0237740','\"\"One of the best adaptations of a Stephen King story ever.\"\"','ur0562732'),('rw0258302','\"\"A powerful film that shows the true cost of war\"\"','ur0892646'),('rw0268463','\"\"A powerful antidote to conformism\"\"','ur0508954'),('rw0302749','\"\"I\'d put it in with the Disney classics\"\"','ur1293485'),('rw0339201','\"\"Let\'s see the world through the eyes of Forrest Gump\"\"','ur1293485'),('rw0342377','\"\"One of my favorite movies of all time!\"\"','ur1293485'),('rw0343133','\"\"Masterful\"\"','ur2950767'),('rw0358218','\"\"Now it looks like Disney Land\"\"','ur1293485'),('rw0373152','\"\"Technically impressive with great script and sharp wit\"\"','ur1002035'),('rw0410304','\"\"a work of art\"\"','ur0375636'),('rw0418096','\"\"A slow burner, a fine achievement\"\"','ur0060242'),('rw0422740','\"\"A \"Chinatown\" for the 1990s\"\"','ur0688559'),('rw0426392','\"\"one of the best films i\'ve ever had the chance to see\"\"','ur0391152'),('rw0454593','\"\"One of the most penetrating films of the past several years. 5 out of 5\"\"','ur0111563'),('rw0501582','\"\"YES NO SONG OR DANCE NUMBERS\"\"','ur0101706'),('rw0593815','\"\"Entertaining and Thought Provoking.\"\"','ur2354731'),('rw0663117','\"\"There are few films that can make me laugh like this one can\"\"','ur2339662'),('rw0672222','\"\"This is rated so highly cause it deserves it\"\"','ur0068788'),('rw0729022','\"\"A smartly modern elegy.\"\"','ur0805697'),('rw0765374','\"\"Witty con man.\"\"','ur1406078'),('rw0773564','\"\"Yes, it\'s THAT good\"\"','ur2020269'),('rw0779920','\"\"Powerful, quiet, effortless Crowe\"\"','ur0543054'),('rw0902530','\"\"\"Eternal Sunshine of the Spotless Mind\" is a bizarre but wonderful movie, a very strange and remarkably tender experience.\"\"','ur1173088'),('rw0954092','\"\"An unassuming film that is thought provoking on so many levels, well acted and thoroughly enjoyable however you come to it\"\"','ur1002035'),('rw0954846','\"\"Adorable, funny, perfect voice casting for the lead roles\"\"','ur2000855'),('rw0955497','\"\"Excellent, depressing, but excellent\"\"','ur1293485'),('rw0959546','\"\"A fantastic and powerful film\"\"','ur2637155'),('rw0977367','\"\"The only problem...\"\"','ur2510120'),('rw0987277','\"\"One of the greatest wars films ever made\"\"','ur0867063'),('rw1000255','\"\"The Fundamental Things Apply...\"\"','ur2375356'),('rw1015517','\"\"Don\'t Forgo Fargo\"\"','ur0819382'),('rw1024609','\"\"My favourite film of all time\"\"','ur2666204'),('rw1024676','\"\"a tribute to the endurance of man and nature, featuring a masterpiece of a performance\"\"','ur0453068'),('rw1026203','\"\"Georgia on my mind\"\"','ur1406078'),('rw1043739','\"\"A wild and surreal trip into the mind of a master.\"\"','ur1010941'),('rw1050018','\"\"A Perfect Chemistry, In One of the Most Beautiful Romances I Have Ever Seen\"\"','ur2488512'),('rw1051627','\"\"Epic\"\"','ur1298472'),('rw1058631','\"\"What an Action Thriller Should Be.\"\"','ur0384847'),('rw1122995','\"\"exceptionally well made\"\"','ur2467618'),('rw1130372','\"\"One of the most powerful movies I have ever seen.\"\"','ur1416505'),('rw1151361','\"\"Why do we fall So we can learn to pick ourselves up. And such is the case for the Batman franchise\"\"','ur3728510'),('rw1175679','\"\"Samurai Genre is Used to Exposively Indict Japanese Politics and Culture\"\"','ur2042633'),('rw1177257','\"\"The truth about the Exorcist.\"\"','ur1298472'),('rw1195687','\"\"A Magnificent Timeless Tale of Ambition, Manipulation and Betrayal  Certainly One of the Best Classics Ever\"\"','ur2488512'),('rw1198894','\"\"Dr.Lecter, I\'d like to see you again...\"\"','ur5156288'),('rw1206636','\"\"Almost Too HeartWrenching To Watch\"\"','ur4445210'),('rw1218264','\"\"The masterpiece without a message\"\"','ur0556667'),('rw1236041','\"\"the American thriller of the nineties\"\"','ur1219578'),('rw1237040','\"\"Ozu\'s Quietly Brilliant Masterpiece Deserves Your Attention\"\"','ur3608743'),('rw1246535','\"\"The Hero As Comedian\"\"','ur2483625'),('rw1247136','\"\"\"To My Big Brother George, The Richest Man In Town\"\"\"','ur2483625'),('rw1269676','\"\"The Most Impressive, Depressive and Realistic Dramatic Movie about the World War II\"\"','ur2488512'),('rw1275605','\"\"Heart is the Mediator Between Brains and Muscles A Futuristic View of the Fight of Classes\"\"','ur2488512'),('rw1297356','\"\"Pure Bloody Genius\"\"','ur1234929'),('rw1308317','\"\"The Goal Is Always Justice\"\"','ur2483625'),('rw1308663','\"\"First, And Still The Best Of LOTR\"\"','ur4445210'),('rw1327523','\"\"WHAT is the capital of Assyria I don\'t know that\"\"','ur5156288'),('rw1334836','\"\"It was 1978 and everyone in the audience was about to wet their pants\"\"','ur0446676'),('rw1336188','\"\"A brilliant masterpiece from a masterful director\"\"','ur1173088'),('rw1353708','\"\"Chaplin\'s best what a film\"\"','ur2467618'),('rw1383383','\"\"Still Stirring Wartime Adventure and Compelling Psychological Drama Exhibit David Lean at His Peak\"\"','ur3608743'),('rw1393693','\"\"I\'ve Decided to Take My Doctor\'s Advice, I\'m going to become a mensch.\"\"','ur2483625'),('rw1405659','\"\"For a girl who doesn\'t enjoy westerns much, this was one of the greatest films ever!\"\"','ur1293485'),('rw1408915','\"\"They Couldn\'t Take An Ant Hill\"\"','ur2483625'),('rw1476677','\"\"We Intend To Watch This Basket Very Closely.\"\"','ur2483625'),('rw1487672','\"\"Economic Dislocation\"\"','ur2483625'),('rw1516950','\"\"Still Very Good Even When You Know The Ending\"\"','ur4445210'),('rw1611723','\"\"Working The Big Con\"\"','ur2483625'),('rw1614010','\"\"Outstandingly great movie\"\"','ur0509769'),('rw1642966','\"\"The People\'s War Veterans Return Home\"\"','ur2483625'),('rw1819666','\"\"Very grim and disturbing but you can\'t stop watching\"\"','ur0463200'),('rw1840254','\"\"The Truth Hurts\"\"','ur16117882'),('rw1840571','\"\"A true Hollywood horror story\"\"','ur0463200'),('rw1868805','\"\"Kazan\'s film constitutes an extraordinary tour de force of fluid direction and nervous, edgy acting\"\"','ur0176092'),('rw1874296','\"\"Loco and Motive\"\"','ur0643062'),('rw1900551','\"\"Who says popular films can\'t be art \"WALLE\" is magical\"\"','ur11842025'),('rw1953427','\"\"Just As Intriguing The Second Time, Too!\"\"','ur4445210'),('rw1990728','\"\"Yet another Eastwood gem\"\"','ur11842025'),('rw2028024','\"\"The Shaman\'s Eyes\"\"','ur4130201'),('rw2055218','\"\"Great Paintings Come To Life\"\"','ur4445210'),('rw2099585','\"\"Beautiful Film, Even Better Than The Book\"\"','ur4445210'),('rw2119628','\"\"Note to Hollywood: This is how you make an action film.\"\"','ur2326544'),('rw2143371','\"\"A three hour film that feels too short\"\"','ur0035842'),('rw2158899','\"\"Paint It Black\"\"','ur2420383'),('rw2170460','\"\"Moles And Rats\"\"','ur2483625'),('rw2184417','\"\"He doesn\'t know it\'s a show. He thinks it\'s a damn fight\"\"','ur2707735'),('rw2186063','\"\"Unprecedented loyalty in a story of ageold friendship\"\"','ur6136051'),('rw2192552','\"\"Ahead of its time\"\"','ur15148330'),('rw2222837','\"\"A Nutshell Review: How to Train Your Dragon\"\"','ur0317399'),('rw2236356','\"\"So good in so many ways\"\"','ur20552756'),('rw2250278','\"\"Not only the best of the Die Hard franchise but one of the best movies of the action genre\"\"','ur20552756'),('rw2284594','\"\"Some birds aren\'t meant to be caged.\"\"','ur16161013'),('rw2294579','\"\"An Epic in every sense of the word.\"\"','ur23582121'),('rw2301618','\"\"For all I know you are the rat; and this might be the best heist homage movie ever\"\"','ur16161013'),('rw2305314','\"\"Unforgettable and Heartbreaking Bleak Tale of Friendship and Loneliness\"\"','ur2488512'),('rw2305434','\"\"M for masterful\"\"','ur15298231'),('rw2333889','\"\"An amazing third \"Story\"\"\"','ur0892646'),('rw2342827','\"\"Stunning\"\"','ur20552756'),('rw2362980','\"\"Now that\'s entertainment\"\"','ur15148330'),('rw2399163','\"\"That\'s right. I\'m just a fella now. I ain\'t no different than anyone else no more.\"\"','ur16161013'),('rw2418301','\"\"Exceptionally well done though it\'s not the sort of film for everyone...but what movie is\"\"','ur2467618'),('rw2437714','\"\"Wonderfully entertaining.\"\"','ur2467618'),('rw2459610','\"\"Gives meaning to the phrase, save the best until last\"\"','ur20552756'),('rw2473566','\"\"Minny Don\'t Burn Chicken\"\"','ur0806494'),('rw2524388','\"\"One of the Most Unique and Beautiful Friendships ever Committed to Film\"\"','ur1559834'),('rw2548767','\"\"Mankind Is Flawed\"\"','ur2488512'),('rw2692389','\"\"The spirit of freedom vs. the spirit of legalism\"\"','ur4409266'),('rw2696668','\"\"Two musicians dressed as women join an allgirl band to escape the mobsters\' vendetta\"\"','ur3270789'),('rw2729565','\"\"A wonderful conclusion to a wonderful trilogy.\"\"','ur0756238'),('rw2873286','\"\"Lee Van Cleef outstanding\"\"','ur2898520'),('rw2893623','\"\"Slavery is an evil that should befall none\"\"','ur1288555'),('rw2899819','\"\"\'My child always comes first in class\', this syndrome has truly ruined everything.\"\"','ur18970655'),('rw2900651','\"\"Last, butchered, unappreciated, work from one of the greatest...\"\"','ur44112735'),('rw2913187','\"\"The quintessential Vietnam war movie\"\"','ur2898520'),('rw2922899','\"\"One of the most intelligent comedies ever made\"\"','ur15794099'),('rw2923008','\"\"Best romantic comedy ever\n\"\"','ur15794099'),('rw2923496','\"\"As relevant today as it was then  and still very funny\"\"','ur15794099'),('rw2923502','\"\"In one word perfection\"\"','ur15794099'),('rw2923989','\"\"\"Luke\" is a character Newman was born to play and this is one hell of a beautiful film\"\"','ur15794099'),('rw2928533','\"\"Strange, touching and beautiful\"\"','ur15794099'),('rw2931192','\"\"Real tear jerker opening\"\"','ur2898520'),('rw2943582','\"\"High energy and wonderfully excessive as it delivers an engaging true story, but the lack of morality anywhere was a limiting factor\"\"','ur1002035'),('rw2951920','\"\"Once Again: The Children\'s Hour\"\"','ur0278527'),('rw3038370','\"\"The Pinnacle Of Flawless Films\"\"','ur24740649'),('rw3063658','\"\"They said you were a giant. They said you can crush a man\'s skull with one hand.\"\"','ur16161013'),('rw3214800','\"\"A classy character study of a disturbed individual but what is the point\"\"','ur0945066'),('rw3248454','\"\"Out of this world\"\"','ur5876717'),('rw3320680','\"\"Imagine yourself as a 5 year old child discovering for the first time a brand new world exists outside of your room\"\"','ur31328960'),('rw3344973','\"\"Cinema has rarely been this exciting\"\"','ur15794099'),('rw3348121','\"\"The film with the highest rewatchability factor of all time\"\"','ur15794099'),('rw3355127','\"\"Epic\"\"','ur15794099'),('rw3409638','\"\"fantastic film that takes place in postwar Vienna\"\"','ur0342623'),('rw3420996','\"\"Pure action spectacle\"\"','ur0482513'),('rw3422764','\"\"A Story of Passion and Commitment\"\"','ur0278527'),('rw3429340','\"\"Was really surprised by how good this was\"\"','ur20552756'),('rw3501763','\"\"Tense, fearless\"\"','ur0543054'),('rw3519137','\"\"A hotel well worth revisiting more than once\"\"','ur20552756'),('rw3522371','\"\"It will leave you shaken....\"\"','ur2467618'),('rw3522851','\"\"Just a great movie all around, but a very dark tale\"\"','ur15148330'),('rw3533358','\"\"Genius thriller\"\"','ur0482513'),('rw3540091','\"\"A cinematic bad boy\"\"','ur0482513'),('rw3596039','\"\"A stone cold, 100 gangster classic\"\"','ur0482513'),('rw3596666','\"\"Pure cinematic magic, won Best Picture of the Year and rightfully so\"\"','ur27779876'),('rw3615836','\"\"Stop the Abuse\"\"','ur0278527'),('rw3619927','\"\"A film with a nameless protagonist and an invisible namesake\"\"','ur15148330'),('rw3631865','\"\"could be the greatest love story of all time\"\"','ur44112735'),('rw3655766','\"\"So Much More Than Just A \"Shark Movie\"\"\"','ur7826013'),('rw3673513','\"\"Engaging and attractively packaged and delivered\"\"','ur1002035'),('rw3727515','\"\"A Brazilian masterwork\"\"','ur20552756'),('rw3766827','\"\"\"Gentlemen, you can\'t fight in here This is the War Room.\"\"\"','ur65733095'),('rw3803446','\"\"Fantastic acting, script, and direction in a thoughtprovoking movie\"\"','ur66111139'),('rw3849375','\"\"The devil you know is better than the devil you don\'t.\"\"','ur2707735'),('rw3854357','\"\"That\'s got to be the best pirate I\'ve ever seen.\"\"','ur2707735'),('rw3871855','\"\"\"...it\'s not how you fall that matters. It\'s how you land.\"\"\"','ur2707735'),('rw3876392','\"\"Anger begets more anger\"\"','ur0342623'),('rw4059597','\"\"A Milestone Of Science Fiction And A Cyberpunk Masterpiece\"\"','ur15794099'),('rw4078243','\"\"Marvellous Ending\"\"','ur67278807'),('rw4078668','\"\"Whiplash is a modern day masterpiece.\"\"','ur67902729'),('rw4080218','\"\"People should not be afraid of their governments. Governments should be afraid of their people.\"\"','ur56005872'),('rw4080935','\"\"You have to fight in a way that people remember you.\"\"','ur2707735'),('rw4115349','\"\"\"When a person grows up, do his dreams become smaller\"\"\"','ur2707735'),('rw4150044','\"\"Succeeds on all levels\"\"','ur7813355'),('rw4158677','\"\"A stunning and powerful thriller\"\"','ur8462477'),('rw4198042','\"\"A rare breed of film seldom seen anymore: a true masterpiece.\"\"','ur26820801'),('rw4391617','\"\"What a crime thriller should be\"\"','ur6201371'),('rw4446684','\"\"Not everyone can become a great artist; but a great artist can come from anywhere\"\"','ur88612516'),('rw4591778','\"\"I Was Captivated\"\"','ur0278527'),('rw4692192','\"\"Masterpiece\"\"','ur36885175'),('rw4744749','\"\"Fantastic...but possibly overwhelming.\"\"','ur2467618'),('rw4786544','\"\"A question of taste\"\"','ur20552756'),('rw4814867','\"\"Not as good as infinity war..\"\"','ur19484559'),('rw4978432','\"\"One of the best films of this decade\"\"','ur26226712'),('rw5010692','\"\"One of the most memorable plot twists of this decade\"\"','ur87808462'),('rw5163719','\"\"thumping good Western with an almost operatic quality\"\"','ur77838279'),('rw5228002','\"\"Just wow\"\"','ur96416540'),('rw5234910','\"\"I hated this movie\"\"','ur67306446'),('rw5261062','\"\"Now I See Why\"\"','ur0278527'),('rw5341855','\"\"In a sea of generic Christmas movies, Klaus stands out\"\"','ur6201371'),('rw5369393','\"\"Hard to Rate ... been there\"\"','ur14121727'),('rw5412227','\"\"Holds up as a classic.\"\"','ur15311310'),('rw5458761','\"\"One of the best films ever made.\"\"','ur15311310'),('rw5475659','\"\"Hacksaw Ridge\"\"','ur87850731'),('rw5476552','\"\"A great movie you can watch again and again\"\"','ur113529171'),('rw5478826','\"\"The Dark Knight\"\"','ur87850731'),('rw5480034','\"\"Capernaum\"\"','ur87850731'),('rw5506020','\"\"\"Every man dies, not every man really lives.\"\"\"','ur87850731'),('rw5512536','\"\"I have NEVER seen such a performance ... ever\"\"','ur87552659'),('rw5738280','\"\"I love, Love, LOVE this film.\"\"','ur67432377'),('rw5882180','\"\"just superb\"\"','ur0806494'),('rw6041152','\"\"special\"\"','ur61197531'),('rw6065804','\"\"Great movie, I hated every minute of it\"\"','ur119249824'),('rw6131865','\"\"The best trilogy in the history of cinema\"\"','ur118977607'),('rw6152495','\"\"Guilty Until Proven Innocent...\"\"','ur4103165'),('rw6186405','\"\"Forty years on, and it\'s still outstanding.\"\"','ur15311310'),('rw6337774','\"\"Perfect film to end Wolverine\'s story\"\"','ur64091169'),('rw6351812','\"\"Million Dollar Baby\"\"','ur118977607'),('rw6380258','\"\"Tarantino at his best\"\"','ur63572901'),('rw6521351','\"\"Best movie of the MCU, incredible from start to finish.\"\"','ur59265736'),('rw6616511','\"\"One of the best films ever made\"\"','ur64692948'),('rw6808367','\"\"Fantastic\"\"','ur66111139'),('rw6810224','\"\"He travels the fastest who travels alone\"\"','ur20552756'),('rw7189051','\"\"A look at dementia from the opposite angle.\"\"','ur0438066'),('rw7259411','\"\"Good\"\"','ur55640799'),('rw7316428','\"\"Excellent but not for all audiences\"\"','ur2467618'),('rw7383760','\"\"Classic for the new generation Yes\"\"','ur126297403'),('rw7503156','\"\"Jai Bhim\"\"','ur82002563'),('rw7647233','\"\"Loved every second\"\"','ur0035842'),('rw7665769','\"\"Love is Beautiful...\"\"','ur4103165'),('rw8168012','\"\"The truly epic blockbuster we needed.\"\"','ur64798417'),('rw8212272','\"\"Perpetually Entertaining...\"\"','ur4103165'),('rw8212285','\"\"Perpetually Entertaining...\"\"','ur4103165'),('rw8987715','\"\"The King of Tragedy...\"\"','ur53620903');
/*!40000 ALTER TABLE `featured_imdb_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_name` varchar(20) NOT NULL,
  `genre_description` varchar(256) NOT NULL,
  PRIMARY KEY (`genre_name`),
  UNIQUE KEY `genre_description` (`genre_description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('genre','genre_description'),('Comedy','Hilarious stories that tickle your funny bone. Lighthearted humor, witty dialogues, and comedic timing. Laugh-out-loud moments, comedic mishaps, and amusing characters. Playful and entertaining plots that bring joy and laughter. '),('Western','Iconic tales set in the untamed frontier. Vast landscapes, rugged cowboys, and lawless towns. High noon duels, horseback pursuits, and frontier justice. Themes of honor, redemption, and the clash between civilization and the wild.'),('Animation','Imaginative worlds brought to life with vibrant visuals. Captivating stories that transcend reality. Colorful characters and endearing personalities. Creativity unleashed through stunning artistry. Delightful humor and magical adventures.'),('Biography','Inspirational true stories depicting remarkable lives. Personal journeys, triumphs, and struggles. Intimate exploration of real individuals and their impact. Captivating narratives, authentic portrayals. Thought-provoking, emotional, and inspiring'),('Drama','Intense emotions, complex relationships, and personal struggles. Provocative themes of love, loss, redemption. Powerful performances, thought-provoking storytelling. Profound exploration of the human condition'),('Mystery','Intriguing puzzles and enigmatic tales. Unraveling secrets, hidden clues, and suspenseful investigations. Complex characters with hidden agendas. Twists, turns, and unexpected revelations. Atmospheric settings and a sense of intrigue.'),('Film-Noir','Stylish and atmospheric tales of darkness and deception. Shadowy visuals, smoky backdrops, and hardboiled detectives. Femme Fatales, morally ambiguous characters, and intricate plots. A blend of crime, mystery, and psychological drama.'),('Horror','Terrifying tales that evoke fear and suspense. Unsettling atmospheres, chilling tension, and shocking scares. Supernatural entities, menacing creatures, and psychological terrors. Heart-pounding moments, dark mysteries, and unexpected twists.'),('Action','Thrilling adventures, explosive stunts. Dynamic heroes, intense combat. Fast-paced storytelling, exhilarating visuals. Non-stop entertainment, adrenaline rush'),('Crime','Thrilling narratives of crime, justice, and suspense. Intricate plots, morally ambiguous characters. Tension, deceit, high-stakes pursuits'),('Adventure','Thrilling quests and daring expeditions. Epic journeys to uncharted territories. Courageous heroes facing unknown perils. Breathtaking landscapes and exotic locales. Action-packed excitement. Unforgettable escapades and the spirit of discovery');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_actor`
--

DROP TABLE IF EXISTS `lead_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_actor` (
  `actor_id` varchar(10) NOT NULL,
  `actor_name` varchar(500) NOT NULL,
  `act_date_of_birth` date NOT NULL,
  `act_origin_country` varchar(500) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_actor`
--

LOCK TABLES `lead_actor` WRITE;
/*!40000 ALTER TABLE `lead_actor` DISABLE KEYS */;
INSERT INTO `lead_actor` VALUES ('a0000007','Humphrey Bogart','1899-12-25','United States of America'),('a0000008','Marlon Brando','1924-04-03','United States of America'),('a0000012','Bette Davis','1908-04-05','United States of America'),('a0000018','Kirk Douglas','1916-12-09','United States of America'),('a0000020','Henry Fonda','1905-05-16','United States of America'),('a0000022','Clark Gable','1901-02-01','United States of America'),('a0000023','Judy Garland','1922-06-10','United States of America'),('a0000026','Cary Grant','1904-01-18','England'),('a0000032','Charlton Heston','1923-11-04','United States of America'),('a0000034','William Holden','1918-04-17','United States of America'),('a0000036','Buster Keaton','1895-10-04','United States of America'),('a0000037','Gene Kelly','1912-08-23','United States of America'),('a0000048','Peter Lorre','1904-06-26','Slovakia'),('a0000054','Marilyn Monroe','1926-06-01','United States of America'),('a0000056','Paul Newman','1925-01-26','United States of America'),('a0000059','Laurence Olivier','1907-05-22','England'),('a0000060','Gregory Peck','1916-04-05','United States of America'),('a0000061','Tyrone Power','1914-05-05','United States of America'),('a0000071','James Stewart','1908-05-20','United States of America'),('a0000075','Spencer Tracy','1900-04-05','United States of America'),('a0000093','Brad Pitt','1963-12-18','United States of America'),('a0000098','Jennifer Aniston','1969-02-11','United States of America'),('a0000100','Rowan Atkinson','1955-01-06','England'),('a0000120','Jim Carrey','1962-01-17','Canada'),('a0000122','Charles Chaplin','1889-04-16','England'),('a0000126','Kevin Costner','1955-01-18','United States of America'),('a0000128','Russell Crowe','1964-04-07','New Zealand'),('a0000129','Tom Cruise','1962-07-03','United States of America'),('a0000134','Robert De Niro','1943-08-17','United States of America'),('a0000136','Johnny Depp','1963-06-09','United States of America'),('a0000138','Leonardo DiCaprio','1974-11-11','United States of America'),('a0000142','Clint Eastwood','1930-05-31','United States of America'),('a0000146','Ralph Fiennes','1962-12-22','England'),('a0000148','Harrison Ford','1942-07-13','United States of America'),('a0000149','Jodie Foster','1962-11-19','United States of America'),('a0000150','Michael J. Fox','1961-06-09','Canada'),('a0000151','Morgan Freeman','1937-06-01','United States of America'),('a0000152','Richard Gere','1949-08-31','United States of America'),('a0000158','Tom Hanks','1956-07-09','United States of America'),('a0000160','Ethan Hawke','1970-11-06','United States of America'),('a0000164','Anthony Hopkins','1937-12-31','Wales'),('a0000169','Tommy Lee Jones','1946-11-15','United States of America'),('a0000172','Harvey Keitel','1939-05-13','United States of America'),('a0000191','Ewan McGregor','1971-03-31','Scotland'),('a0000195','Bill Murray','1950-09-21','United States of America'),('a0000197','Jack Nicholson','1937-04-22','United States of America'),('a0000199','Al Pacino','1940-04-25','United States of America'),('a0000204','Natalie Portman','1981-06-09','Israel'),('a0000206','Keanu Reeves','1964-09-02','Lebanon'),('a0000209','Tim Robbins','1958-10-16','United States of America'),('a0000216','Arnold Schwarzenegger','1947-07-30','Austria'),('a0000228','Kevin Spacey','1959-07-26','United States of America'),('a0000230','Sylvester Stallone','1946-07-06','United States of America'),('a0000235','Uma Thurman','1970-04-29','United States of America'),('a0000244','Sigourney Weaver','1949-10-08','United States of America'),('a0000245','Robin Williams','1951-07-21','United States of America'),('a0000246','Bruce Willis','1955-03-19','Germany'),('a0000255','Ben Affleck','1972-08-15','United States of America'),('a0000267','Julie Andrews','1935-10-01','England'),('a0000286','Stephen Baldwin','1966-05-12','United States of America'),('a0000288','Christian Bale','1974-01-30','Wales'),('a0000313','Jeff Bridges','1949-12-04','United States of America'),('a0000354','Matt Damon','1970-08-08','United States of America'),('a0000358','Daniel Day-Lewis','1957-04-29','England'),('a0000375','Robert Downey Jr.','1965-04-04','United States of America'),('a0000422','John Goodman','1952-06-20','United States of America'),('a0000434','Mark Hamill','1951-09-25','United States of America'),('a0000493','Jack Lemmon','1925-02-08','United States of America'),('a0000513','William H. Macy','1950-03-13','United States of America'),('a0000531','Frances McDormand','1957-06-23','United States of America'),('a0000532','Malcolm McDowell','1943-06-13','England'),('a0000537','Steve McQueen','1930-03-24','United States of America'),('a0000546','Matthew Modine','1959-03-22','United States of America'),('a0000553','Liam Neeson','1952-06-07','Northern Ireland'),('a0000554','Sam Neill','1947-11-14','Northern Ireland'),('a0000564','Peter O\'Toole','1932-08-02','England'),('a0000578','Anthony Perkins','1932-04-04','United States of America'),('a0000606','Jean Reno','1948-07-30','Morocco'),('a0000619','Tim Roth','1961-05-14','England'),('a0000621','Kurt Russell','1951-03-17','United States of America'),('a0000634','Peter Sellers','1925-09-08','England'),('a0000643','Tom Skerritt','1933-08-25','United States of America'),('a0000696','Wil Wheaton','1972-07-29','United States of America'),('a0000719','F. Murray Abraham','1939-10-24','United States of America'),('a0000761','Bibi Andersson','1935-11-11','Sweden'),('a0000795','Jean Arthur','1900-10-17','United States of America'),('a0000799','Edward Asner','1929-11-15','United States of America'),('a0000842','Martin Balsam','1919-11-04','United States of America'),('a0000905','Roberto Benigni','1952-10-27','Italy'),('a0000983','Albert Brooks','1947-07-22','United States of America'),('a0000995','Ellen Burstyn','1932-12-07','United States of America'),('a0001012','Claudia Cardinale','1938-04-15','Tunsia'),('a0001037','Graham Chapman','1941-01-08','England'),('a0001072','Joseph Cotten','1905-05-15','United States of America'),('a0001082','Billy Crudup','1968-07-08','United States of America'),('a0001158','Keir Dullea','1936-05-30','United States of America'),('a0001159','Faye Dunaway','1941-01-14','United States of America'),('a0001426','Ben Kingsley','1943-12-31','England'),('a0001479','Carole Lombard','1908-10-06','United States of America'),('a0001485','Myrna Loy','1905-08-02','United States of America'),('a0001536','Toshiro Mifune','1920-04-01','China'),('a0001537','Ray Milland','1907-01-03','Wales'),('a0001557','Viggo Mortensen','1958-10-20','United States of America'),('a0001570','Edward Norton','1969-08-18','United States of America'),('a0001602','Guy Pearce','1967-10-05','England'),('a0001618','Joaquin Phoenix','1974-10-28','United States of America'),('a0001638','Jurgen Prochnow','1941-06-10','Germany'),('a0001702','Roy Scheider','1932-11-10','United States of America'),('a0001993','Vincent Cassel','1966-11-23','France'),('a0002076','Jason Flemyng','1966-09-25','England'),('a0002154','Alfred Abel','1879-03-12','Germany'),('a0004486','Bruno Ganz','1941-03-22','Switzerland'),('a0004778','Adrien Brody','1973-04-14','United States of America'),('a0004937','Jamie Foxx','1967-12-13','United States of America'),('a0005266','Craig T. Nelson','1944-04-04','United States of America'),('a0005403','Jason Schwartzman','1980-06-26','United States of America'),('a0007958','Diahnne Abbott','1945-05-01','United States of America'),('a0011744','Ade','1970-01-01','England'),('a0021600','Bruce Allpress','1930-08-25','New Zealand'),('a0032370','Noel Appleby','1933-04-05','New Zealand'),('a0041066','Antonella Attili','1963-04-03','Italy'),('a0047962','Chieko Baisho','1941-06-29','Japan'),('a0052333','Kanu Bannerjee','1905-06-20','India'),('a0059431','Jay Baruchel','1982-04-09','Canada'),('a0077720','Michael Berryman','1948-09-04','United States of America'),('a0085038','Gunnar Bjornstrand','1909-11-13','Sweden'),('a0123785','Ben Burtt','1948-07-12','United States of America'),('a0156039','Virginia Cherrill','1908-04-12','United States of America'),('a0158856','Choi Min-sik','1962-04-27','South Korea'),('a0167388','Francois Cluzet','1955-09-21','France'),('a0188949','Alison Crosbie','1989-11-30','United States of America'),('a0202966','Keith David','1956-06-04','United States of America'),('a0248408','Emilio Echevarria','1944-07-03','Mexico'),('a0249291','Joel Edgerton','1974-06-23','Australia'),('a0252230','Chiwetel Ejiofor','1977-07-10','England'),('a0266029','Maria Falconetti','1892-07-21','France'),('a0311476','Martina Gedeck','1961-09-14','Germany'),('a0334882','Dario Grandinetti','1959-03-05','Argentina'),('a0352835','Brahim Hadjadj','1934-02-01','Algeria'),('a0362766','Tom Hardy','1977-09-15','England'),('a0383022','Noriko Hidaka','1962-01-01','Japan'),('a0383708','Rumi Hiiragi','1987-08-01','Japan'),('a0386472','Emile Hirsch','1985-03-13','United States of America'),('a0397102','Alan Howard','1937-08-05','England'),('a0413168','Hugh Jackman','1968-10-12','Australia'),('a0451148','Aamir Khan','1965-03-14','India'),('a0470385','Aleksey Kravchenko','1969-10-10','Russia'),('a0488953','Brie Larson','1989-10-01','United States of America'),('a0529543','Jean-Pierre Leaud','1944-05-28','France'),('a0534045','Fred MacMurray','1908-08-30','United States of America'),('a0536009','Lamberto Maggiorani','1909-08-28','Italy'),('a0586568','Mads Mikkelsen','1965-11-22','Denmark'),('a0593775','Thomas Mitchell','1892-07-11','United States of America'),('a0598971','Yves Montand','1921-10-13','France'),('a0619870','Mohammad Amir Naji','1942-01-01','Iran'),('a0619938','Tatsuya Nakadai','1932-12-13','Japan'),('a0641939','Ryan O\'Neal','1941-04-20','United States of America'),('a0652663','Patton Oswalt','1969-01-27','United States of America'),('a0688132','Amy Poehler','1971-11-16','United States of America'),('a0732703','James Robinson','1983-09-06','Scotland'),('a0749263','Mark Ruffalo','1967-11-22','United States of America'),('a0753479','Chishu Ryu','1904-05-13','Japan'),('a0793766','Takashi Shimura','1905-03-12','Japan'),('a0803705','Victor Sjostrom','1879-09-20','Sweden'),('a0813272','Yuriy Solomin','1935-06-18','Russia'),('a0814280','Song Kang-ho','1967-01-17','South Korea'),('a0851302','Tsutomu Tatsumi','1972-03-01','Japan'),('a0851582','Audrey Tautou','1976-08-09','France'),('a0897845','Soledad Villamil','1969-06-19','Argentina'),('a0908919','Eli Wallach','1915-12-07','United States of America'),('a0918334','Scott Weinger','1975-11-05','United States of America'),('a1002038','Cetin Tekindor','1945-07-16','Turkey'),('a1126340','Ryunosuke Kamiki','1993-05-19','Japan'),('a1165110','Chris Hemsworth','1983-08-11','Australia'),('a1179105','Alexandre Rodrigues','1983-05-21','Brazil'),('a1297015','Emma Stone','1988-11-06','United States of America'),('a1323233','Mustafa Kamel','1900-01-01','Unknown'),('a1419440','Ivana Baquero','1994-06-11','Spain'),('a1421814','Suriya','1975-07-23','India'),('a1469236','Olivia Colman','1974-01-30','England'),('a1796730','Xolani Mali','1996-01-14','South Africa'),('a1814260','Christopher Massey','1990-01-26','United States of America'),('a1818216','Payman Maadi','1970-06-30','United States of America'),('a1886602','Miles Teller','1987-02-20','United States of America'),('a1940449','Andrew Garfield','1983-08-20','England'),('a2594301','Darsheel Safary','1997-03-09','India'),('a2835616','Dean-Charles Chapman','1997-11-07','England'),('a3892241','Kim Tae-ri','1990-04-24','South Korea'),('a4043618','Tom Holland','1996-06-01','England'),('a4271336','Shameik Moore','1995-05-04','United States of America'),('a4377526','Daveed Diggs','1982-01-24','United States of America'),('a5645519','Anthony Gonzalez','2004-09-23','United States of America'),('a9862858','Zain Al Rafeea','2004-10-10','Syria');
/*!40000 ALTER TABLE `lead_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_director`
--

DROP TABLE IF EXISTS `lead_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_director` (
  `director_id` varchar(10) NOT NULL,
  `director_name` varchar(256) NOT NULL,
  `dir_date_of_birth` date NOT NULL,
  `dir_origin_country` varchar(100) NOT NULL,
  `no_oscars_won` int NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_director`
--

LOCK TABLES `lead_director` WRITE;
/*!40000 ALTER TABLE `lead_director` DISABLE KEYS */;
INSERT INTO `lead_director` VALUES ('d0000005','Ingmar Bergman','1918-07-14','Sweden',13),('d0000033','Alfred Hitchcock','1899-08-13','England',0),('d0000036','Buster Keaton','1895-10-04','United States of America',1),('d0000040','Stanley Kubrick','1928-07-26','United States of America',1),('d0000041','Akira Kurosawa','1910-03-23','Japan',3),('d0000076','Francois Truffaut','1932-02-06','France',6),('d0000080','Orson Welles','1915-05-06','United States of America',1),('d0000108','Luc Besson','1959-03-18','France',0),('d0000116','James Cameron','1954-08-16','Canada',3),('d0000118','John Carpenter','1948-01-16','United States of America',0),('d0000122','Charles Chaplin','1889-04-16','England',3),('d0000126','Kevin Costner','1955-01-18','United States of America',3),('d0000142','Clint Eastwood','1930-05-31','United States of America',5),('d0000154','Mel Gibson','1956-01-03','United States of America',7),('d0000165','Ron Howard','1954-03-01','United States of America',2),('d0000180','David Lean','1908-03-25','England',2),('d0000184','George Lucas','1944-05-14','United States of America',0),('d0000186','David Lynch','1946-01-20','United States of America',0),('d0000217','Martin Scorsese','1942-11-17','United States of America',20),('d0000229','Steven Spielberg','1946-12-18','United States of America',3),('d0000231','Oliver Stone','1946-09-15','United States of America',11),('d0000233','Quentin Tarantino','1963-03-27','United States of America',7),('d0000277','Richard Attenborough','1923-08-29','England',2),('d0000338','Francis Ford Coppola','1939-04-07','United States of America',5),('d0000361','Brian De Palma','1940-09-11','United States of America',0),('d0000399','David Fincher','1962-08-28','United States of America',9),('d0000406','John Ford','1894-02-01','United States of America',6),('d0000416','Terry Gilliam','1940-11-22','United States of America',0),('d0000436','Curtis Hanson','1945-03-24','United States of America',1),('d0000466','Jean-Pierre Jeunet','1953-11-03','France',0),('d0000485','Fritz Lang','1890-12-05','Austria',0),('d0000500','Richard Linklater','1960-07-30','United States of America',5),('d0000520','Michael Mann','1943-02-05','United States of America',0),('d0000576','Sean Penn','1960-08-17','United States of America',5),('d0000581','Joseph L. Mankiewicz','1909-02-11','United States of America',4),('d0000583','Wolfgang Petersen','1941-03-14','United States of America',0),('d0000591','Roman Polanski','1933-08-18','France',8),('d0000601','Harold Ramis','1944-11-21','United States of America',0),('d0000631','Ridley Scott','1937-11-30','England',0),('d0000697','Billy Wilder','1906-06-22','Austria',7),('d0000709','Robert Zemeckis','1952-05-14','United States of America',1),('d0000759','Paul Thomas Anderson','1970-06-26','United States of America',0),('d0000814','John G. Avildsen','1935-12-21','United States of America',2),('d0000905','Roberto Benigni','1952-10-27','Italy',1),('d0000965','Danny Boyle','1956-10-20','England',1),('d0001008','Frank Capra','1897-05-18','Italy',6),('d0001047','Michael Cimino','1939-02-03','United States of America',3),('d0001053','Ethan Coen','1957-11-21','United States of America',4),('d0001054','Joel Coen','1954-11-29','United States of America',4),('d0001104','Frank Darabont','1959-01-28','France',0),('d0001120','Vittorio De Sica','1901-07-07','Italy',0),('d0001129','Jonathan Demme','1944-02-22','United States of America',1),('d0001232','Milos Forman','1932-02-18','Czech Republic',2),('d0001243','William Friedkin','1935-08-29','United States of America',2),('d0001351','George Roy Hill','1921-12-20','United States of America',1),('d0001379','John Huston','1906-08-05','United States of America',2),('d0001392','Peter Jackson','1961-10-31','New Zealand',3),('d0001402','Terry Jones','1942-02-01','United States of America',0),('d0001415','Elia Kazan','1909-09-07','Turkey',7),('d0001466','Sergio Leone','1929-01-03','Italy',0),('d0001486','Sidney Lumet','1924-06-25','United States of America',1),('d0001532','John McTiernan','1951-01-08','United States of America',0),('d0001661','Rob Reiner','1947-03-06','United States of America',1),('d0001741','Bryan Singer','1965-09-17','United States of America',0),('d0001814','Gus Van Sant','1952-07-24','United States of America',0),('d0001837','Peter Weir','1944-08-21','Australia',0),('d0002031','Michael Curtiz','1886-12-24','Hungary',1),('d0002045','Stanley Donen','1924-04-13','United States of America',0),('d0002120','Lasse Hallstrom','1946-06-02','Sweden',3),('d0002728','Juan Jose Campanella','1959-07-19','Argentina',1),('d0003433','Carl Theodor Dreyer','1889-02-03','Denmark',0),('d0003506','James Mangold','1963-12-16','United States of America',2),('d0003697','Florian Henckel von Donnersmarck','1973-05-02','Germany',1),('d0004056','Andrew Stanton','1965-12-03','United States of America',2),('d0004306','George Miller','1945-03-03','Australia',6),('d0004716','Darren Aronofsky','1969-02-12','United States of America',3),('d0005124','John Lasseter','1957-01-12','United States of America',2),('d0005222','Sam Mendes','1965-08-01','England',12),('d0005363','Guy Ritchie','1968-11-10','England',0),('d0006249','Satyajit Ray','1921-05-02','India',1),('d0006452','Stanley Kramer','1913-11-29','United States of America',0),('d0006487','Jim Sheridan','1949-02-06','Ireland',6),('d0006498','Majid Majidi','1959-04-17','Iran',0),('d0021249','Roger Allers','1949-06-29','United States of America',0),('d0027572','Wes Anderson','1969-05-01','United States of America',7),('d0083348','Brad Bird','1957-09-24','United States of America',5),('d0094435','Bong Joon Ho','1969-09-14','South Korea',4),('d0115669','Clyde Bruckman','1894-06-30','United States of America',0),('d0166256','Ron Clements','1953-04-25','United States of America',3),('d0167241','Henri-Georges Clouzot','1907-11-20','France',1),('d0213450','Dean DeBlois','1970-06-07','Canada',3),('d0230032','Pete Docter','1968-11-09','United States of America',3),('d0254178','Adam Elliot','1972-01-02','Australia ',1),('d0268380','Peter Farrelly','1956-12-17','United States of America',2),('d0281808','Victor Fleming','1889-02-23','United States of America',1),('d0313623','Terry George','1952-12-20','Ireland',3),('d0327273','Michel Gondry','1963-05-08','France',1),('d0327944','Alejandro G. Inarritu','1963-08-15','Mexico',10),('d0386246','Rajkumar Hirani','1962-11-20','India',0),('d0386570','Oliver Hirschbiegel','1957-12-29','Germany',0),('d0440913','Mathieu Kassovitz','1967-08-03','France',0),('d0443411','Tony Kaye','1952-07-08','England',0),('d0449984','Irvin Kershner','1923-04-29','United States of America',0),('d0451148','Aamir Khan','1965-03-14','India',1),('d0459552','Elem Klimov','1933-07-09','Russia',0),('d0462030','Masaki Kobayashi','1916-02-14','Japan',1),('d0523932','Ernst Lubitsch','1892-01-29','Germany',6),('d0549658','Richard Marquand','1937-11-22','Wales',0),('d0565336','Tom McCarthy','1968-04-05','United States of America',3),('d0574625','James McTeigue','1967-12-29','Australia',0),('d0576987','Fernando Meirelles','1955-11-09','Brazil',0),('d0594503','Hayao Miyazaki','1941-01-05','Japan',1),('d0612322','Robert Mulligan','1925-08-23','United States of America',0),('d0619923','Olivier Nakache','1973-04-15','France',0),('d0634240','Christopher Nolan','1970-07-30','England',0),('d0640334','Gavin O\'Connor','1963-12-24','United States of America',0),('d0654868','Yasujiro Ozu','1903-12-12','Japan',0),('d0655053','Sergio Pablos','1970-01-01','Spain',0),('d0661791','Park Chan-wook','1963-08-29','South Korea',0),('d0680846','Todd Phillips','1970-12-20','United States of America',0),('d0690597','Gillo Pontecorvo','1919-11-19','Italy',4),('d0715346','Carol Reed','1906-12-30','England',3),('d0742341','Stuart Rosenberg','1927-08-11','United States of America',0),('d0751577','Anthony Russo','1970-02-03','United States of America',0),('d0796117','M. Night Shyamalan','1970-08-06','India',0),('d0836328','John Sturges','1910-01-03','United States of America',0),('d0847223','Isao Takahata','1935-10-29','Japan',0),('d0853238','Tate Taylor','1969-06-03','United States of America',0),('d0868153','Giuseppe Tornatore','1959-05-27','Italy',1),('d0868219','Guillermo del Toro','1964-10-09','Mexico',3),('d0881279','Lee Unkrich','1967-08-08','United States of America',2),('d0893659','Gore Verbinski','1964-03-16','United States of America',1),('d0898288','Denis Villeneuve','1967-10-03','Canada',3),('d0899121','Thomas Vinterberg','1969-05-19','Denmark',1),('d0905154','Lana Wachowski','1965-06-21','United States of America',0),('d0936404','Robert Wise','1914-09-10','United States of America',8),('d0943758','William Wyler','1902-07-02','Germany',16),('d0946734','David Yates','1963-10-08','England',0),('d1049433','Lenny Abrahamson','1966-11-30','Ireland',1),('d1167933','Damian Szifron','1975-07-09','Argentina',1),('d1218281','Jon Watts','1981-06-28','United States of America',0),('d1396121','Makoto Shinkai','1973-02-09','Japan',0),('d1410815','Asghar Farhadi','1972-05-07','Iran',2),('d1463981','Cagan Irmak','1970-04-04','Turkey',0),('d1701024','Nadine Labaki','1974-02-18','Lebanon',0),('d1725469','Florian Zeller','1979-06-28','France',1),('d1732981','Martin McDonagh','1970-03-26','England',1),('d2130108','Bob Persichetti','1973-01-17','United States of America',1),('d2371802','Thomas Kail','1978-01-30','United States of America',0),('d2588606','Steve McQueen','1930-03-24','England',1),('d2676052','Joseph Kosinski','1974-05-03','United States of America',0),('d3227090','Damien Chazelle','1985-01-19','United States of America',10),('d4318159','Nitesh Tiwari','1972-05-22','India',0),('d4377096','T.J. Gnanavel','1970-01-01','India',0);
/*!40000 ALTER TABLE `lead_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_writer`
--

DROP TABLE IF EXISTS `lead_writer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_writer` (
  `writer_id` varchar(10) NOT NULL,
  `writer_name` varchar(256) NOT NULL,
  `writer_date_of_birth` date NOT NULL,
  `writer_origin_country` varchar(100) NOT NULL,
  `university_attended` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`writer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_writer`
--

LOCK TABLES `lead_writer` WRITE;
/*!40000 ALTER TABLE `lead_writer` DISABLE KEYS */;
INSERT INTO `lead_writer` VALUES ('w0000005','Ingmar Bergman','1918-07-14','Sweden','Stckholm University'),('w0000036','Buster Keaton','1895-10-04','United States of America',''),('w0000040','Stanley Kubrick','1928-07-26','United States of America',''),('w0000041','Akira Kurosawa','1910-03-23','Japan','Kawabata School of Painting'),('w0000076','Francois Truffaut','1932-02-06','France',''),('w0000108','Luc Besson','1959-03-18','France',''),('w0000116','James Cameron','1954-08-16','Canada','Fullerton College'),('w0000122','Charles Chaplin','1889-04-16','England',''),('w0000175','Stephen King','1947-09-21','United States of America','University of Maine'),('w0000184','George Lucas','1944-05-14','United States of America','University of Southern California'),('w0000230','Sylvester Stallone','1946-07-06','United States of America','University of Miami'),('w0000231','Oliver Stone','1946-09-15','United States of America','New York University'),('w0000233','Quentin Tarantino','1963-03-27','United States of America',''),('w0000338','Francis Ford Coppola','1939-04-07','United States of America','Hoftsra University'),('w0000341','Michael Crichton','1942-10-23','United States of America','Harvard University'),('w0000354','Matt Damon','1970-10-08','United States of America','Havard University'),('w0000500','Richard Linklater','1960-07-30','United States of America','University of Texas'),('w0000520','Michael Mann','1943-02-05','United States of America',''),('w0000576','Sean Penn','1960-08-17','United States of America',''),('w0000581','Joseph L. Mankiewicz','1909-02-11','United States of America','Columbia University'),('w0000583','Wolfgang Petersen','1941-03-14','Germany','Film and Television Academy'),('w0000697','Billy Wilder','1906-06-22','Poland','University of Vienna'),('w0000709','Robert Zemeckis','1952-05-14','United States of America','University of Southern California'),('w0000759','Paul Thomas Anderson','1970-06-26','United States of America','Santa Monica College'),('w0001037','Graham Chapman','1941-01-08','England','University of Cambridge'),('w0001047','Michael Cimino','1939-02-03','United States of America','Michigan State University'),('w0001053','Ethan Coen','1957-09-21','United States of America','Princeton University'),('w0001054','Joel Coen','1954-11-29','United States of America','New York University'),('w0001294','Graham Greene','1904-10-02','England','University of Oxford'),('w0001379','John Huston','1906-08-05','United States of America',''),('w0001410','Lawrence Kasdan','1949-01-14','United States of America','University of Michigan'),('w0001466','Sergio Leone','1929-01-03','Italy',''),('w0001707','Paul Schrader','1946-07-22','United States of America','Calvin College'),('w0001801','Robert Towne','1934-11-23','United States of America','University of Wisconsin-Madison'),('w0001825','Andrew Kevin Walker','1964-08-14','United States of America','Penn State University'),('w0001940','Peter Benchley','1940-05-08','United States of America','Harvard University'),('w0002005','Agatha Christie','1890-09-15','England',''),('w0003160','Christopher McQuarrie','1968-10-25','United States of America',''),('w0003506','James Mangold','1963-12-16','United States of America','Columbia University'),('w0003697','Florian Henckel von Donnersmarck','1973-05-02','Germany','University of Oxford'),('w0004056','Andrew Stanton','1965-12-03','United States of America','California Institute of the Arts'),('w0004122','Robert Bolt','1924-08-15','England','University of Manchester'),('w0004170','Bob Kane','1915-10-24','United States of America',''),('w0004306','George Miller','1945-03-03','Australia','University of New South Wales'),('w0005124','John Lasseter','1957-01-12','United States of America','California Institute of the Arts'),('w0005222','Sam Mendes','1965-08-01','England','University of Cambridge'),('w0005363','Guy Ritchie','1968-09-10','England',''),('w0006498','Majid Majidi','1959-04-17','Iran','Institue of Dramatic Art '),('w0006872','Sergio Donati','1933-04-13','Italy',''),('w0010696','Ales Adamovich','1927-09-03','Belarus','Belarusian State University'),('w0015611','Ryunosuke Akutagawa','1892-03-01','Japan','Imperial University of Tokyo'),('w0037247','Guillermo Arriaga','1958-03-13','Mexico','Universidad Iberoamericana'),('w0050332','Alan Ball','1957-05-13','United States of America','Florida State University'),('w0051808','Bibhutibhushan Bandyopadhyay','1894-09-01','India','Surendranath College'),('w0083348','Brad Bird','1957-09-24','United States of America','California Institue of the Arts'),('w0086658','Michael Blake','1945-05-07','United States of America','University of New Mexico'),('w0087861','William Peter Blatty','1928-01-07','United States of America','Georgetown University'),('w0090151','Jeffrey Boam','1946-11-30','United States of America','University of California, Los Angeles'),('w0094435','Bong Joon Ho','1969-09-14','South Korea','Yonsei University'),('w0099541','Pierre Boulle','1912-02-20','France',''),('w0102818','Charles Brackett','1892-11-26','United States of America','Williams College'),('w0102824','Leigh Brackett','1915-12-07','United States of America',''),('w0108595','Paul Brickhill','1916-12-20','Australia','University of Sydney'),('w0109300','John Briley','1925-06-25','United States of America','University of Michigan'),('w0118227','Sidney Buchman','1902-03-27','United States of America','Columbia University'),('w0125336','Jez Butterworth','1969-03-01','England','St. John\'s College, Cambridge'),('w0148437','Vincenzo Cerami','1940-11-02','Italy',''),('w0154665','Paddy Chayefsky','1923-01-29','United States of America','City College of New York'),('w0166256','Ron Clements','1953-04-25','United States of America',''),('w0173679','Betty Comden','1917-05-03','United States of America','New York University'),('w0174840','Gerry Conlon','1954-03-01','Ireland',''),('w0178785','Alec Coppel','1907-09-17','Australia','Wesley College'),('w0204030','Will Davies','1976-01-01','England','University of Cambridge'),('w0212246','Christopher De Vore','1950-01-01','Unknown',''),('w0217865','Joseph Delteil','1894-04-16','France',''),('w0230032','Pete Docter','1968-10-09','United States of America','California Institue of the Arts'),('w0238898','Daphne Du Maurier','1907-05-13','England',''),('w0251536','Bernd Eichinger','1949-04-11','Germany','University of Television and Film Munich'),('w0254178','Adam Elliot','1972-01-02','Australia','Victorian College of the Arts'),('w0254645','Ted Elliott','1961-07-04','United States of America',''),('w0255278','James Ellroy','1948-03-04','United States of America',''),('w0258493','Julius J. Epstein','1909-08-22','United States of America','The Pennsylvania State University'),('w0266684','Hampton Fancher','1938-04-18','United States of America',''),('w0291905','David Franzoni','1947-03-04','United States of America','University of Vermont'),('w0326040','Akiva Goldsman','1962-07-07','United States of America','Wesleyan University'),('w0329304','Frances Goodrich','1890-12-21','United States of America','Vassar College'),('w0340580','Harry Grey','1901-11-02','Russia',''),('w0343165','Winston Groom','1943-03-23','United States of America','Univeristy of Alabama'),('w0353673','Paul Haggis','1953-03-10','Canada','Fanshawe Collge'),('w0358960','Christopher Hampton','1946-01-26','Portugal',''),('w0365383','Thomas Harris','1940-09-22','United States of America','Baylor University'),('w0367838','Ronald Harwood','1934-11-09','South Africa','Royal Academy of Dramatic Art'),('w0369142','Lawrence Hauben','1931-03-03','United States of America',''),('w0369841','Jean C. Havez','1972-12-24','United States of America',''),('w0371088','John Michael Hayes','1919-05-11','United States of America','University of Massachusetts Amherst'),('w0403346','Georg Hurdalek','1908-02-06','Germany',''),('w0425913','Nunnally Johnson','1897-12-05','United States of America','Georgia Tech'),('w0430785','Abhijat Joshi','1969-12-01','India','Gujarat University'),('w0436164','Laeta Kalogridis','1965-08-30','United States of America','University of Texas at Austin'),('w0440913','Mathieu Kassovitz','1967-08-03','France',''),('w0442109','Charlie Kaufman','1958-11-19','United States of America','New York University'),('w0447745','Thomas Keneally','1953-10-07','Australia',''),('w0460141','Steve Kloves','1960-03-18','United States of America','University of California, Los Angeles'),('w0461425','Frederick Knott','1916-08-28','China','University of Cambrdige'),('w0483766','Jake LaMotta','1922-07-10','United States of America',''),('w0484111','Bill Lancaster','1947-11-17','United States of America',''),('w0486538','Noel Langley','1911-12-25','South Africa','University of Natal'),('w0491011','Guillaume Laurant','1961-11-22','France',''),('w0497369','Harper Lee','1926-04-28','United States of America','University of Alabama'),('w0499626','Ernest Lehman','1915-12-08','United States of America',''),('w0501872','Melchior Lengyel','0188-01-12','Hungary',''),('w0513130','Paulo Lins','1958-01-11','Brazil',''),('w0520488','Phil Lord','1975-07-12','United States of America','Dartmouth College'),('w0542534','Herman J. Mankiewicz','1897-11-07','United States of America','Columbia University'),('w0542631','Abby Mann','1927-12-01','United States of America','New York University'),('w0564827','Tim McCanlies','1953-01-01','United States of America',''),('w0571344','Chris McKenna','1977-10-18','United States of America',''),('w0571346','David McKenna','1968-08-14','United States of America',''),('w0575293','Irene Mecchi','1949-09-21','United States of America','University of California Berkeley'),('w0587518','John Milius','1944-04-11','United States of America','USC School of Cinema-Television'),('w0592135','Lin-Manuel Miranda','1980-01-16','United States of America','Wesleyan University'),('w0593565','Margaret Mitchell','1900-11-08','United States of America','Smith College'),('w0594503','Hayao Miyazaki','1941-01-05','Japan','Gakushuin University'),('w0604948','Peter Morgan','1963-04-10','England','University of Leeds'),('w0619923','Olivier Nakache','1973-04-15','France',''),('w0622288','Jeff Nathanson','1965-10-12','United States of America','University of California'),('w0629272','Andrew Niccol','1964-06-10','New Zealand',''),('w0633792','Kogo Noda','1893-11-19','Japan',''),('w0634240','Christopher Nolan','1970-07-30','England','University College London'),('w0634300','Jonathan Nolan','1976-06-06','England','Georgetown University'),('w0636435','Akiyuki Nosaka','1930-10-10','Japan',''),('w0639321','Dan O\'Bannon','1946-09-30','United States of America','Washington University in St. Louis'),('w0640334','Gavin O\'Connor','1963-12-24','United States of America',''),('w0644823','Hideo Oguni','1904-07-09','Japan',''),('w0655053','Sergio Pablos','1970-01-01','Spain','California Institute of the Arts'),('w0657333','Chuck Palahniuk','1962-02-21','United States of America','University of Oregon'),('w0668914','Donn Pearce','1928-09-28','United States of America',''),('w0669311','Keir Pearson','1966-12-15','United States of America',''),('w0672459','David Webb Peoples','1940-02-09','United States of America','University of California, Berkeley'),('w0680846','Todd Phillips','1970-12-20','United States of America','New York University Film School'),('w0683380','Nicholas Pileggi','1933-02-22','United States of America',''),('w0701374','Mario Puzo','1920-10-15','United States of America','Columbia University'),('w0725983','John Ridley','1964-11-02','United States of America','New York University'),('w0728307','Robert Riskin','1897-03-30','United States of America',''),('w0734441','Robert Rodat','1953-01-01','United States of America',''),('w0741627','Reginald Rose','1920-12-10','United States of America','City University of New York'),('w0748035','Danny Rubin','1957-01-01','United States of America','Brown University'),('w0758357','Franco Solinas','1927-01-19','Italy',''),('w0770938','Robert Schenkkan','1953-03-19','United States of America','University of Texas'),('w0775977','Budd Schulberg','1914-03-27','United States of America','Dartmouth College'),('w0776114','Tom Schulman','1951-10-02','United States of America','Vanderbilt University'),('w0782968','Hubert Selby Jr.','1928-07-23','United States of America',''),('w0787323','Peter Shaffer','1926-05-15','England','Trinity College'),('w0792845','Robert E. Sherwood','1896-04-04','United States of America','Harvard University'),('w0796117','M. Night Shyamalan','1970-08-06','India','New York University'),('w0825010','Joseph Stefano','1922-05-05','United States of America',''),('w0847668','Yasuhiko Takiguchi','1924-01-01','Japan',''),('w0853238','Tate Taylor','1969-06-03','United States of America',''),('w0861636','Roderick Thorp','1936-09-01','United States of America',''),('w0866058','J.R.R Tolkien','1892-01-03','South Africa','Exeter College'),('w0868153','Giuseppe Tornatore','1956-05-27','Italy',''),('w0868219','Guillermo del Toro','1964-10-09','Mexico','University of Guadalajara'),('w0881279','Lee Unkrich','1967-08-08','United States of America','University of Southern California'),('w0885014','Nick Vallelonga','1959-09-13','United States of America',''),('w0898288','Denis Villeneuve','1967-10-03','Canada','Cegep de Trois-Rivieres'),('w0898812','Luciano Vincenzoni','1926-03-07','Italy',''),('w0899121','Thomas Vinterberg','1969-05-19','Denmark','National Film School of Denmark'),('w0902376','Thea von Harbou','1888-12-27','Germany',''),('w0905152','Lilly Wachowski','1967-12-29','United States of America','Emerson College'),('w0908753','Lew Wallace','1827-04-10','United States of America',''),('w0908824','Randall Wallace','1949-07-28','United States of America','Duke University'),('w0911486','David S. Ward','1945-10-25','United States of America','Pomona College'),('w0920543','Irvine Welsh','1958-09-27','Scotland','Heriot-Watt University'),('w0953790','Cesare Zavattini','1902-09-20','Italy','Univeristy of Parma'),('w0959003','Stefan Zweig','1881-11-28','Austria','University Of Vienna'),('w1010405','Nick Schenk','1965-11-12','United States of America',''),('w1010540','Terence Winter','1960-10-02','United States of America','New York University'),('w1064118','Georges Arnaud','1917-07-16','France',''),('w1184258','William Monahan','1960-11-03','United States of America','University of Massachusetts Amherst'),('w1238855','German Servidio','1982-01-12','Argentina',''),('w1244760','Amole Gupte','1962-01-01','India',''),('w1258797','Sarah Waters','1966-07-16','Wales','Queen Mary University of London'),('w1321655','Christopher Markus','1970-01-02','United States of America','Rutgers University'),('w1396121','Makoto Shinkai','1973-02-09','Japan','Chuo University'),('w1410815','Asghar Farhadi','1972-05-07','Iran','University of Tehran'),('w1463981','Cagan Irmak','1970-04-04','Turkey','Ege University'),('w1480980','Emma Donoghue','1969-10-24','Ireland','Griton College, Cambridge'),('w1628380','Garon Tsuchiya','1947-01-01','Japan',''),('w1701024','Nadine Labaki','1974-02-18','Lebanon','Saint Joseph University of Beirut'),('w1732981','Martin McDonagh','1970-03-26','England',''),('w1802857','Josh Singer','1972-01-01','United States of America','Harvard University'),('w2124742','Stephen P. Lindsey','1953-07-14','United States of America',''),('w3160078','Eduardo Sacheri','1967-12-13','Argentina','National University of Lujan'),('w3227090','Damien Chazelle','1985-01-19','United States of America','Harvard University'),('w3360706','Aaron Guzikowski','1974-01-01','United States of America',''),('w4377096','T.J. Gnanavel','1970-01-01','India',''),('w5058839','Gillian Flynn','1971-02-24','United States of America','University of Kansas'),('w6328029','Piyush Gupta','1960-01-24','India','St Stephen\'s College');
/*!40000 ALTER TABLE `lead_writer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` varchar(10) NOT NULL,
  `imdb_rank` int NOT NULL,
  `movie_name` varchar(64) NOT NULL,
  `release_year` char(4) NOT NULL,
  `imdb_rating` decimal(3,1) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `movie_cert` text NOT NULL,
  `imdb_url` text NOT NULL,
  `storyline` text NOT NULL,
  `genre_name` varchar(20) NOT NULL,
  `actor_id` varchar(10) NOT NULL,
  `director_id` varchar(10) NOT NULL,
  `writer_id` varchar(10) NOT NULL,
  `imdb_review_id` varchar(15) NOT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `genre_name` (`genre_name`),
  KEY `actor_id` (`actor_id`),
  KEY `director_id` (`director_id`),
  KEY `writer_id` (`writer_id`),
  KEY `imdb_review_id` (`imdb_review_id`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`genre_name`) REFERENCES `genre` (`genre_name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `lead_actor` (`actor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `movie_ibfk_3` FOREIGN KEY (`director_id`) REFERENCES `lead_director` (`director_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `movie_ibfk_4` FOREIGN KEY (`writer_id`) REFERENCES `lead_writer` (`writer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `movie_ibfk_5` FOREIGN KEY (`imdb_review_id`) REFERENCES `featured_imdb_review` (`imdb_review_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `movie_chk_1` CHECK ((`imdb_rating` between 0 and 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('tt0012349',128,'The Kid','1921',8.3,'1h 8m','Passed','https://www.imdb.com/title/tt0012349','The Tramp cares for an abandoned child, but events put their relationship in jeopardy.','Comedy','a0000122','d0000122','w0000122','rw0002492'),('tt0015324',195,'Sherlock Jr.','1924',8.2,'45m','Passed','https://www.imdb.com/title/tt0015324','A film projectionist longs to be a detective, and puts his meagre skills to work when he is framed by a rival for stealing his girlfriend\'s father\'s pocketwatch.','Action','a0000036','d0000036','w0369841','rw0003413'),('tt0015864',177,'The Gold Rush','1925',8.1,'1h 35m','Passed','https://www.imdb.com/title/tt0015864','A prospector goes to the Klondike during the 1890s gold rush in hopes of making his fortune, and is smitten with a girl he sees in a dance hall.','Adventure','a0000122','d0000122','w0000122','rw1353708'),('tt0017136',115,'Metropolis','1927',8.3,'2h 33m','Not Rated','https://www.imdb.com/title/tt0017136','In a futuristic city sharply divided between the working class and the city planners, the son of the city\'s mastermind falls in love with a working-class prophet who predicts the coming of a... Read all','Drama','a0002154','d0000485','w0902376','rw1275605'),('tt0017925',187,'The General','1926',8.1,'1h 7m','Passed','https://www.imdb.com/title/tt0017925','After being rejected by the Confederate military, not realizing it was due to his crucial civilian role, an engineer must single-handedly recapture his beloved locomotive after it is seized ... Read all','Action','a0000036','d0115669','w0000036','rw1874296'),('tt0019254',208,'The Passion of Joan of Arc','1928',8.2,'1h 54m','Passed','https://www.imdb.com/title/tt0019254','In 1431, Jeanne d\'Arc is placed on trial on charges of heresy. The ecclesiastical jurists attempt to force Jeanne to recant her claims of holy visions.','Biography','a0266029','d0003433','w0217865','rw0005470'),('tt0021749',52,'City Lights','1931',8.5,'1h 27m','G','https://www.imdb.com/title/tt0021749','With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.','Comedy','a0156039','d0000122','w0000122','rw0007532'),('tt0022100',96,'M','1931',8.3,'1h 39m','Passed','https://www.imdb.com/title/tt0022100','When the police in a German city are unable to catch a child-murderer, other criminals join in the manhunt.','Crime','a0000048','d0000485','w0902376','rw2192552'),('tt0025316',242,'It Happened One Night','1934',8.1,'1h 45m','Passed','https://www.imdb.com/title/tt0025316','A renegade reporter trailing a young runaway heiress for a big story joins her on a bus heading from Florida to New York, and they end up stuck with each other when the bus leaves them behin... Read all','Comedy','a0000022','d0001008','w0728307','rw1246535'),('tt0027977',47,'Modern Times','1936',8.5,'1h 27m','G','https://www.imdb.com/title/tt0027977','The Tramp struggles to live in modern industrial society with the help of a young homeless woman.','Comedy','a0000122','d0000122','w0000122','rw2923496'),('tt0031381',159,'Gone with the Wind','1939',8.2,'3h 58m','Passed','https://www.imdb.com/title/tt0031381','American motion picture classic in which a manipulative woman and a roguish man conduct a turbulent romance during the Civil War and Reconstruction periods.','Drama','a0593775','d0281808','w0593565','rw1026203'),('tt0031679',197,'Mr. Smith Goes to Washington','1939',8.1,'2h 9m','Passed','https://www.imdb.com/title/tt0031679','A naive youth leader is appointed to fill a vacancy in the U.S. Senate. His idealistic plans promptly collide with corruption at home and subterfuge from his hero in Washington, but he tries... Read all','Comedy','a0000795','d0001008','w0118227','rw0020075'),('tt0032138',222,'The Wizard of Oz','1939',8.1,'1h 42m','G','https://www.imdb.com/title/tt0032138','Young Dorothy Gale and her dog Toto are swept away by a tornado from their Kansas farm to the magical Land of Oz, and embark on a quest with three new friends to see the Wizard, who can retu... Read all','Adventure','a0000023','d0281808','w0486538','rw0020959'),('tt0032551',233,'The Grapes of Wrath','1940',8.1,'2h 9m','Passed','https://www.imdb.com/title/tt0032551','An Oklahoma family, driven off their farm by the poverty and hopelessness of the Dust Bowl, joins the westward migration to California, suffering the misfortunes of the homeless in the Great... Read all','Drama','a0000020','d0000406','w0425913','rw1487672'),('tt0032553',62,'The Great Dictator','1940',8.4,'2h 5m','G','https://www.imdb.com/title/tt0032553','Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel\'s regime.','Comedy','a0000122','d0000122','w0000122','rw0021783'),('tt0032976',237,'Rebecca','1940',8.1,'2h 10m','Approved','https://www.imdb.com/title/tt0032976','A self-conscious woman juggles adjusting to her new role as an aristocrat\'s wife and avoiding being intimidated by his first wife\'s spectral presence.','Drama','a0000059','d0000033','w0238898','rw3619927'),('tt0033467',95,'Citizen Kane','1941',8.3,'1h 59m','PG','https://www.imdb.com/title/tt0033467','Following the death of publishing tycoon Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance: \'Rosebud.\'','Drama','a0001072','d0000080','w0542534','rw0023962'),('tt0034583',43,'Casablanca','1942',8.5,'1h 42m','PG','https://www.imdb.com/title/tt0034583','A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.','Drama','a0000007','d0002031','w0258493','rw1000255'),('tt0035446',227,'To Be or Not to Be','1942',8.2,'1h 39m','Passed','https://www.imdb.com/title/tt0035446','During the Nazi occupation of Poland, an acting troupe becomes embroiled in a Polish soldier\'s efforts to track down a German spy.','Comedy','a0001479','d0523932','w0501872','rw4786544'),('tt0036775',104,'Double Indemnity','1944',8.3,'1h 47m','Passed','https://www.imdb.com/title/tt0036775','A Los Angeles insurance representative lets an alluring housewife seduce him into a scheme of insurance fraud and murder that arouses the suspicion of his colleague, an insurance investigato... Read all','Crime','a0534045','d0000697','w0000697','rw0030161'),('tt0036868',223,'The Best Years of Our Lives','1946',8.1,'2h 50m','Approved','https://www.imdb.com/title/tt0036868','Three World War II veterans, two of them traumatized or disabled, return home to the American midwest to discover that they and their families have been irreparably changed.','Drama','a0001485','d0943758','w0792845','rw1642966'),('tt0038650',21,'It\'s a Wonderful Life','1946',8.6,'2h 10m','PG','https://www.imdb.com/title/tt0038650','An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.','Drama','a0000071','d0001008','w0329304','rw1247136'),('tt0040522',121,'Bicycle Thieves','1948',8.3,'1h 29m','Not Rated','https://www.imdb.com/title/tt0040522','In post-war Italy, a working-class man\'s bicycle is stolen, endangering his efforts to find work. He and his son set out to find it.','Drama','a0536009','d0001120','w0953790','rw0038353'),('tt0040897',146,'The Treasure of the Sierra Madre','1948',8.2,'2h 6m','Passed','https://www.imdb.com/title/tt0040897','Two down-on-their-luck Americans searching for work in 1920s Mexico convince an old prospector to help them mine for gold in the Sierra Madre Mountains.','Adventure','a0000007','d0001379','w0001379','rw3522851'),('tt0041959',189,'The Third Man','1949',8.1,'1h 33m','Approved','https://www.imdb.com/title/tt0041959','Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.','Film-Noir','a0001072','d0715346','w0001294','rw3409638'),('tt0042192',131,'All About Eve','1950',8.2,'2h 18m','Passed','https://www.imdb.com/title/tt0042192','A seemingly timid but secretly ruthless ingnue insinuates herself into the lives of an aging Broadway star and her circle of theater friends.','Drama','a0000012','d0000581','w0000581','rw1195687'),('tt0042876',151,'Rashomon','1950',8.2,'1h 28m','Not Rated','https://www.imdb.com/title/tt0042876','The rape of a bride and the murder of her samurai husband are recalled from the perspectives of a bandit, the bride, the samurai\'s ghost and a woodcutter.','Crime','a0001536','d0000041','w0015611','rw1336188'),('tt0043014',59,'Sunset Blvd.','1950',8.4,'1h 50m','Passed','https://www.imdb.com/title/tt0043014','A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.','Drama','a0000034','d0000697','w0102818','rw1840571'),('tt0044741',99,'Ikiru','1952',8.3,'2h 23m','Not Rated','https://www.imdb.com/title/tt0044741','A bureaucrat tries to find meaning in his life after he discovers he has terminal cancer.','Drama','a0793766','d0000041','w0000041','rw0047035'),('tt0045152',83,'Singin\' in the Rain','1952',8.3,'1h 43m','G','https://www.imdb.com/title/tt0045152','A silent film star falls for a chorus girl just as he and his delusionally jealous screen partner are trying to make the difficult transition to talking pictures in 1920s Hollywood.','Comedy','a0000037','d0002045','w0173679','rw2362980'),('tt0046268',193,'The Wages of Fear','1953',8.2,'2h 11m','Not Rated','https://www.imdb.com/title/tt0046268','In a decrepit South American village, four men are hired to transport an urgent nitroglycerine shipment without the equipment that would make it safe.','Adventure','a0598971','d0167241','w1064118','rw3501763'),('tt0046438',207,'Tokyo Story','1953',8.2,'2h 16m','Not Rated','https://www.imdb.com/title/tt0046438','An old couple visit their children and grandchildren in the city, but receive little attention.','Drama','a0753479','d0654868','w0633792','rw1237040'),('tt0046912',162,'Dial M for Murder','1954',8.2,'1h 45m','PG','https://www.imdb.com/title/tt0046912','A former tennis star arranges the murder of his adulterous wife.','Crime','a0001537','d0000033','w0461425','rw2305434'),('tt0047296',182,'On the Waterfront','1954',8.1,'1h 48m','Approved','https://www.imdb.com/title/tt0047296','An ex-prize fighter turned New Jersey longshoreman struggles to stand up to his corrupt union bosses, including his older brother, as he starts to connect with the grieving sister of one of ... Read all','Crime','a0000008','d0001415','w0775977','rw1868805'),('tt0047396',50,'Rear Window','1954',8.5,'1h 52m','PG','https://www.imdb.com/title/tt0047396','A wheelchair-bound photographer spies on his neighbors from his Greenwich Village courtyard apartment window, and becomes convinced one of them has committed murder, despite the skepticism o... Read all','Mystery','a0000071','d0000033','w0371088','rw0052668'),('tt0047478',20,'Seven Samurai','1954',8.6,'3h 27m','Not Rated','https://www.imdb.com/title/tt0047478','Farmers from a village exploited by bandits hire a veteran samurai for protection, who gathers six other samurai to join him.','Action','a0001536','d0000041','w0000041','rw0053357'),('tt0048473',224,'Pather Panchali','1955',8.3,'2h 5m','Not Rated','https://www.imdb.com/title/tt0048473','Impoverished priest Harihar Ray, dreaming of a better life for himself and his family, leaves his rural Bengal village in search of work.','Drama','a0052333','d0006249','w0051808','rw0055920'),('tt0050083',5,'12 Angry Men','1957',9.0,'1h 36m','Approved','https://www.imdb.com/title/tt0050083','The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.','Crime','a0000842','d0001486','w0741627','rw0060044'),('tt0050212',166,'The Bridge on the River Kwai','1957',8.2,'2h 41m','PG','https://www.imdb.com/title/tt0050212','British POWs are forced to build a railway bridge across the river Kwai for their Japanese captors in occupied Burma, not knowing that the allied forces are planning a daring commando raid t... Read all','Adventure','a0000034','d0000180','w0099541','rw1383383'),('tt0050825',60,'Paths of Glory','1957',8.4,'1h 28m','Approved','https://www.imdb.com/title/tt0050825','After refusing to attack an enemy position, a general accuses the soldiers of cowardice and their commanding officer must defend them.','Drama','a0000018','d0000040','w0000040','rw1408915'),('tt0050976',200,'The Seventh Seal','1957',8.1,'1h 36m','Not Rated','https://www.imdb.com/title/tt0050976','A knight returning to Sweden after the Crusades seeks answers about life, death, and the existence of God as he plays chess against the Grim Reaper during the Black Plague.','Drama','a0085038','d0000005','w0000005','rw0062665'),('tt0050986',186,'Wild Strawberries','1957',8.1,'1h 31m','Not Rated','https://www.imdb.com/title/tt0050986','After living a life marked by coldness, an aging professor is forced to confront the emptiness of his existence.','Drama','a0803705','d0000005','w0000005','rw1122995'),('tt0051201',64,'Witness for the Prosecution','1957',8.4,'1h 56m','Approved','https://www.imdb.com/title/tt0051201','A veteran British barrister must defend his client in a murder trial that has surprise after surprise.','Crime','a0000061','d0000697','w0002005','rw1308317'),('tt0052357',100,'Vertigo','1958',8.3,'2h 8m','PG','https://www.imdb.com/title/tt0052357','A former San Francisco police detective juggles wrestling with his personal demons and becoming obsessed with the hauntingly beautiful woman he has been hired to trail, who may be deeply dis... Read all','Mystery','a0000071','d0000033','w0178785','rw0066252'),('tt0052618',183,'Ben-Hur','1959',8.1,'3h 32m','G','https://www.imdb.com/title/tt0052618','After a Jewish prince is betrayed and sent into slavery by a Roman friend in 1st-century Jerusalem, he regains his freedom and comes back for revenge.','Adventure','a0000032','d0943758','w0908753','rw3355127'),('tt0053125',98,'North by Northwest','1959',8.3,'2h 16m','Approved','https://www.imdb.com/title/tt0053125','A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies, and falls for a woman whose loyalties he begins to doubt.','Action','a0000026','d0000033','w0499626','rw1058631'),('tt0053198',240,'The 400 Blows','1959',8.1,'1h 39m','Not Rated','https://www.imdb.com/title/tt0053198','A young boy, left without attention, delves into a life of petty crime.','Crime','a0529543','d0000076','w0000076','rw0068933'),('tt0053291',129,'Some Like It Hot','1959',8.2,'2h 1m','Passed','https://www.imdb.com/title/tt0053291','After two male musicians witness a mob hit, they flee the state in an all-female band disguised as women, but further complications set in.','Comedy','a0000054','d0000697','w0000697','rw2696668'),('tt0053604',101,'The Apartment','1960',8.3,'2h 5m','Approved','https://www.imdb.com/title/tt0053604','A Manhattan insurance clerk tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.','Comedy','a0000493','d0000697','w0000697','rw1393693'),('tt0054215',33,'Psycho','1960',8.5,'1h 49m','R','https://www.imdb.com/title/tt0054215','A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run and checks into a remote motel run by a young man under the domination of his mother.','Horror','a0000578','d0000033','w0825010','rw0072083'),('tt0055031',134,'Judgment at Nuremberg','1961',8.3,'2h 59m','Approved','https://www.imdb.com/title/tt0055031','In 1948, an American court in occupied Germany tries four Nazis judged for war crimes.','Drama','a0000075','d0006452','w0542631','rw3803446'),('tt0055630',145,'Yojimbo','1961',8.2,'1h 50m','Not Rated','https://www.imdb.com/title/tt0055630','A crafty ronin comes to a town divided by two criminal gangs and decides to play them against each other to free the town.','Action','a0001536','d0000041','w0000041','rw0076063'),('tt0056058',45,'Harakiri','1962',8.6,'2h 13m','Not Rated','https://www.imdb.com/title/tt0056058','When a ronin requesting seppuku at a feudal lord\'s palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so ... Read all','Action','a0619938','d0462030','w0847668','rw1175679'),('tt0056172',97,'Lawrence of Arabia','1962',8.3,'3h 38m','Approved','https://www.imdb.com/title/tt0056172','The story of T.E. Lawrence, the English officer who successfully united and led the diverse, often warring, Arab tribes during World War I in order to fight the Turks.','Adventure','a0000564','d0000180','w0004122','rw0077919'),('tt0056592',110,'To Kill a Mockingbird','1962',8.3,'2h 9m','Approved','https://www.imdb.com/title/tt0056592','Atticus Finch, a widowed lawyer in Depression-era Alabama, defends a black man against an undeserved rape charge, and his children against prejudice.','Crime','a0000060','d0612322','w0497369','rw0079616'),('tt0057012',68,'Dr. Strangelove','1964',8.4,'1h 35m','PG','https://www.imdb.com/title/tt0057012','An insane American general orders a bombing attack on the Soviet Union, triggering a path to nuclear holocaust that a war room full of politicians and generals frantically tries to stop.','Comedy','a0000634','d0000040','w0792845','rw3766827'),('tt0057115',148,'The Great Escape','1963',8.2,'2h 52m','Approved','https://www.imdb.com/title/tt0057115','Allied prisoners of war plan for several hundred of their number to escape from a German camp during World War II.','Adventure','a0000537','d0836328','w0108595','rw1476677'),('tt0057565',86,'High and Low','1963',8.4,'2h 23m','Not Rated','https://www.imdb.com/title/tt0057565','An executive of a Yokohama shoe company becomes a victim of extortion when his chauffeur\'s son is kidnapped by mistake and held for ransom.','Crime','a0001536','d0000041','w0644823','rw0083653'),('tt0058946',231,'The Battle of Algiers','1966',8.1,'2h 1m','Not Rated','https://www.imdb.com/title/tt0058946','In the 1950s, fear and violence escalate as the people of Algiers fight for independence from the French government.','Drama','a0352835','d0690597','w0758357','rw0088316'),('tt0059578',126,'For a Few Dollars More','1965',8.2,'2h 12m','R','https://www.imdb.com/title/tt0059578','Two bounty hunters with the same intentions team up to track down an escaped Mexican outlaw.','Western','a0000142','d0001466','w0001466','rw2873286'),('tt0059742',241,'The Sound of Music','1965',8.1,'2h 52m','G','https://www.imdb.com/title/tt0059742','A young novice is sent by her convent in 1930s Austria to become a governess to the seven children of a widowed naval officer.','Biography','a0000267','d0936404','w0403346','rw3596666'),('tt0060196',10,'The Good, the Bad and the Ugly','1966',8.8,'2h 58m','Approved','https://www.imdb.com/title/tt0060196','A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.','Adventure','a0908919','d0001466','w0898812','rw1405659'),('tt0060827',243,'Persona','1966',8.1,'1h 23m','Not Rated','https://www.imdb.com/title/tt0060827','A nurse is put in charge of a mute actress and finds that their personae are melding together.','Drama','a0000761','d0000005','w0000005','rw0094926'),('tt0061512',238,'Cool Hand Luke','1967',8.1,'2h 7m','GP','https://www.imdb.com/title/tt0061512','A laid back Southern man is sentenced to two years in a rural prison, but refuses to conform.','Crime','a0000056','d0742341','w0668914','rw2923989'),('tt0062622',90,'2001: A Space Odyssey','1968',8.3,'2h 29m','G','https://www.imdb.com/title/tt0062622','After uncovering a mysterious artifact buried beneath the Lunar surface, a spacecraft is sent to Jupiter to find its origins - a spacecraft manned by two men and the supercomputer H.A.L. 900... Read all','Adventure','a0001158','d0000040','w0000040','rw0100969'),('tt0064116',48,'Once Upon a Time in the West','1968',8.5,'2h 45m','PG-13','https://www.imdb.com/title/tt0064116','A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.','Western','a0001012','d0001466','w0006872','rw5163719'),('tt0066921',103,'A Clockwork Orange','1971',8.3,'2h 16m','X','https://www.imdb.com/title/tt0066921','In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn\'t go as planned.','Crime','a0000532','d0000040','w0000040','rw0115514'),('tt0068646',2,'The Godfather','1972',9.2,'2h 55m','R','https://www.imdb.com/title/tt0068646','The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.','Crime','a0000008','d0000338','w0701374','rw3038370'),('tt0070047',226,'The Exorcist','1973',8.1,'2h 2m','R','https://www.imdb.com/title/tt0070047','When a teenage girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her daughter.','Horror','a0000995','d0001243','w0087861','rw1177257'),('tt0070735',111,'The Sting','1973',8.3,'2h 9m','PG','https://www.imdb.com/title/tt0070735','Two grifters team up to pull off the ultimate con.','Comedy','a0000056','d0001351','w0911486','rw1611723'),('tt0071315',156,'Chinatown','1974',8.2,'2h 10m','R','https://www.imdb.com/title/tt0071315','A private detective hired to expose an adulterer in 1930s Los Angeles finds himself caught up in a web of deceit, corruption, and murder.','Drama','a0000197','d0000591','w0001801','rw5234910'),('tt0071411',246,'Dersu Uzala','1975',8.2,'2h 22m','G','https://www.imdb.com/title/tt0071411','The Russian army sends an explorer on an expedition to the snowy Siberian wilderness where he makes friends with a seasoned local hunter.','Adventure','a0813272','d0000041','w0000041','rw1024676'),('tt0071562',4,'The Godfather Part II','1974',9.0,'3h 22m','R','https://www.imdb.com/title/tt0071562','The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.','Crime','a0000199','d0000338','w0000338','rw0135607'),('tt0071853',147,'Monty Python and the Holy Grail','1975',8.2,'1h 31m','PG','https://www.imdb.com/title/tt0071853','King Arthur and his Knights of the Round Table embark on a surreal, low-budget search for the Holy Grail, encountering many, very silly obstacles.','Adventure','a0001037','d0000416','w0001037','rw1327523'),('tt0072684',190,'Barry Lyndon','1975',8.1,'3h 5m','PG','https://www.imdb.com/title/tt0072684','An Irish rogue wins the heart of a rich widow and assumes her dead husband\'s aristocratic position in 18th-century England.','Adventure','a0641939','d0000040','w0000040','rw2055218'),('tt0073195',204,'Jaws','1975',8.1,'2h 4m','PG','https://www.imdb.com/title/tt0073195','When a killer shark unleashes chaos on a beach community off Cape Cod, it\'s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.','Adventure','a0001702','d0000229','w0001940','rw3655766'),('tt0073486',18,'One Flew Over the Cuckoo\'s Nest','1975',8.7,'2h 13m','18+','https://www.imdb.com/title/tt0073486','In the Fall of 1963, a Korean War veteran and criminal pleads insanity and is admitted to a mental institution, where he rallies up the scared patients against the tyrannical nurse.','Drama','a0077720','d0001232','w0369142','rw2692389'),('tt0074958',219,'Network','1976',8.1,'2h 1m','R','https://www.imdb.com/title/tt0074958','A television network cynically exploits a deranged former anchor\'s ravings and revelations about the news media for its own profit, but finds that his message may be difficult to control.','Drama','a0001159','d0001486','w0154665','rw0148846'),('tt0075148',211,'Rocky','1976',8.1,'2h','PG','https://www.imdb.com/title/tt0075148','A small-time Philadelphia boxer gets a supremely rare chance to fight the world heavyweight champion in a bout in which he strives to go the distance for his self-respect.','Drama','a0000230','d0000814','w0000230','rw2184417'),('tt0075314',116,'Taxi Driver','1976',8.2,'1h 54m','R','https://www.imdb.com/title/tt0075314','A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action.','Crime','a0007958','d0000217','w0001707','rw3214800'),('tt0076759',28,'Star Wars','1977',8.6,'2h 1m','PG','https://www.imdb.com/title/tt0076759','Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue ... Read all','Action','a0000434','d0000184','w0000184','rw0156286'),('tt0077416',191,'The Deer Hunter','1978',8.1,'3h 3m','R','https://www.imdb.com/title/tt0077416','An in-depth examination of the ways in which the Vietnam War impacts and disrupts the lives of several friends in a small steel mill town in Pennsylvania.','Drama','a0000134','d0001047','w0001047','rw1334836'),('tt0078748',51,'Alien','1979',8.5,'1h 57m','R','https://www.imdb.com/title/tt0078748','The crew of a commercial spacecraft encounter a deadly lifeform after investigating an unknown transmission.','Horror','a0000643','d0000631','w0639321','rw5412227'),('tt0078788',53,'Apocalypse Now','1979',8.5,'2h 27m','R','https://www.imdb.com/title/tt0078788','A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.','Drama','a0000008','d0000338','w0587518','rw0166364'),('tt0079470',244,'Life of Brian','1979',8.0,'1h 34m','R','https://www.imdb.com/title/tt0079470','Born on the original Christmas in the stable next door to Jesus Christ, Brian of Nazareth spends his life being mistaken for a messiah.','Comedy','a0001037','d0001402','w0001037','rw2922899'),('tt0080678',155,'The Elephant Man','1980',8.2,'2h 4m','PG','https://www.imdb.com/title/tt0080678','A Victorian surgeon rescues a heavily disfigured man who is mistreated while scraping a living as a side-show freak. Behind his monstrous faade, there is revealed a person of kindness, inte... Read all','Biography','a0000164','d0000186','w0212246','rw1206636'),('tt0080684',15,'Star Wars: Episode V - The Empire Strikes Back','1980',8.7,'2h 4m','PG','https://www.imdb.com/title/tt0080684','After the Rebels are overpowered by the Empire, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.','Action','a0000434','d0449984','w0102824','rw0175328'),('tt0081398',157,'Raging Bull','1980',8.2,'2h 9m','R','https://www.imdb.com/title/tt0081398','The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.','Biography','a0000134','d0000217','w0483766','rw0179295'),('tt0081505',61,'The Shining','1980',8.4,'2h 26m','R','https://www.imdb.com/title/tt0081505','A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.','Drama','a0000197','d0000040','w0000175','rw6186405'),('tt0082096',77,'The Boat','1981',8.4,'2h 29m','','https://www.imdb.com/title/tt0082096','A German U-boat stalks the frigid waters of the North Atlantic as its young crew experience the sheer terror and claustrophobic life of a submariner in World War II.','Drama','a0001638','d0000583','w0000583','rw1051627'),('tt0082971',56,'Raiders of the Lost Ark','1981',8.4,'1h 55m','PG','https://www.imdb.com/title/tt0082971','In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before the Nazis can obtain its awesome powers.','Action','a0000148','d0000229','w0001410','rw8212272'),('tt0083658',176,'Blade Runner','1982',8.1,'1h 57m','R','https://www.imdb.com/title/tt0083658','A blade runner must pursue and terminate four replicants who stole a ship in space and have returned to Earth to find their creator.','Action','a0000148','d0000631','w0266684','rw4059597'),('tt0083987',249,'Gandhi','1982',8.0,'3h 11m','PG','https://www.imdb.com/title/tt0083987','The life of the lawyer who became the famed leader of the Indian revolts against the British rule through his philosophy of nonviolent protest.','Biography','a0001426','d0000277','w0109300','rw0194126'),('tt0084787',153,'The Thing','1982',8.2,'1h 49m','R','https://www.imdb.com/title/tt0084787','A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.','Horror','a0000621','d0000118','w0484111','rw0197822'),('tt0086190',89,'Star Wars: Episode VI - Return of the Jedi','1983',8.3,'2h 11m','PG','https://www.imdb.com/title/tt0086190','After rescuing Han Solo from Jabba the Hutt, the Rebels attempt to destroy the second Death Star, while Luke struggles to help Darth Vader back from the dark side.','Action','a0000434','d0549658','w0001410','rw7259411'),('tt0086250',106,'Scarface','1983',8.3,'2h 50m','R','https://www.imdb.com/title/tt0086250','In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.','Crime','a0000199','d0000361','w0000231','rw3596039'),('tt0086879',72,'Amadeus','1984',8.4,'2h 40m','PG','https://www.imdb.com/title/tt0086879','The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporaneous composer who was deeply jealous of Mozart\'s talent and claimed to have murdered him... Read all','Biography','a0000719','d0001232','w0787323','rw0208335'),('tt0087843',80,'Once Upon a Time in America','1984',8.3,'3h 49m','R','https://www.imdb.com/title/tt0087843','A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan 35 years later, where he must once again confront the ghosts and regrets of his old life.','Crime','a0000134','d0001466','w0340580','rw2900651'),('tt0088247',215,'The Terminator','1984',8.1,'1h 47m','R','https://www.imdb.com/title/tt0088247','A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn so... Read all','Action','a0000216','d0000116','w0000116','rw0216010'),('tt0088763',30,'Back to the Future','1985',8.5,'1h 56m','PG','https://www.imdb.com/title/tt0088763','Marty McFly, a 17-year-old high school student, is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.','Adventure','a0000150','d0000709','w0000709','rw2236356'),('tt0089881',135,'Ran','1985',8.2,'2h 42m','R','https://www.imdb.com/title/tt0089881','In Medieval Japan, an elderly warlord retires, handing over his empire to his three sons. However, he vastly underestimates how the new-found power will corrupt them and cause them to turn o... Read all','Action','a0619938','d0000041','w0000041','rw0225549'),('tt0090605',65,'Aliens','1986',8.4,'2h 17m','R','https://www.imdb.com/title/tt0090605','Decades after surviving the Nostromo incident, Ellen Ripley is sent out to re-establish contact with a terraforming colony, but finds herself battling the Alien Queen and her offspring.','Action','a0000244','d0000116','w0000116','rw5458761'),('tt0091251',93,'Come and See','1985',8.4,'2h 22m','Not Rated','https://www.imdb.com/title/tt0091251','After finding an old rifle, a young boy joins the Soviet resistance movement against ruthless German forces and experiences the horrors of World War II.','Drama','a0470385','d0459552','w0010696','rw0987277'),('tt0091763',212,'Platoon','1986',8.1,'2h','R','https://www.imdb.com/title/tt0091763','Chris Taylor, a neophyte recruit in Vietnam, finds himself caught in a battle of wills between two sergeants, one good and the other evil. A shrewd examination of the brutality of war and th... Read all','Drama','a0202966','d0000231','w0000231','rw2913187'),('tt0092005',217,'Stand by Me','1986',8.1,'1h 29m','13+','https://www.imdb.com/title/tt0092005','After the death of one of his friends, a writer recounts a childhood journey with his friends to find the body of a missing boy.','Adventure','a0000696','d0001661','w0000175','rw0237740'),('tt0093058',105,'Full Metal Jacket','1987',8.3,'1h 56m','R','https://www.imdb.com/title/tt0093058','A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.','Drama','a0000546','d0000040','w0000040','rw2158899'),('tt0095016',118,'Die Hard','1988',8.2,'2h 12m','R','https://www.imdb.com/title/tt0095016','A New York City police officer tries to save his estranged wife and several others taken hostage by terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.','Action','a0000246','d0001532','w0861636','rw2250278'),('tt0095327',44,'Grave of the Fireflies','1988',8.5,'1h 29m','Not Rated','https://www.imdb.com/title/tt0095327','A young boy and his little sister struggle to survive in Japan during World War II.','Animation','a0851302','d0847223','w0636435','rw0258302'),('tt0095765',49,'Cinema Paradiso','1988',8.5,'2h 35m','PG','https://www.imdb.com/title/tt0095765','A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema\'s projectionist.','Drama','a0041066','d0868153','w0868153','rw1024609'),('tt0096283',172,'My Neighbor Totoro','1988',8.1,'1h 26m','G','https://www.imdb.com/title/tt0096283','When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.','Animation','a0383022','d0594503','w0594503','rw2342827'),('tt0097165',205,'Dead Poets Society','1989',8.1,'2h 8m','PG','https://www.imdb.com/title/tt0097165','Maverick teacher John Keating uses poetry to embolden his boarding school students to new heights of self-expression.','Comedy','a0000245','d0001837','w0776114','rw0268463'),('tt0097576',120,'Indiana Jones and the Last Crusade','1989',8.2,'2h 7m','PG-13','https://www.imdb.com/title/tt0097576','In 1938, after his father goes missing while pursuing the Holy Grail, Indiana Jones finds himself up against the Nazis again to stop them from obtaining its powers.','Action','a0000148','d0000229','w0090151','rw8212285'),('tt0099348',250,'Dances with Wolves','1990',8.0,'3h 1m','PG-13','https://www.imdb.com/title/tt0099348','Lieutenant John Dunbar, assigned to a remote western Civil War outpost, befriends wolves and Native Americans, making him an intolerable aberration in the military.','Adventure','a0000126','d0000126','w0086658','rw6808367'),('tt0099685',17,'Goodfellas','1990',8.7,'2h 25m','R','https://www.imdb.com/title/tt0099685','The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate... Read all','Biography','a0000134','d0000217','w0683380','rw2923502'),('tt0102926',22,'The Silence of the Lambs','1991',8.6,'1h 58m','R','https://www.imdb.com/title/tt0102926','A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.','Crime','a0000149','d0001129','w0365383','rw1198894'),('tt0103064',29,'Terminator 2: Judgment Day','1991',8.6,'2h 17m','R','https://www.imdb.com/title/tt0103064','A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her 10-year old son John from an even more advanced and powerful cyborg.','Action','a0000216','d0000116','w0000116','rw2119628'),('tt0103639',248,'Aladdin','1992',8.0,'1h 30m','G','https://www.imdb.com/title/tt0103639','A kindhearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.','Animation','a0918334','d0166256','w0166256','rw0302749'),('tt0105236',92,'Reservoir Dogs','1992',8.3,'1h 39m','R','https://www.imdb.com/title/tt0105236','When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.','Crime','a0000172','d0000233','w0000233','rw2301618'),('tt0105695',140,'Unforgiven','1992',8.2,'2h 10m','R','https://www.imdb.com/title/tt0105695','Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner Ned Logan and a young man, The \"Schofield Kid.\"\"\"','Drama','a0000142','d0000142','w0672459','rw2399163'),('tt0107048',225,'Groundhog Day','1993',8.1,'1h 41m','PG','https://www.imdb.com/title/tt0107048','A narcissistic, self-centered weatherman finds himself in a time loop on Groundhog Day, and the day keeps repeating until he gets it right.','Comedy','a0000195','d0000601','w0748035','rw2923008'),('tt0107207',188,'In the Name of the Father','1993',8.1,'2h 13m','R','https://www.imdb.com/title/tt0107207','A man\'s coerced confession to an I.R.A. bombing he did not commit results in the imprisonment of his father as well. An English lawyer fights to free them.','Biography','a0188949','d0006487','w0174840','rw6152495'),('tt0107290',144,'Jurassic Park','1993',8.2,'2h 7m','PG-13','https://www.imdb.com/title/tt0107290','A pragmatic paleontologist touring an almost complete theme park on an island in Central America is tasked with protecting a couple of kids after a power failure causes the park\'s cloned din... Read all','Action','a0000554','d0000229','w0000341','rw4198042'),('tt0108052',6,'Schindler\'s List','1993',9.0,'3h 15m','R','https://www.imdb.com/title/tt0108052','In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.','Biography','a0000553','d0000229','w0447745','rw2143371'),('tt0109830',11,'Forrest Gump','1994',8.8,'2h 22m','PG-13','https://www.imdb.com/title/tt0109830','The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire ... Read all','Drama','a0000158','d0000709','w0343165','rw0339201'),('tt0110357',36,'The Lion King','1994',8.5,'1h 28m','G','https://www.imdb.com/title/tt0110357','Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.','Animation','a0000100','d0021249','w0575293','rw0342377'),('tt0110413',35,'Lon: The Professional','1994',8.5,'1h 50m','R','https://www.imdb.com/title/tt0110413','12-year-old Mathilda is reluctantly taken in by Lon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protge and learns the assassin... Read all','Action','a0000606','d0000108','w0000108','rw0343133'),('tt0110912',8,'Pulp Fiction','1994',8.9,'2h 34m','R','https://www.imdb.com/title/tt0110912','The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.','Crime','a0000619','d0000233','w0000233','rw1218264'),('tt0111161',1,'The Shawshank Redemption','1994',9.3,'2h 22m','R','https://www.imdb.com/title/tt0111161','Over the course of several years, two convicts form a friendship, seeking consolation and, eventually, redemption through basic compassion.','Drama','a0000209','d0001104','w0000175','rw2284594'),('tt0112471',179,'Before Sunrise','1995',8.1,'1h 41m','R','https://www.imdb.com/title/tt0112471','A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.','Drama','a0000160','d0000500','w0000500','rw1050018'),('tt0112573',76,'Braveheart','1995',8.4,'2h 58m','R','https://www.imdb.com/title/tt0112573','Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.','Biography','a0732703','d0000154','w0908824','rw5506020'),('tt0112641',136,'Casino','1995',8.2,'2h 58m','R','https://www.imdb.com/title/tt0112641','A tale of greed, deception, money, power, and murder occur between two best friends: a mafia enforcer and a casino executive compete against each other over a gambling empire, and over a fas... Read all','Crime','a0000134','d0000217','w0683380','rw0358218'),('tt0113247',229,'La haine','1995',8.1,'1h 38m','Not Rated','https://www.imdb.com/title/tt0113247','24 hours in the lives of three young men in the French suburbs the day after a violent riot.','Crime','a0001993','d0440913','w0440913','rw3871855'),('tt0113277',109,'Heat','1995',8.3,'2h 50m','R','https://www.imdb.com/title/tt0113277','A group of high-end professional thieves start to feel the heat from the LAPD when they unknowingly leave a clue at their latest heist.','Action','a0000199','d0000520','w0000520','rw2418301'),('tt0114369',19,'Se7en','1995',8.6,'2h 7m','R','https://www.imdb.com/title/tt0114369','Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.','Crime','a0000151','d0000399','w0001825','rw1819666'),('tt0114709',74,'Toy Story','1995',8.3,'1h 21m','G','https://www.imdb.com/title/tt0114709','A cowboy doll is profoundly threatened and jealous when a new spaceman action figure supplants him as top toy in a boy\'s bedroom.','Animation','a0000158','d0005124','w0005124','rw0373152'),('tt0114814',40,'The Usual Suspects','1995',8.5,'1h 46m','R','https://www.imdb.com/title/tt0114814','A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.','Crime','a0000286','d0001741','w0003160','rw1236041'),('tt0116282',170,'Fargo','1996',8.1,'1h 38m','R','https://www.imdb.com/title/tt0116282','Minnesota car salesman Jerry Lundegaard\'s inept crime falls apart due to his and his henchmen\'s bungling and the persistent police work of the quite pregnant Marge Gunderson.','Crime','a0000513','d0001054','w0001053','rw1015517'),('tt0117951',167,'Trainspotting','1996',8.1,'1h 33m','R','https://www.imdb.com/title/tt0117951','Renton, deeply immersed in the Edinburgh drug scene, tries to clean up and get out, despite the allure of the drugs and influence of friends.','Drama','a0000191','d0000965','w0920543','rw5261062'),('tt0118715',206,'The Big Lebowski','1998',8.1,'1h 57m','R','https://www.imdb.com/title/tt0118715','Ultimate L.A. slacker Jeff \'The Dude\' Lebowski, mistaken for a millionaire of the same name, seeks restitution for a rug ruined by debt collectors, enlisting his bowling buddies for help whi... Read all','Comedy','a0000313','d0001054','w0001053','rw3348121'),('tt0118799',26,'Life Is Beautiful','1997',8.6,'1h 56m','PG-13','https://www.imdb.com/title/tt0118799','When an open-minded Jewish waiter and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp... Read all','Comedy','a0000905','d0000905','w0148437','rw7665769'),('tt0118849',175,'Children of Heaven','1997',8.2,'1h 29m','PG','https://www.imdb.com/title/tt0118849','After a boy loses his sister\'s pair of shoes, he goes on a series of adventures in order to find them. When he can\'t, he tries a new way to \"win\"\" a new pair.\"','Drama','a0619870','d0006498','w0006498','rw0410304'),('tt0119217',81,'Good Will Hunting','1997',8.3,'2h 6m','R','https://www.imdb.com/title/tt0119217','Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.','Drama','a0000354','d0001814','w0000354','rw0418096'),('tt0119488',117,'L.A. Confidential','1997',8.2,'2h 18m','R','https://www.imdb.com/title/tt0119488','As corruption grows in 1950s Los Angeles, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.','Crime','a0000228','d0000436','w0255278','rw0422740'),('tt0119698',79,'Princess Mononoke','1997',8.3,'2h 14m','PG-13','https://www.imdb.com/title/tt0119698','On a journey to find the cure for a Tatarigami\'s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, th... Read all','Animation','a0001082','d0594503','w0594503','rw0426392'),('tt0120382',137,'The Truman Show','1998',8.2,'1h 43m','PG','https://www.imdb.com/title/tt0120382','An insurance salesman discovers his whole life is actually a reality TV show.','Comedy','a0000120','d0001837','w0629272','rw0954092'),('tt0120586',38,'American History X','1998',8.5,'1h 59m','R','https://www.imdb.com/title/tt0120586','A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.','Crime','a0001570','d0443411','w0571346','rw1130372'),('tt0120689',27,'The Green Mile','1999',8.6,'3h 9m','R','https://www.imdb.com/title/tt0120689','The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.','Crime','a0000158','d0001104','w0000175','rw0454593'),('tt0120735',160,'Lock, Stock and Two Smoking Barrels','1998',8.2,'1h 47m','R','https://www.imdb.com/title/tt0120735','Eddy persuades his three pals to pool money for a vital poker game against a powerful local mobster, Hatchet Harry. Eddy loses, after which Harry gives him a week to pay back 500,000 pounds.','Action','a0002076','d0005363','w0005363','rw1297356'),('tt0120737',9,'The Lord of the Rings: The Fellowship of the Ring','2001',8.8,'2h 58m','PG-13','https://www.imdb.com/title/tt0120737','A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.','Action','a0397102','d0001392','w0866058','rw1308663'),('tt0120815',23,'Saving Private Ryan','1998',8.6,'2h 49m','R','https://www.imdb.com/title/tt0120815','Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.','Drama','a0000158','d0000229','w0734441','rw5369393'),('tt0129167',245,'The Iron Giant','1999',8.1,'1h 26m','PG','https://www.imdb.com/title/tt0129167','A young boy befriends a giant robot from outer space that a paranoid government agent wants to destroy.','Animation','a0000098','d0083348','w0564827','rw0501582'),('tt0133093',16,'The Matrix','1999',8.7,'2h 16m','R','https://www.imdb.com/title/tt0133093','When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.','Action','a0000206','d0905154','w0905152','rw5228002'),('tt0137523',12,'Fight Club','1999',8.8,'2h 19m','R','https://www.imdb.com/title/tt0137523','An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.','Drama','a0001570','d0000399','w0657333','rw5476552'),('tt0167260',7,'The Lord of the Rings: The Return of the King','2003',9.0,'3h 21m','PG-13','https://www.imdb.com/title/tt0167260','Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.','Action','a0032370','d0001392','w0866058','rw6131865'),('tt0167261',13,'The Lord of the Rings: The Two Towers','2002',8.8,'2h 59m','PG-13','https://www.imdb.com/title/tt0167261','While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.','Action','a0021600','d0001392','w0866058','rw2294579'),('tt0167404',141,'The Sixth Sense','1999',8.2,'1h 47m','PG-13','https://www.imdb.com/title/tt0167404','A frightened, withdrawn Philadelphia boy who communicates with spirits seeks the help of a disheartened child psychologist.','Drama','a0000246','d0796117','w0796117','rw1516950'),('tt0169547',67,'American Beauty','1999',8.4,'2h 2m','R','https://www.imdb.com/title/tt0169547','A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter\'s best friend.','Drama','a0000228','d0005222','w0050332','rw0593815'),('tt0172495',37,'Gladiator','2000',8.5,'2h 35m','R','https://www.imdb.com/title/tt0172495','A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.','Action','a0000128','d0000631','w0291905','rw3063658'),('tt0180093',85,'Requiem for a Dream','2000',8.3,'1h 42m','Unrated','https://www.imdb.com/title/tt0180093','The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.','Drama','a0000995','d0004716','w0782968','rw6065804'),('tt0198781',202,'Monsters, Inc.','2001',8.1,'1h 32m','G','https://www.imdb.com/title/tt0198781','In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, two monsters realize things ... Read all','Animation','a0000422','d0230032','w0230032','rw0954846'),('tt0208092',119,'Snatch','2000',8.2,'1h 42m','R','https://www.imdb.com/title/tt0208092','Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond.','Comedy','a0011744','d0005363','w0005363','rw0663117'),('tt0209144',54,'Memento','2000',8.4,'1h 53m','R','https://www.imdb.com/title/tt0209144','A man with short-term memory loss attempts to track down his wife\'s murderer.','Mystery','a0001602','d0634240','w0634240','rw3533358'),('tt0211915',102,'Amlie','2001',8.3,'2h 2m','R','https://www.imdb.com/title/tt0211915','Amlie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.','Comedy','a0851582','d0000466','w0491011','rw0672222'),('tt0245429',31,'Spirited Away','2001',8.6,'2h 5m','PG','https://www.imdb.com/title/tt0245429','During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.','Animation','a0383708','d0594503','w0594503','rw2928533'),('tt0245712',236,'Amores Perros','2000',8.1,'2h 34m','R','https://www.imdb.com/title/tt0245712','A horrific car accident connects three stories, each involving characters dealing with loss, regret, and life\'s harsh realities, all in the name of love.','Drama','a0248408','d0327944','w0037247','rw0729022'),('tt0253474',32,'The Pianist','2002',8.5,'2h 30m','R','https://www.imdb.com/title/tt0253474','A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.','Biography','a0004778','d0000591','w0367838','rw0955497'),('tt0264464',173,'Catch Me If You Can','2002',8.1,'2h 21m','PG-13','https://www.imdb.com/title/tt0264464','Barely 21 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit.','Biography','a0000138','d0000229','w0622288','rw0765374'),('tt0266543',154,'Finding Nemo','2003',8.2,'1h 40m','G','https://www.imdb.com/title/tt0266543','After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.','Animation','a0000983','d0004056','w0004056','rw0773564'),('tt0266697',150,'Kill Bill: Vol. 1','2003',8.2,'1h 51m','R','https://www.imdb.com/title/tt0266697','After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.','Action','a0000235','d0000233','w0000233','rw3344973'),('tt0268978',143,'A Beautiful Mind','2001',8.2,'2h 15m','PG-13','https://www.imdb.com/title/tt0268978','After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.','Biography','a0000128','d0000165','w0326040','rw0779920'),('tt0317248',24,'City of God','2002',8.6,'2h 10m','R','https://www.imdb.com/title/tt0317248','In the slums of Rio, two kids\' paths diverge as one struggles to become a photographer and the other a kingpin.','Crime','a1179105','d0576987','w0513130','rw3727515'),('tt0317705',228,'The Incredibles','2004',8.0,'1h 55m','PG','https://www.imdb.com/title/tt0317705','While trying to lead a quiet suburban life, a family of undercover superheroes are forced into action to save the world.','Animation','a0005266','d0083348','w0083348','rw6616511'),('tt0325980',230,'Pirates of the Caribbean: The Curse of the Black Pearl','2003',8.1,'2h 23m','PG-13','https://www.imdb.com/title/tt0325980','Blacksmith Will Turner teams up with eccentric pirate \'Captain\' Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.','Action','a0000136','d0893659','w0254645','rw3854357'),('tt0338013',91,'Eternal Sunshine of the Spotless Mind','2004',8.3,'1h 48m','R','https://www.imdb.com/title/tt0338013','When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories for ever.','Drama','a0000120','d0327273','w0442109','rw0902530'),('tt0347149',164,'Howl\'s Moving Castle','2004',8.2,'1h 59m','PG','https://www.imdb.com/title/tt0347149','When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions ... Read all','Animation','a0047962','d0594503','w0594503','rw1043739'),('tt0353969',194,'Memories of Murder','2003',8.1,'2h 12m','Not Rated','https://www.imdb.com/title/tt0353969','In a small Korean province in 1986, two detectives struggle with the case of multiple young women being found raped and murdered by an unknown culprit.','Crime','a0814280','d0094435','w0094435','rw2028024'),('tt0361748',71,'Inglourious Basterds','2009',8.3,'2h 33m','R','https://www.imdb.com/title/tt0361748','In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner\'s vengeful plans for the same.','Adventure','a0000093','d0000233','w0000233','rw5512536'),('tt0363163',124,'Downfall','2004',8.2,'2h 36m','R','https://www.imdb.com/title/tt0363163','Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator\'s final days in his Berlin bunker at the end of WWII.','Biography','a0004486','d0386570','w0251536','rw1269676'),('tt0364569',70,'Oldboy','2003',8.4,'2h','R','https://www.imdb.com/title/tt0364569','After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.','Action','a0158856','d0661791','w1628380','rw3540091'),('tt0372784',127,'Batman Begins','2005',8.2,'2h 20m','PG-13','https://www.imdb.com/title/tt0372784','After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.','Action','a0000288','d0634240','w0004170','rw1151361'),('tt0381681',220,'Before Sunset','2004',8.1,'1h 20m','R','https://www.imdb.com/title/tt0381681','Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesse\'s book tour.','Drama','a0000160','d0000500','w0000500','rw0977367'),('tt0382932',213,'Ratatouille','2007',8.1,'1h 51m','G','https://www.imdb.com/title/tt0382932','A rat who can cook makes an unusual alliance with a young kitchen worker at a famous Paris restaurant.','Animation','a0652663','d0083348','w0083348','rw4446684'),('tt0395169',210,'Hotel Rwanda','2004',8.1,'2h 1m','PG-13','https://www.imdb.com/title/tt0395169','Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.','Biography','a1796730','d0313623','w0669311','rw0959546'),('tt0405094',58,'The Lives of Others','2006',8.4,'2h 17m','R','https://www.imdb.com/title/tt0405094','In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.','Drama','a0311476','d0003697','w0003697','rw1614010'),('tt0405159',174,'Million Dollar Baby','2004',8.1,'2h 12m','PG-13','https://www.imdb.com/title/tt0405159','A determined woman works with a hardened boxing trainer to become a professional.','Drama','a0000142','d0000142','w0353673','rw6351812'),('tt0407887',39,'The Departed','2006',8.5,'2h 31m','R','https://www.imdb.com/title/tt0407887','An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.','Crime','a0000138','d0000217','w1184258','rw2170460'),('tt0434409',158,'V for Vendetta','2005',8.2,'2h 12m','R','https://www.imdb.com/title/tt0118715','In a future British dystopian society, a shadowy freedom fighter, known only by the alias of \'V\', plots to overthrow the tyrannical government - with the help of a young woman.','Action','a0000204','d0574625','w0000122','rw4080218'),('tt0435761',87,'Toy Story 3','2010',8.3,'1h 43m','G','https://www.imdb.com/title/tt0435761','The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned ... Read all','Animation','a0000158','d0881279','w0005124','rw2333889'),('tt0457430',138,'Pan\'s Labyrinth','2006',8.2,'1h 58m','R','https://www.imdb.com/title/tt0457430','In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.','Drama','a1419440','d0868219','w0868219','rw3615836'),('tt0468569',3,'The Dark Knight','2008',9.0,'2h 32m','PG-13','https://www.imdb.com/title/tt0468569','When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.','Action','a0000288','d0634240','w0634300','rw5478826'),('tt0469494',139,'There Will Be Blood','2007',8.2,'2h 38m','R','https://www.imdb.com/title/tt0469494','A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.','Drama','a0000358','d0000759','w0000759','rw1840254'),('tt0476735',235,'My Father and My Son','2005',8.2,'1h 52m','Not Rated','https://www.imdb.com/title/tt0476735','The family of a left-wing journalist is torn apart after the military coup of Turkey in 1980.','Drama','a1002038','d1463981','w1463981','rw4115349'),('tt0477348',149,'No Country for Old Men','2007',8.2,'2h 2m','R','https://www.imdb.com/title/tt0477348','Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.','Crime','a0000169','d0001053','w0001054','rw4078243'),('tt0482571',41,'The Prestige','2006',8.5,'2h 10m','PG-13','https://www.imdb.com/title/tt0482571','After a tragic accident, two stage magicians in 1890s London engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.','Drama','a0413168','d0634240','w0634300','rw1953427'),('tt0758758',221,'Into the Wild','2007',8.1,'2h 28m','R','https://www.imdb.com/title/tt0758758','After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska ... Read all','Adventure','a0386472','d0000576','w0000576','rw2099585'),('tt0816692',25,'Interstellar','2014',8.6,'2h 49m','PG-13','https://www.imdb.com/title/tt0816692','A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.','Adventure','a0000995','d0634240','w0634300','rw3248454'),('tt0892769',201,'How to Train Your Dragon','2010',8.1,'1h 38m','PG','https://www.imdb.com/title/tt0892769','A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.','Animation','a0059431','d0213450','w0204030','rw2222837'),('tt0910970',57,'WALLE','2008',8.4,'1h 38m','G','https://www.imdb.com/title/tt0910970','In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.','Animation','a0123785','d0004056','w0004056','rw1900551'),('tt0978762',199,'Mary and Max','2009',8.1,'1h 32m','Not Rated','https://www.imdb.com/title/tt0978762','A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New Y... Read all','Animation','a1814260','d0254178','w0254178','rw2305314'),('tt0986264',122,'Like Stars on Earth','2007',8.3,'2h 45m','PG','https://www.imdb.com/title/tt0986264','An eight-year-old boy is thought to be a lazy trouble-maker, until the new art teacher has the patience and compassion to discover the real problem behind his struggles in school.','Drama','a2594301','d0451148','w1244760','rw2899819'),('tt0993846',132,'The Wolf of Wall Street','2013',8.2,'3h','R','https://www.imdb.com/title/tt0993846','Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.','Biography','a0000138','d0000217','w1010540','rw2943582'),('tt10272386',130,'The Father','2020',8.2,'1h 37m','PG-13','https://www.imdb.com/title/tt10272386','A man refuses all assistance from his daughter as he ages. As he tries to make sense of his changing circumstances, he begins to doubt his loved ones, his own mind and even the fabric of his... Read all','Drama','a1469236','d1725469','w0358960','rw7189051'),('tt1028532',232,'Hachi: A Dog\'s Tale','2009',8.1,'1h 33m','G','https://www.imdb.com/title/tt1028532','A college professor bonds with an abandoned dog he takes into his home.','Biography','a0000152','d0002120','w2124742','rw2186063'),('tt1049413',112,'Up','2009',8.3,'1h 36m','PG','https://www.imdb.com/title/tt1049413','78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.','Animation','a0000799','d0230032','w0230032','rw2931192'),('tt10872600',152,'Spider-Man: No Way Home','2021',8.2,'2h 28m','PG-13','https://www.imdb.com/title/tt10872600','With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it trul... Read all','Action','a4043618','d1218281','w0571344','rw7647233'),('tt1130884',142,'Shutter Island','2010',8.2,'2h 18m','R','https://www.imdb.com/title/tt1130884','In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.','Mystery','a0000138','d0000217','w0436164','rw5010692'),('tt1187043',84,'3 Idiots','2009',8.4,'2h 50m','PG-13','https://www.imdb.com/title/tt1187043','Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of t... Read all','Comedy','a0451148','d0386246','w0430785','rw2437714'),('tt1201607',180,'Harry Potter and the Deathly Hallows: Part 2','2011',8.1,'2h 10m','PG-13','https://www.imdb.com/title/tt1201607','Harry, Ron, and Hermione search for Voldemort\'s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.','Adventure','a0000146','d0946734','w0460141','rw2459610'),('tt1205489',171,'Gran Torino','2008',8.1,'1h 56m','R','https://www.imdb.com/title/tt1205489','Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, Thao Lor, a Hmong teenager who tried to steal Kowalski\'s prized possession: a 1972 Gran Torino.','Drama','a0000142','d0000142','w1010405','rw1990728'),('tt1255953',108,'Incendies','2010',8.3,'2h 11m','R','https://www.imdb.com/title/tt1255953','Twins journey to the Middle East to discover their family history and fulfill their mother\'s last wishes.','Drama','a1323233','d0898288','w0898288','rw4158677'),('tt1291584',169,'Warrior','2011',8.2,'2h 20m','PG-13','https://www.imdb.com/title/tt1291584','The youngest son of an alcoholic former boxer returns home, where he\'s trained by his father for competition in a mixed martial arts tournament - a path that puts the fighter on a collision ... Read all','Action','a0249291','d0640334','w0640334','rw3849375'),('tt1305806',163,'The Secret in Their Eyes','2009',8.2,'2h 9m','R','https://www.imdb.com/title/tt1305806','A retired legal counselor writes a novel hoping to find closure for one of his past unresolved homicide cases and for his unreciprocated love with his superior - both of which still haunt hi... Read all','Drama','a0897845','d0002728','w3160078','rw3422764'),('tt1345836',69,'The Dark Knight Rises','2012',8.4,'2h 44m','PG-13','https://www.imdb.com/title/tt1345836','Eight years after the Joker\'s reign of chaos, Batman is coerced out of exile with the assistance of the mysterious Selina Kyle in order to defend Gotham City from the vicious guerrilla terro... Read all','Action','a0000288','d0634240','w0634300','rw2729565'),('tt1375666',14,'Inception','2010',8.8,'2h 28m','PG-13','https://www.imdb.com/title/tt1375666','A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the pro... Read all','Action','a0000138','d0634240','w0634240','rw4692192'),('tt1392190',198,'Mad Max: Fury Road','2015',8.1,'2h','R','https://www.imdb.com/title/tt1392190','In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named ... Read all','Action','a0362766','d0004306','w0004306','rw3420996'),('tt1392214',168,'Prisoners','2013',8.1,'2h 33m','R','https://www.imdb.com/title/tt1392214','When Keller Dover\'s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.','Crime','a0413168','d0898288','w3360706','rw7316428'),('tt1454029',247,'The Help','2011',8.1,'2h 26m','PG-13','https://www.imdb.com/title/tt1454029','An aspiring author during the civil rights movement of the 1960s decides to write a book detailing the African American maids\' point of view on the white families for which they work, and th... Read all','Drama','a1297015','d0853238','w0853238','rw2473566'),('tt15097216',234,'Jai Bhim','2021',8.8,'2h 44m','TV-MA','https://www.imdb.com/title/tt15097216','When a tribal man is arrested for a case of alleged theft, his wife turns to a human-rights lawyer to help bring justice.','Crime','a1421814','d4377096','w4377096','rw7503156'),('tt1675434',46,'The Intouchables','2011',8.5,'1h 52m','R','https://www.imdb.com/title/tt1675434','After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.','Biography','a0167388','d0619923','w0619923','rw2524388'),('tt1745960',113,'Top Gun: Maverick','2022',8.3,'2h 10m','PG-13','https://www.imdb.com/title/tt1745960','After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN\'s elite graduates on a mission that demands the ','Action','a0000129','d2676052','w0258493','rw8168012'),('tt1832382',114,'A Separation','2011',8.3,'2h 3m','PG-13','https://www.imdb.com/title/tt1832382','A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzhei... Read all','Drama','a1818216','d1410815','w1410815','rw2548767'),('tt1853728',55,'Django Unchained','2012',8.4,'2h 45m','R','https://www.imdb.com/title/tt1853728','With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi.','Drama','a0004937','d0000233','w0000233','rw6380258'),('tt1895587',214,'Spotlight','2015',8.1,'2h 9m','R','https://www.imdb.com/title/tt1895587','The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.','Biography','a0749263','d0565336','w1802857','rw3522371'),('tt1950186',209,'Ford v Ferrari','2019',8.1,'2h 32m','PG-13','https://www.imdb.com/title/tt1950186','American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 2... Read all','Action','a0000354','d0003506','w0125336','rw6041152'),('tt1979320',218,'Rush','2013',8.1,'2h 3m','R','https://www.imdb.com/title/tt1979320','The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.','Action','a1165110','d0000165','w0604948','rw3429340'),('tt2024544',181,'12 Years a Slave','2013',8.1,'2h 14m','R','https://www.imdb.com/title/tt2024544','In the antebellum United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery.','Biography','a0252230','d2588606','w0725983','rw2893623'),('tt2096673',161,'Inside Out','2015',8.2,'1h 35m','PG','https://www.imdb.com/title/tt2096673','After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and... Read all','Animation','a0688132','d0230032','w0230032','rw7383760'),('tt2106476',94,'The Hunt','2012',8.3,'1h 55m','R','https://www.imdb.com/title/tt2106476','A teacher lives a lonely life, all the while struggling over his son\'s custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to... Read all','Drama','a0586568','d0899121','w0899121','rw2951920'),('tt2119532',192,'Hacksaw Ridge','2016',8.1,'2h 19m','R','https://www.imdb.com/title/tt2119532','World War II American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people and becomes the first man in American history to receive the Medal of Honor ... Read all','Biography','a1940449','d0000154','w0770938','rw5475659'),('tt2267998',185,'Gone Girl','2014',8.1,'2h 29m','R','https://www.imdb.com/title/tt2267998','With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.','Drama','a0000255','d0000399','w5058839','rw4391617'),('tt2278388',184,'The Grand Budapest Hotel','2014',8.1,'1h 39m','R','https://www.imdb.com/title/tt2278388','A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel\'s glorious years under an exceptional concierge.','Adventure','a0000146','d0027572','w0959003','rw3519137'),('tt2380307',73,'Coco','2017',8.4,'1h 45m','PG','https://www.imdb.com/title/tt2380307','Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.','Animation','a5645519','d0881279','w0881279','rw4150044'),('tt2582802',42,'Whiplash','2014',8.5,'1h 46m','R','https://www.imdb.com/title/tt2582802','A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.','Drama','a1886602','d3227090','w3227090','rw4078668'),('tt3011894',196,'Wild Tales','2014',8.1,'2h 2m','R','https://www.imdb.com/title/tt3011894','Six short stories that explore the extremities of human behavior involving people in distress.','Comedy','a0334882','d1167933','w1238855','rw5738280'),('tt3170832',203,'Room','2015',8.1,'1h 58m','R','https://www.imdb.com/title/tt3170832','Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time.','Drama','a0488953','d1049433','w1480980','rw3320680'),('tt3315342',216,'Logan','2017',8.1,'2h 17m','R','https://www.imdb.com/title/tt3315342','In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to s... Read all','Action','a0413168','d0003506','w0003506','rw6337774'),('tt4016934',239,'The Handmaiden','2016',8.1,'2h 25m','Not Rated','https://www.imdb.com/title/tt4016934','A woman is hired as a handmaiden to a Japanese heiress, but secretly she is involved in a plot to defraud her.','Drama','a3892241','d0661791','w1258797','rw3673513'),('tt4154756',63,'Avengers: Infinity War','2018',8.4,'2h 29m','PG-13','https://www.imdb.com/title/tt4154756','The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.','Action','a0000375','d0751577','w1321655','rw6521351'),('tt4154796',78,'Avengers: Endgame','2019',8.4,'3h 1m','PG-13','https://www.imdb.com/title/tt4154796','After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' action... Read all','Action','a0000375','d0751577','w1321655','rw4814867'),('tt4633694',66,'Spider-Man: Into the Spider-Verse','2018',8.4,'1h 57m','PG','https://www.imdb.com/title/tt4633694','Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.','Animation','a4271336','d2130108','w0520488','rw4744749'),('tt4729430',178,'Klaus','2019',8.2,'1h 36m','PG','https://www.imdb.com/title/tt4729430','A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg\'s new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliv... Read all','Animation','a0005403','d0655053','w0655053','rw5341855'),('tt5027774',165,'Three Billboards Outside Ebbing, Missouri','2017',8.1,'1h 55m','R','https://www.imdb.com/title/tt5027774','A mother personally challenges the local authorities to solve her daughter\'s murder when they fail to catch the culprit.','Comedy','a0000531','d1732981','w1732981','rw3876392'),('tt5074352',125,'Dangal','2016',8.3,'2h 41m','Not Rated','https://www.imdb.com/title/tt5074352','Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.','Action','a0451148','d4318159','w6328029','rw4080935'),('tt5311514',82,'Your Name.','2016',8.4,'1h 46m','TV-PG','https://www.imdb.com/title/tt5311514','Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?','Animation','a1126340','d1396121','w1396121','rw3631865'),('tt6751668',34,'Parasite','2019',8.5,'2h 12m','R','https://www.imdb.com/title/tt6751668','Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.','Drama','a0814280','d0094435','w0094435','rw4978432'),('tt6966692',133,'Green Book','2018',8.2,'2h 10m','PG-13','https://www.imdb.com/title/tt6966692','A working-class Italian-American bouncer becomes the driver for an African-American classical pianist on a tour of venues through the 1960s American South.','Biography','a0001557','d0268380','w0885014','rw4591778'),('tt7286456',75,'Joker','2019',8.4,'2h 2m','R','https://www.imdb.com/title/tt7286456','The rise of Arthur Fleck, from aspiring stand-up comedian and pariah to Gotham\'s clown prince and leader of the revolution.','Crime','a0001618','d0680846','w0680846','rw8987715'),('tt8267604',88,'Capernaum','2018',8.4,'2h 6m','R','https://www.imdb.com/title/tt8267604','While serving a five-year sentence for a violent crime, a 12-year-old boy sues his parents for neglect.','Drama','a9862858','d1701024','w1701024','rw5480034'),('tt8503618',107,'Hamilton','2020',8.4,'2h 40m','PG-13','https://www.imdb.com/title/tt8503618','The real life of one of America\'s foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the origi... Read all','Biography','a4377526','d2371802','w0592135','rw5882180'),('tt8579674',123,'1917','2019',8.2,'1h 59m','R','https://www.imdb.com/title/tt8579674','April 6th, 1917. As an infantry battalion assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from wa... Read all','Action','a2835616','d0005222','w0005222','rw6810224');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_review`
--

DROP TABLE IF EXISTS `user_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_review` (
  `user_review_id` int NOT NULL AUTO_INCREMENT,
  `review_description` text NOT NULL,
  `no_stars` int NOT NULL,
  `user_id` int NOT NULL,
  `movie_id` varchar(10) NOT NULL,
  PRIMARY KEY (`user_review_id`),
  KEY `user_id` (`user_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `user_review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_review_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_review_chk_1` CHECK ((`no_stars` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_review`
--

LOCK TABLES `user_review` WRITE;
/*!40000 ALTER TABLE `user_review` DISABLE KEYS */;
INSERT INTO `user_review` VALUES (1,'very good movie',5,2,'tt6751668'),(2,'kind of boring',3,2,'tt0050083'),(3,'first disney movie i saw!',4,2,'tt0110357'),(4,'very forgettable; almost like i didn\'t watch it',3,2,'tt0046912'),(5,'scary!',3,2,'tt0070047'),(6,'i think ab the scene of them dancing in the gazebo a lot',3,2,'tt0059742');
/*!40000 ALTER TABLE `user_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_want_to_watch_movies`
--

DROP TABLE IF EXISTS `user_want_to_watch_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_want_to_watch_movies` (
  `user_id` int NOT NULL,
  `movie_id` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`,`movie_id`),
  UNIQUE KEY `user_id` (`user_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `user_want_to_watch_movies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_want_to_watch_movies_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_want_to_watch_movies`
--

LOCK TABLES `user_want_to_watch_movies` WRITE;
/*!40000 ALTER TABLE `user_want_to_watch_movies` DISABLE KEYS */;
INSERT INTO `user_want_to_watch_movies` VALUES (2,'tt0017925'),(2,'tt0036775'),(2,'tt0040522'),(2,'tt0042192'),(2,'tt0046438'),(2,'tt0050825'),(2,'tt5311514'),(2,'tt6751668');
/*!40000 ALTER TABLE `user_want_to_watch_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_watched_movies`
--

DROP TABLE IF EXISTS `user_watched_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_watched_movies` (
  `user_id` int NOT NULL,
  `movie_id` varchar(10) NOT NULL,
  `location` text,
  PRIMARY KEY (`user_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `user_watched_movies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_watched_movies_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_watched_movies`
--

LOCK TABLES `user_watched_movies` WRITE;
/*!40000 ALTER TABLE `user_watched_movies` DISABLE KEYS */;
INSERT INTO `user_watched_movies` VALUES (1,'tt0012349',NULL),(1,'tt0017136','cinema'),(1,'tt6751668',NULL),(2,'tt0012349','home'),(2,'tt0017136',NULL),(2,'tt0046912',NULL),(2,'tt0050083',NULL),(2,'tt0059742',NULL),(2,'tt0070047',NULL),(2,'tt0110357',NULL),(2,'tt5311514',NULL),(2,'tt6751668',NULL);
/*!40000 ALTER TABLE `user_watched_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'imdb'
--

--
-- Dumping routines for database 'imdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_to_want_to_watch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_to_want_to_watch`(
    app_user_p INT,
    movie_name_p VARCHAR(64)
)
BEGIN
	DECLARE movie_id_p VARCHAR(10);
    SELECT movie_id INTO movie_id_p FROM movie WHERE movie_name = movie_name_p;
	INSERT INTO user_want_to_watch_movies VALUES (app_user_p, movie_id_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_to_watched` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_to_watched`(
	app_user_p INT,
    movie_name_p VARCHAR(64), 
    location_p TEXT
)
BEGIN
	DECLARE movie_id_p VARCHAR(10);
    SELECT movie_id INTO movie_id_p FROM movie WHERE movie_name = movie_name_p;
	INSERT INTO user_watched_movies VALUES (app_user_p, movie_id_p, location_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_new_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_new_user`(
    first_name_p	VARCHAR(64),
    last_name_p		VARCHAR(64)
)
BEGIN
	INSERT INTO app_user VALUES (DEFAULT, first_name_p, last_name_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_user_review` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_user_review`(
    app_user_p INT,
	movie_name_p VARCHAR(64),
    review_description_p TEXT,
    no_stars INT
)
BEGIN
	DECLARE movie_id_p VARCHAR(10);
    DECLARE test_movie VARCHAR(10);
    SELECT movie_id INTO movie_id_p FROM movie WHERE movie_name = movie_name_p;
    
	-- search in watched table for movie; insert into watched table if not already
	SELECT movie_id INTO test_movie FROM user_watched_movies WHERE user_id = app_user_p AND movie_id = movie_id_p;
    IF test_movie IS NULL THEN
		INSERT INTO user_watched_movies VALUES (app_user_p, movie_id_p, NULL);
	END IF;

	INSERT INTO user_review VALUES (DEFAULT, review_description_p, no_stars, app_user_p, movie_id_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_from_want_to_watch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_from_want_to_watch`(
    app_user_p INT,
    movie_name_p VARCHAR(64)
)
BEGIN
	DECLARE movie_id_p VARCHAR(10);
    SELECT movie_id INTO movie_id_p FROM movie WHERE movie_name = movie_name_p;
	DELETE FROM user_want_to_watch_movies WHERE movie_id = movie_id_p AND user_id = app_user_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_from_watched` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_from_watched`(
    app_user_p INT,
    movie_name_p VARCHAR(64)
)
BEGIN
	DECLARE movie_id_p VARCHAR(10);
    SELECT movie_id INTO movie_id_p FROM movie WHERE movie_name = movie_name_p;
	DELETE FROM user_watched_movies WHERE movie_id = movie_id_p AND user_id = app_user_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_user_review` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_user_review`(
    user_id_p	INT,
	movie_name_p VARCHAR(64)
)
BEGIN
	DECLARE movie_id_p VARCHAR(10);
    SELECT movie_id INTO movie_id_p FROM movie WHERE movie_name = movie_name_p;
	DELETE FROM user_review WHERE movie_id = movie_id_p AND user_id = user_id_p LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_all_movies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_all_movies`(
)
BEGIN
	SELECT movie_id, movie_name FROM movie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_want_to_watch_movies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_want_to_watch_movies`(
	app_user_p	INT
)
BEGIN
	SELECT u.movie_id, m.movie_name FROM user_want_to_watch_movies u LEFT JOIN movie m ON u.movie_id = m.movie_id
    WHERE u.user_id = app_user_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_watched_movies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_watched_movies`(
	app_user_p	INT
)
BEGIN
	SELECT u.movie_id, m.movie_name, location, review_description, no_stars
    FROM user_watched_movies u 
    LEFT JOIN movie m ON m.movie_id = u.movie_id
    LEFT JOIN user_review r ON r.movie_id = u.movie_id
    WHERE u.user_id = app_user_p;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_actor_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_actor_info`(
	movie_id_p	VARCHAR(10)
)
BEGIN
	SELECT * FROM lead_actor WHERE actor_id = (SELECT actor_id FROM movie WHERE movie_id = movie_id_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_director_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_director_info`(
	movie_id_p	VARCHAR(10)
)
BEGIN
	SELECT * FROM lead_director WHERE director_id = (SELECT director_id FROM movie WHERE movie_id = movie_id_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_genre_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_genre_info`(
	movie_id_p	VARCHAR(10)
)
BEGIN
	SELECT * FROM genre WHERE genre_name = (SELECT genre_name FROM movie WHERE movie_id = movie_id_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_movie_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_movie_info`(
	movie_id_p	VARCHAR(10)
)
BEGIN
	SELECT * FROM movie NATURAL JOIN genre NATURAL JOIN lead_actor NATURAL JOIN lead_director NATURAL JOIN
    lead_writer NATURAL JOIN featured_imdb_review WHERE movie.movie_id = movie_id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_top_review` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_review`(
	movie_id_p	VARCHAR(10)
)
BEGIN
	SELECT * FROM featured_imdb_review NATURAL JOIN critic 
    WHERE imdb_review_id = (SELECT imdb_review_id FROM movie WHERE movie_id = movie_id_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_writer_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_writer_info`(
	movie_id_p	VARCHAR(10)
)
BEGIN
	SELECT * FROM lead_writer WHERE writer_id = (SELECT writer_id FROM movie WHERE movie_id = movie_id_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_all_user_reviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_all_user_reviews`(
    user_id_p	INT
)
BEGIN
	SELECT review_description, no_stars, movie_name FROM user_review NATURAL JOIN movie WHERE user_id = user_id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_one_user_reviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_one_user_reviews`(
    user_id_p	INT,
	movie_name_p VARCHAR(64)
)
BEGIN
	DECLARE movie_id_p VARCHAR(10);
    SELECT movie_id INTO movie_id_p FROM movie WHERE movie_name = movie_name_p;
	SELECT review_description, no_stars FROM user_review WHERE movie_id = movie_id_p AND user_id = user_id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_by_actor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_by_actor`(
	actor_p		VARCHAR(256)
)
BEGIN
    SELECT movie_id, movie_name FROM movie WHERE actor_id = 
    (SELECT actor_id FROM lead_actor WHERE actor_name = actor_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_by_director` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_by_director`(
	director_p		VARCHAR(256)
)
BEGIN
    SELECT movie_id, movie_name FROM movie WHERE director_id = 
    (SELECT director_id FROM lead_director WHERE director_name = director_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_by_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_by_genre`(
	genre_p		VARCHAR(20)
)
BEGIN
	SELECT movie_id, movie_name FROM movie WHERE genre_name = genre_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_by_movie_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_by_movie_name`(
	movie_name_p		VARCHAR(64)
)
BEGIN
	SELECT movie_id, movie_name FROM movie WHERE movie_name = movie_name_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_by_writer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_by_writer`(
	writer_p		VARCHAR(256)
)
BEGIN
    SELECT movie_id, movie_name FROM movie WHERE writer_id = 
    (SELECT writer_id FROM lead_writer WHERE writer_name = writer_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_by_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_by_year`(
	year_p		YEAR
)
BEGIN
	SELECT movie_id, movie_name FROM movie WHERE release_year = year_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_stars_and_descript` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_stars_and_descript`(
	user_id_p	INT,
    movie_name_p VARCHAR(64),
    new_stars_p INT,
    new_descrip_p TEXT
)
BEGIN
	DECLARE movie_id_p VARCHAR(10);
	DECLARE review_id_p INT;

    SELECT movie_id INTO movie_id_p FROM movie WHERE movie_name = movie_name_p LIMIT 1;
    SELECT user_review_id INTO review_id_p FROM user_review WHERE movie_id = movie_id_p AND user_id = user_id_p ORDER BY user_review_id DESC
    LIMIT 1;

    UPDATE user_review
    SET review_description = new_descrip_p
    WHERE user_review_id = review_id_p;
    
	UPDATE user_review
    SET no_stars = new_stars_p
    WHERE user_review_id = review_id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19 13:58:42
