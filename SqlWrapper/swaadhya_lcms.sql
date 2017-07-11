-- MySQL dump 10.13  Distrib 5.7.18, for osx10.12 (x86_64)
--
-- Host: localhost    Database: swaadhya_lcms
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `form_structure`
--

DROP TABLE IF EXISTS `form_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_form_hn` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_form_en` varchar(60) DEFAULT NULL,
  `student_form_hn` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_form_en` varchar(60) DEFAULT NULL,
  `guest_user_hn` varchar(60) NOT NULL,
  `guest_user_en` varchar(60) NOT NULL,
  `school_form_hn` varchar(60) NOT NULL,
  `school_form_en` varchar(60) NOT NULL,
  `mcq_form_hn` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mcq_form_en` varchar(60) DEFAULT NULL,
  `language_code` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_structure`
--

LOCK TABLES `form_structure` WRITE;
/*!40000 ALTER TABLE `form_structure` DISABLE KEYS */;
INSERT INTO `form_structure` VALUES (1,'यूजर आई. डी.','User ID','पंजीकरण संख्या','Registration Number','यूजर कोड ','User Code','स्कूल कोड','School Code',NULL,NULL,''),(2,'ईम्प्लौइ आई. डी.','Employee ID','नामांकन संख्या','School Enrolment Number','पूरा नाम','User Name','स्कूल डाइस कोड','School DISE Code',NULL,NULL,''),(3,'प्रथम नाम','First Name','आधार संख्या','Aadhar Number','लाँगिन नाम','Login Name','विद्यालय का नाम','School Name',NULL,NULL,''),(4,'मध्य नाम','Middle Name','विद्यालय का नाम','School Name','पासवर्ड','Password','पता','Address',NULL,NULL,''),(5,'अन्तिम नाम','Last Name','पहला नाम','First Name','ई मेल','E-Mail','शहर / गांव','City / Village',NULL,NULL,''),(6,'यूजर का नाम','Username','मध्य नाम','Middle Name','जन्म की तारीख','Date of Birth','क्लस्टर कोड','Cluster Code',NULL,NULL,''),(7,'पासवर्ड','Password','अंतिम नाम','Last Name','घर का पता','Address','क्लस्टर का नाम','Cluster Name',NULL,NULL,''),(8,'यूजर टाईप ','User Type','जन्म की तारीख','Date of Birth','राज्य का नाम','State/UT','ब्लॉक कोड','Block Code',NULL,NULL,''),(9,'पोस्ट ','Designation','जन्म स्थान','Place of Birth','पिन कोड','Pin Code','ब्लॉक नाम','Block Name',NULL,NULL,''),(10,'कक्षा','Class','लिंग','Gender','फोन नंबर','Contact Number','जिले का कोड','District Code',NULL,NULL,''),(11,'विभाग','Section','जाति','Select Category','स्कूल का नाम','School Name','जिले का नाम','District Name',NULL,NULL,''),(12,'लिंग','Gender','माध्यम','Identification Mark','यूजर का प्रकार ','User Type','राज्य','State/UT',NULL,NULL,''),(13,'ई मेल','Email','कक्षा','Class','आपका गैस्ट यूजर रजिस्टर के लिए धन्यवाद','Welcome as Guest User','पिन कोड','Pin Code',NULL,NULL,''),(14,'जन्म की तारीख','Date of Birth','अनुभाग','Section','रिकार्ड सेव करें','Save Record','स्कूल ईमेल आईडी','School Email ID',NULL,NULL,''),(15,'स्थानीय पता','Current Address','माघ्यम','Medium','रिकार्ड रद्द करें','Cancel Record','स्कूल संपर्क नंबर','School Contact No.',NULL,NULL,''),(16,'सीटी का नाम','City Name','बोर्ड का नाम','Board','पिछे जाएं','Back','प्रिंसिपल का नाम','Principal Name',NULL,NULL,''),(17,'गाॅव का नाम ','Village Name','पिता का नाम','Father\'s Name','आवश्यक फील्ड्स','Mandatory Fields','वाइस प्रिंसिपल का नाम','Vice-Principal Name',NULL,NULL,''),(18,'जिला','District Name','पिता की शिक्षा','Father\'s Qualification','','','स्कूल का प्रकार','School Type',NULL,NULL,''),(19,'राज्य','State/UT','पिता का व्यवसाय','Father\'s Occupation','','','कुल छात्र क्षमता','Number of Students',NULL,NULL,''),(20,'पिन कोड ','Pin Code','कार्य करने का स्थान','Occupation Place','','','कुल शिक्षक','Number of Teachers',NULL,NULL,''),(21,'संपर्क नंबर ','Contact Number','पिता का फोन नंबर','Father\'s Contact Number','','','कुल क्लासरूम','Number of Classrooms',NULL,NULL,''),(22,'उच्चतम योग्यता  ','Highest Qualification','वार्षिक आय','Annual Income','','','कुल परिवहन वाहन','Number of Transport Vehicles',NULL,NULL,''),(23,'मातृ भाषा','Mother Tongue','माता का नाम','Mother\'s Name','','','सत्र प्रारंभ','Session Start',NULL,NULL,''),(24,'पहचान चिन्ह','Identification Mark','माता का व्यवसाय','Mother\'s Occupation','','','छुट्टीयां शुरू होने की तारीख','Vacations Start Date',NULL,NULL,''),(25,'भाषा की जानकारी','Language Known','माता का फोन नंबर','Mother\'s Contact Number','','','छुट्टीयां समाप्त होने की तारीख','Vacations End Date',NULL,NULL,''),(26,'अन्य भाषा','Other Language Known','अभिभावक का नाम','Guardian\'s Name','','','कोई रसोई घर','Any Kitchen Shed',NULL,NULL,''),(27,'कार्य शुरू की तारीख','Date of Joining','मातृ भाषा','Mother Tongue','','','कोई खेल का मैदान','Any Playground',NULL,NULL,''),(28,'पुष्टि की तारीख','Confirmation Date','कोई भाई या बहन','Any Sibling','','','कोई टेंट','Any Tent',NULL,NULL,''),(29,'पढ़ाने का तज़ुर्बा','Work Experience','भाई या बहन नामांकन','Sibling Enrolment Number','','','कोई गैस्ट टीचर','School Boundary Type',NULL,NULL,''),(30,'किसी भी तरह का पुरस्कार','Any Awards','भाई-बहन का नाम','Sibling Name','','','स्कूल बाउन्ड्री टाइप ','Any Guest Teacher',NULL,NULL,''),(31,'मुख्य विषय','Main Subject','भाई-बहन की कक्षा','Sibling Class','','','स्कूल की विस्तृत जानकारी','School Information',NULL,NULL,''),(32,'पासपोर्ट फोटो','Upload Photo','स्थाई पता','Address','','','अपलोड स्कूल बल्क डाटा','Upload School Bulk Data',NULL,NULL,''),(33,'रिकार्ड सेव करें','Save Record','शहर / गांव का नाम','City/Village','','','रिकार्ड सेव करें','Save Record',NULL,NULL,''),(34,'रिकार्ड रद्द करें','Cancel Record','ब्लॉक कोड','Block Code','','','पिछे जाएं','Back',NULL,NULL,''),(35,'आवश्यक फील्ड्स','Mandatory Field','पिछला विद्यालय','Block Name','','','डाउनलोड अपलोड फौरमेट','Download Upload Format','',NULL,''),(36,'यूजर नंबर','Registration Number','क्लस्टर कोड','Cluster Code','','','अपलोड डाटा','Upload Data','',NULL,''),(37,NULL,NULL,'क्लस्टर का नाम','Cluster Name','','','रिकार्ड रद्द करें','Cancel Record',NULL,NULL,''),(38,NULL,NULL,'जिले का नाम','District Name','','','बोर्ड का नाम','School Board',NULL,NULL,''),(39,NULL,NULL,'राज्य','State/UT','','','ग्रुप कनैक्शन आई डी','School Connection ID',NULL,NULL,''),(40,NULL,NULL,'पिन कोड','Pin Code','','','आवश्यक फील्ड्स','Mandatory Fields',NULL,NULL,''),(41,NULL,NULL,'फोन/मोबाइल नं०','Contact Number','','','स्कूल फोटो','School Photo','',NULL,''),(42,NULL,NULL,'आवश्यक फोन नंबर','Emergency Number','','','','Affiliation Code',NULL,NULL,''),(43,NULL,NULL,'रिकार्ड सुरक्षित करें','Upload Photo','','','','Examination Code',NULL,NULL,''),(44,NULL,NULL,'रिकार्ड सेव करें','Save Record','','','','',NULL,NULL,''),(45,NULL,NULL,'रिकार्ड रद्द करें','Cancel Record','','','','',NULL,NULL,''),(46,NULL,NULL,'पिछे जाएं','Back','','','','',NULL,NULL,''),(47,NULL,NULL,'छात्र का रजिस्ट्रेशन','Student Registration','','','','',NULL,NULL,''),(48,NULL,NULL,'छात्र की आवश्यक सूचना','Student Information','','','','',NULL,NULL,''),(49,NULL,NULL,'आवश्यक फील्ड्स','Mandatory Fields','','','','',NULL,NULL,''),(50,NULL,NULL,'पसंदीदा खेल','Favourite Sport','','','','',NULL,NULL,''),(51,NULL,NULL,'पसंदीदा रुचि','Hobbies','','','','',NULL,NULL,''),(52,NULL,NULL,'प्रवेश की तिथि','Admission Date','','','','',NULL,NULL,''),(53,NULL,NULL,'सदन','House','','','','',NULL,NULL,''),(54,NULL,NULL,'विंग','Wing','','','','',NULL,NULL,''),(55,NULL,NULL,'शारीरिक विकलांगता','Physical Disability','','','','',NULL,NULL,''),(56,NULL,NULL,'छूट','Concession','','','','',NULL,NULL,''),(57,NULL,NULL,'ई-मेल आईडी','Email ID','ईमेल आईडी','','','',NULL,NULL,''),(58,NULL,NULL,'पिता का ई-मेल','Father\'s Email','','','','',NULL,NULL,''),(59,NULL,NULL,'माता का ई-मेल','Mother\'s Email','','','','',NULL,NULL,'');
/*!40000 ALTER TABLE `form_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_user_status`
--

DROP TABLE IF EXISTS `login_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_user_status` (
  `login_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_reference_id` bigint(11) NOT NULL,
  `user_type_id` int(5) NOT NULL,
  `user_system_ip` varchar(50) NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logout_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_status` int(5) NOT NULL,
  `login_session_id` varchar(80) NOT NULL,
  `android_gsm_id` varchar(100) NOT NULL,
  `ios_gsm_id` varchar(100) NOT NULL,
  `current_brower` varchar(50) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_user_status`
--

LOCK TABLES `login_user_status` WRITE;
/*!40000 ALTER TABLE `login_user_status` DISABLE KEYS */;
INSERT INTO `login_user_status` VALUES (1,168,4,'182.68.90.193','2017-05-26 07:33:11','0000-00-00 00:00:00',1,'created by just encoded text','87465471916486546543sdfkjsdfuewlu54464','','',1),(2,151,1,'182.68.127.133','2017-05-29 07:56:17','0000-00-00 00:00:00',1,'created by just encoded text','87465471916486546543sdfkjsdfuewlu54464','','',1),(3,178,4,'0:0:0:0:0:0:0:1','2017-07-11 15:15:55','2017-07-11 14:54:13',1,'PgKm5KqEPNCr3PXhB8qbQtYVPHkl9R/pG8M2Qgd2L572ePa0TzfyOB8/V/Wj8JfDL4+wP4WzWFs=','N/A','N/A','ANDROID',1);
/*!40000 ALTER TABLE `login_user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_activity_type`
--

DROP TABLE IF EXISTS `mst_activity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_activity_type` (
  `activity_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(15) NOT NULL,
  `activity` varchar(80) NOT NULL,
  `activity_desc` varchar(100) NOT NULL,
  `board_name` varchar(15) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`activity_id`),
  UNIQUE KEY `id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_activity_type`
--

LOCK TABLES `mst_activity_type` WRITE;
/*!40000 ALTER TABLE `mst_activity_type` DISABLE KEYS */;
INSERT INTO `mst_activity_type` VALUES (1,'mcq','Multiple Choice Question','Multiple Choice Question','CBSE',1),(2,'tnf','True and False','True and False','CBSE',1),(3,'fillup','Fill in the Blank','Fill in the Blanks','CBSE',1),(4,'match','Match the Column','Match the Columns','CBSE',0),(5,'tick','Tick the Correct','Tick the Correct','CBSE',1),(6,'color','Color the Image','Color the Image','CBSE',0),(7,'join_dot','Join the Dots','Join the Dots','CBSE',0),(8,'pick','Pick the Right','Pick the Right','CBSE',0),(9,'dnd','Drag and Drop','Drag and Drop','CBSE',1),(10,'jumbw','Jumble Word','Jumber Word and Latters Activity','CBSE',1),(11,'jumbs','Jumble Sentence','Word Jumble in a sentence','CBSE',0),(12,'dd','Drop Down','Drop Down List ','CBSE',1),(13,'puzzle','Crossword Puzzle','Crossword Puzzle for Any Type','CBSE',0),(14,'maze','Maze','Maze Game activity','CBSE',0);
/*!40000 ALTER TABLE `mst_activity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_avkcombination`
--

DROP TABLE IF EXISTS `mst_avkcombination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_avkcombination` (
  `avk_id` int(11) NOT NULL AUTO_INCREMENT,
  `auditory` int(1) NOT NULL,
  `visual` int(1) NOT NULL,
  `kinesthetic` int(1) NOT NULL,
  `statements` varchar(500) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`avk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_avkcombination`
--

LOCK TABLES `mst_avkcombination` WRITE;
/*!40000 ALTER TABLE `mst_avkcombination` DISABLE KEYS */;
INSERT INTO `mst_avkcombination` VALUES (1,0,0,0,'The Kinesthetic, Auditory and Visual learning styles of child are yet to be Explored. Hence, we suggest counselling for the child.',1),(2,0,0,1,'The Kinesthetic learning style of child is Situational. The Auditory and Visual learning styles are yet to be Explored.',1),(3,0,1,0,'The Visual learning style of child is Situational. The Auditory and Kinesthetic learning styles are yet to be Explored.',1),(4,1,0,0,'The Auditory learning style of child is Situational. The Visual and Kinesthetic learning styles are yet to be Explored.',1),(5,0,1,1,'The Visual and Kinesthetic learning styles of child are Situational. The Auditory learning style is yet to be Explored.',1),(6,1,1,0,'The Auditory and Visual learning styles of child are Situational. The Kinesthetic learning style is yet to be Explored.',1),(7,1,0,1,'The Auditory and Kinesthetic learning styles of child are Situational. The Visual learning style is yet to be Explored.',1),(8,1,1,1,'The Auditory, Visual and Kinesthetic learning styles of child are Situational.',1),(9,0,0,2,'The Kinesthetic learning style of child is Favoured. The Auditory and Visual learning styles are yet to be Explored.',1),(10,0,2,0,'The Visual learning style of child is Favoured. The Auditory and Kinesthetic learning styles are yet to be Explored.',1),(11,2,0,0,'The Auditory learning style of child is Favoured. The Visual and Kinesthetic learning styles are yet to be Explored.',1),(12,2,2,2,'The Auditory, Visual and Kinesthetic learning styles of child are Favoured.',1),(13,0,0,3,'The Kinesthetic learning style of child is Preferred. The Auditory and Visual learning styles are yet to be Explored.',1),(14,0,3,0,'The Visual learning style of child is Preferred. The Auditory and Kinesthetic learning styles are yet to be Explored.',1),(15,3,0,0,'The Auditory learning style of child is Preferred. The Visual and Kinesthetic learning styles are yet to be Explored.',1),(16,3,3,3,'The Auditory, Visual and Kinesthetic learning styles of child are Preferred.',1),(17,1,2,3,'The Kinesthetic learning style of child is Preferred, the Visual is Favoured and the Auditory is Situational.',1),(18,2,3,1,'The Visual learning style of child is Preferred, the Auditory is Favoured and the Kinesthetic is Situational.',1),(19,3,1,2,'The Auditory learning style of child is Preferred, the Kinesthetic is Favoured and the Visual is Situational.',1),(20,3,2,1,'The Auditory learning style of child is Preferred, the Visual is Favoured and the Kinesthetic is Situational.',1),(21,2,1,3,'The Kinesthetic learning style of child is Preferred, the Auditory is Favoured and the Visual is Situational.',1),(22,1,3,2,'The Visual learning style of child is Preferred, the Kinesthetic is Favoured and the Auditory is Situational.',1),(23,0,1,2,'The Kinesthetic learning style of child is Favoured, the Visual is Situational and the Auditory is yet to be Explored.',1),(24,1,2,0,'The Visual learning style of child is Favoured, the Auditory is Situational and the Kinesthetic is yet to be Explored.',1),(25,2,0,1,'The Auditory learning style of child is Favoured, the Kinesthetic is Situational and the Visual is yet to be Explored.',1),(26,2,1,0,'The Auditory learning style of child is Favoured, the Visual is Situational and the Kinesthetic is yet to be Explored.',1),(27,1,0,2,'The Kinesthetic learning style of child is Favoured, the Auditory is Situational and the Visual is yet to be Explored.',1),(28,0,2,1,'The Visual learning style of child is Favoured, the Kinesthetic is Situational and the Auditory is yet to be Explored.',1),(29,0,1,3,'The Kinesthetic learning style of child is Preferred, the Visual is Situational and the Auditory is yet to be Explored.',1),(30,1,3,0,'The Visual learning style of child is Preferred, the Auditory is Situational and the Kinesthetic is yet to be Explored.',1),(31,3,0,1,'The Auditory learning style of child is Preferred, the Kinesthetic is Situational and the Visual is yet to be Explored.',1),(32,3,1,0,'The Auditory learning style of child is Preferred, the Visual is Situational and the Kinesthetic is yet to be Explored.',1),(33,1,0,3,'The Kinesthetic learning style of child is Preferred, the Auditory is Situational and the Visual is yet to be Explored.',1),(34,0,3,1,'The Visual learning style of child is Preferred, the Kinesthetic is Situational and the Auditory is yet to be Explored.',1),(35,0,2,3,'The Kinesthetic learning style of child is Preferred, the Visual is Favoured and the Auditory is yet to be Explored.',1),(36,2,3,0,'The Visual learning style of child is Preferred, the Auditory is Favoured and the Kinesthetic is yet to be Explored.',1),(37,3,0,2,'The Auditory learning style of child is Preferred, the Kinesthetic is Favoured and the Visual is yet to be Explored.',1),(38,3,2,0,'The Auditory learning style of child is Preferred, the Visual is Favoured and the Kinesthetic is yet to be Explored.',1),(39,2,0,0,'The Kinesthetic learning style of child is Preferred, the Auditory is Favoured and the Visual is yet to be Explored.',1),(40,0,3,2,'The Visual learning style of child is Preferred, the Kinesthetic is Favoured and the Auditory is yet to be Explored.',1),(41,0,2,2,'The Visual and Kinesthetic learning styles of child are Favoured. The Auditory learning style is yet to be Explored.',1),(42,2,2,0,'The Auditory and Visual learning styles of child are Favoured. The Kinesthetic learning style is yet to be Explored.',1),(43,2,0,2,'The Auditory and Kinesthetic learning styles of child are Favoured. The Visual learning style is yet to be Explored.',1),(44,0,3,3,'The Visual and Kinesthetic learning styles of child are Preferred. The Auditory learning style is yet to be Explored.',1),(45,3,3,0,'The Auditory and Visual learning styles of child are Preferred. The Kinesthetic learning style is yet to be Explored.',1),(46,3,0,3,'The Auditory and Kinesthetic learning styles of child are Preferred. The Visual learning style is yet to be Explored.',1),(47,1,2,2,'The Visual and Kinesthetic learning styles of child are Favoured. The Auditory learning style is Situational.',1),(48,2,2,1,'The Auditory and Visual learning styles of child are Favoured. The Kinesthetic learning style is Situational.',1),(49,2,1,2,'The Auditory and Kinesthetic learning styles of child are Favoured. The Visual learning style is Situational.',1),(50,1,3,3,'The Visual and Kinesthetic learning styles of child are Preferred. The Auditory learning style is Situational.',1),(51,3,3,1,'The Auditory and Visual learning styles of child are Preferred. The Kinesthetic learning style is Situational.',1),(52,3,1,3,'The Auditory and Kinesthetic learning styles of child are Preferred. The Visual learning style is Situational.',1),(53,1,1,2,'The Kinesthetic learning style of child is Favoured. The Auditory and Visual learning styles are Situational.',1),(54,2,1,1,'The Auditory learning style of child is Favoured. The Visual and Kinesthetic learning styles are Situational.',1),(55,1,2,1,'The Visual learning style of child is Favoured. The Auditory and Kinesthetic learning styles are Situational.',1),(56,1,1,3,'The Kinesthetic learning style of child is Preferred. The Auditory and Visual learning styles are Situational.',1),(57,3,1,1,'The Auditory learning style of child is Preferred. The Visual and Kinesthetic learning styles are Situational.',1),(58,1,3,1,'The Visual learning style of child is Preferred. The Auditory and Kinesthetic learning styles are Situational.',1),(59,2,2,3,'The Kinesthetic learning style of child is Preferred. The Auditory and Visual learning styles are Favoured.',1),(60,2,3,2,'The Visual learning style of child is Preferred. The Auditory and Kinesthetic learning styles are Favoured.',1),(61,3,2,2,'The Auditory learning style of child is Preferred. The Visual and Kinesthetic learning styles are Favoured.',1),(62,3,3,2,'The Auditory and Visual learning styles of child are Preferred. The Kinesthetic learning style is Favoured.',1),(63,3,2,3,'The Auditory and Kinesthetic learning styles of child are Preferred. The Visual learning style is Favoured.',1),(64,2,3,3,'The Visual and Kinesthetic learning styles of child are Preferred. The Auditory learning style is Favoured.',1);
/*!40000 ALTER TABLE `mst_avkcombination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_baap_profile`
--

DROP TABLE IF EXISTS `mst_baap_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_baap_profile` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `attempt` int(6) NOT NULL,
  `profile` varchar(15) NOT NULL,
  `description` varchar(300) NOT NULL,
  `status` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_baap_profile`
--

LOCK TABLES `mst_baap_profile` WRITE;
/*!40000 ALTER TABLE `mst_baap_profile` DISABLE KEYS */;
INSERT INTO `mst_baap_profile` VALUES (1,1,'Beginner','We recommend that the child should be in extensive observation for learning and practice.',1),(2,2,'Beginner','We recommend that the child should be in extensive observation for learning and practice.',1),(3,3,'Beginner','We recommend that the child should be in extensive observation for learning and practice.',1),(4,4,'Average','We recommend that the child should be in regular observation for learning and practice.',1),(5,5,'Average','We recommend that the child should be in regular observation for learning and practice.',1),(6,6,'Advance','We recommend that the child should be in assistive observation for learning and practice.',1),(7,7,'Advance','We recommend that the child should be in assistive observation for learning and practice.',1),(8,8,'Proficient','We recommend that the child should be in moderate observation for learning and practice.',1),(9,9,'Proficient','We recommend that the child should be in moderate observation for learning and practice.',1),(10,0,'Beginner','We recommend that the child should be in extensive observation for learning and practice.',1);
/*!40000 ALTER TABLE `mst_baap_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_board`
--

DROP TABLE IF EXISTS `mst_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_board` (
  `board_id` int(11) NOT NULL AUTO_INCREMENT,
  `board_type` varchar(50) NOT NULL,
  `board_name` varchar(35) NOT NULL,
  `board_desc` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_board`
--

LOCK TABLES `mst_board` WRITE;
/*!40000 ALTER TABLE `mst_board` DISABLE KEYS */;
INSERT INTO `mst_board` VALUES (1,'Central Board','CBSE','Central Board of Secondary Education',1),(2,'All India Board','ICSE','Indian Certificate of Secondary Education',1),(3,'International Board','IB','International Baccalaureate',1),(4,'International Board','IGCSE','International General Certificate of Secondary Education',0),(5,'State Board','MSBS','Maharashtra State Board of Secondary and Higher Secondary Education',0);
/*!40000 ALTER TABLE `mst_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_chapter`
--

DROP TABLE IF EXISTS `mst_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_chapter` (
  `chapter_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `chapter_code` varchar(40) NOT NULL,
  `chapter_no` int(2) NOT NULL,
  `chapter_name` varchar(150) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `class_id` int(2) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `author` varchar(35) NOT NULL,
  `school_code` varchar(35) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `add_date` date NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`chapter_id`),
  UNIQUE KEY `chapter_code` (`chapter_code`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_chapter`
--

LOCK TABLES `mst_chapter` WRITE;
/*!40000 ALTER TABLE `mst_chapter` DISABLE KEYS */;
INSERT INTO `mst_chapter` VALUES (1,'SCI_5_1_0001',1,'Parts of a Flowering Plant',0,5,'SCI','Zoom in Science','Rachna Sagar','Common','','','0000-00-00',1),(2,'SCI_5_2_0002',2,'Reproduction in Flowering Plants and Plant Growth ',0,5,'SCI','Zoom in Science','Rachna Sagar','Common','','','0000-00-00',1),(3,'SCI_5_3_0003',3,'Different Habitats of Plants',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(4,'SCI_5_4_0004',4,'Varying Lifestyles in Animals',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(5,'SCI_5_5_0005',5,'Reproduction in Animals',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(6,'SCI_5_6_0006',6,'Bones, Joints and Muscles',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(7,'SCI_5_7_0007',7,'Nervous System and Sense Organs',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(8,'SCI_5_8_0008',8,'Food, Health and Safety',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(9,'SCI_5_9_0009',9,'Types of Rocks and Minerals',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(10,'SCI_5_10_0010',10,'Soil Erosion and Conservation',0,3,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(11,'SCI_5_11_0011',11,'Air and Water',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(12,'SCI_5_12_0012',12,'Force, Work and Energy',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(13,'SCI_5_13_0013',13,'Simple Machines',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(14,'SCI_5_14_0014',14,'Heavenly Bodies',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(15,'SCI_5_15_0015',15,'Space Exploration',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1),(16,'SCI_5_16_0016',16,'Earth is Ours—Let us Protect It',0,5,'SCI','Zoom in Science','Rachna Sagar','Rachna Sagar','','','0000-00-00',1);
/*!40000 ALTER TABLE `mst_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_class`
--

DROP TABLE IF EXISTS `mst_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_desc` varchar(12) NOT NULL,
  `class_category` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_class`
--

LOCK TABLES `mst_class` WRITE;
/*!40000 ALTER TABLE `mst_class` DISABLE KEYS */;
INSERT INTO `mst_class` VALUES (1,'1','Primary',1),(2,'2','Primary',1),(3,'3','Primary',1),(4,'4','Primary',1),(5,'5','Primary',1),(6,'6','Upper Primary',1),(7,'7','Upper Primary',1),(8,'8','Upper Primary',1),(9,'9','Secondary',0),(10,'10','Secondary',0),(11,'11','Higher Secondary',0),(12,'12','Higher Secondary',0),(13,'Preschool','Preschool',1),(14,'Pre-Primary','Pre-Primary',1);
/*!40000 ALTER TABLE `mst_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_descriptive_question`
--

DROP TABLE IF EXISTS `mst_descriptive_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_descriptive_question` (
  `question_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `question_code` varchar(35) NOT NULL,
  `class_id` int(8) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `subject_name` varchar(35) NOT NULL,
  `unit_number` varchar(2) DEFAULT NULL,
  `chapter_no` int(8) NOT NULL,
  `chapter_name` varchar(60) NOT NULL,
  `topic_id` int(3) NOT NULL,
  `topic` varchar(60) NOT NULL,
  `sub_topic_id` int(3) NOT NULL,
  `sub_topic` varchar(100) DEFAULT NULL,
  `marks` int(8) NOT NULL,
  `question_no` int(8) NOT NULL,
  `question` varchar(2000) NOT NULL,
  `question_image1` varchar(50) NOT NULL,
  `question_image2` varchar(50) NOT NULL,
  `option_id1` int(3) NOT NULL,
  `option_name1` varchar(150) NOT NULL,
  `option_id2` int(3) NOT NULL,
  `option_name2` int(150) NOT NULL,
  `option_id3` int(3) NOT NULL,
  `option_name3` int(150) NOT NULL,
  `option_id4` int(3) NOT NULL,
  `option_name4` int(150) NOT NULL,
  `option_id5` int(11) NOT NULL,
  `option_name5` varchar(150) NOT NULL,
  `answer_id1` int(8) NOT NULL,
  `answer1` text NOT NULL,
  `answer_id2` int(8) NOT NULL,
  `answer2` text NOT NULL,
  `ead_id` int(3) NOT NULL,
  `ead_category` varchar(25) NOT NULL,
  `kuase_id` int(3) NOT NULL,
  `kuase_category` varchar(25) NOT NULL,
  `mi_id` int(3) NOT NULL,
  `mi_category` varchar(25) NOT NULL,
  `avk_id` int(3) NOT NULL,
  `avk_category` varchar(18) NOT NULL,
  `question_type` varchar(20) NOT NULL,
  `right_explanation` varchar(1500) NOT NULL,
  `wrong_explanation` varchar(1500) NOT NULL,
  `school_id` varchar(35) NOT NULL,
  `board_id` int(3) DEFAULT NULL,
  `board_name` varchar(25) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `isbn_number` varchar(30) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `publisher_name` varchar(100) DEFAULT NULL,
  `group_code` int(11) DEFAULT NULL,
  `image_path` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `question_code` (`question_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_descriptive_question`
--

LOCK TABLES `mst_descriptive_question` WRITE;
/*!40000 ALTER TABLE `mst_descriptive_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_descriptive_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_district`
--

DROP TABLE IF EXISTS `mst_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_district` (
  `district_id` int(8) NOT NULL AUTO_INCREMENT,
  `state_id` int(8) NOT NULL,
  `district_name` varchar(30) NOT NULL,
  `district_capital` varchar(30) NOT NULL,
  `speaking_language` varchar(30) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_district`
--

LOCK TABLES `mst_district` WRITE;
/*!40000 ALTER TABLE `mst_district` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_ead`
--

DROP TABLE IF EXISTS `mst_ead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_ead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ead_category` varchar(30) NOT NULL,
  `ead_desc` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_ead`
--

LOCK TABLES `mst_ead` WRITE;
/*!40000 ALTER TABLE `mst_ead` DISABLE KEYS */;
INSERT INTO `mst_ead` VALUES (1,'Easy','Group of Easy Question',1),(2,'Average','Average Question Groups',1),(3,'Difficult','Difficult Question Group',1);
/*!40000 ALTER TABLE `mst_ead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_fee_component`
--

DROP TABLE IF EXISTS `mst_fee_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_fee_component` (
  `fee_component_id` int(11) NOT NULL AUTO_INCREMENT,
  `component_name` varchar(50) NOT NULL,
  `component_desc` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`fee_component_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_fee_component`
--

LOCK TABLES `mst_fee_component` WRITE;
/*!40000 ALTER TABLE `mst_fee_component` DISABLE KEYS */;
INSERT INTO `mst_fee_component` VALUES (1,'Tuition Fee','Tuition Fee',1),(2,'Educomp Fee','Educomp Smart Class Fee',1),(3,'P.T.A. Fund','PTA Fund Charges',1),(4,'Library Fee','Charges for Library Assessing Fee',1),(5,'Transport Fee','Transportation Charges',1),(6,'Annual Charges','Annual Maintenance Fee',1),(7,'Development Charges','School Development Charges',1),(8,'Uniform/Books/Stationary','School Uniform, Books and Stationary Charges',1),(9,'Fine','Late Fee Fine',1),(10,'Cheque Bounce','Cheque Bounce Charges',1),(11,'Admission Fee','Admission Fee',1),(12,'IP Fee','IP Fee',1),(13,'Qtr Excurtion','Qtr Excurtion',1),(14,'Development Fee Annualy','Dev Fee Annualy',1),(15,'Development Fee (Annual)','Late Fee Fine',1),(16,'Books and Stationary','Books and Stationary',1),(17,'Activity Fee','Activity Fee',1),(18,'Meal','Mid Day Meal',1),(19,'Caution Money','Caution Money',1),(20,'Registration Fee','Registration Fee',1),(21,'Term Charges','Term Charges',1),(22,'Science Fee','Science Fee',1),(23,'Building Fund','Building Fund',1),(24,'Newspaper Subscr.','Newspaper Subscr.',1),(25,'School Magazine','School Magazine',1),(26,'Workshop','Workshop',1),(27,'Picnic & Excursion','Picnic & Excursion',1),(28,'Technology Induc.','Technology Induc.',1),(29,'Medica Exam & AID','Medica Exam & AID',1);
/*!40000 ALTER TABLE `mst_fee_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_grade`
--

DROP TABLE IF EXISTS `mst_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marks10min` float NOT NULL,
  `marks10max` float NOT NULL,
  `marks30min` float NOT NULL,
  `marks30max` float NOT NULL,
  `marks40min` float NOT NULL,
  `marks40max` float NOT NULL,
  `marks50min` float NOT NULL,
  `marks50max` float NOT NULL,
  `marks60min` float NOT NULL,
  `marks60max` float NOT NULL,
  `marks100min` float NOT NULL,
  `marks100max` float NOT NULL,
  `grade_point` float NOT NULL,
  `grade` varchar(6) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `statement` varchar(100) NOT NULL,
  `board_id` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_grade`
--

LOCK TABLES `mst_grade` WRITE;
/*!40000 ALTER TABLE `mst_grade` DISABLE KEYS */;
INSERT INTO `mst_grade` VALUES (1,9.1,10,28,30,37,40,46,50,55,60,91,100,10,'A1',1,'He/She is <strong> excellent</strong> in his/her academic domain.',1),(2,8.1,9,25,27,33,36,41,45,49,54,81,90,9,'A2',1,'He/She is <strong> excellent</strong> in his/her academic domain.',1),(3,7.1,8,22,24,29,32,36,40,43,48,71,80,8,'B1',1,' He/She is<strong> very good</strong>in his/her academic domain.',1),(4,6.1,7,19,21,25,28,31,35,37,42,61,70,7,'B2',1,' He/She is<strong> very good</strong> in his/her academic domain.',1),(5,5.1,6,16,18,21,24,26,30,31,36,51,60,6,'C1',1,'He/She is <strong> good</strong> in his/her academic domain.',1),(6,4.1,5,13,15,17,20,21,25,25,30,41,50,5,'C2',1,'He/She is <strong> good</strong> in his/her academic domain.',1),(7,3.1,4,10,12,13,16,17,20,19,24,33,40,4,'D',1,'He/She is<strong> fair</strong> in his/her academic domain.',1),(8,2.1,3,7,9,9,12,11,16,13,18,0,32,0,'E',1,'He/She needs improvement in academic domain',1),(9,0.1,2,0.1,7,0.1,9,0.1,10,0.1,13,0.1,20,0,'E2',0,'',1);
/*!40000 ALTER TABLE `mst_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_guest_user`
--

DROP TABLE IF EXISTS `mst_guest_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_guest_user` (
  `user_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(35) NOT NULL,
  `user_full_name` varchar(35) DEFAULT NULL,
  `user_name` varchar(35) NOT NULL,
  `password` varchar(64) NOT NULL,
  `user_type` int(3) NOT NULL,
  `confirm_password` varchar(64) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `e_mail` varchar(100) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `state` varchar(35) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `contact_no` varchar(15) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `school_name` varchar(150) DEFAULT NULL,
  `user_category` varchar(20) NOT NULL,
  `user_reference_id` bigint(11) NOT NULL,
  `user_type_as_login` varchar(12) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_code` (`user_code`),
  UNIQUE KEY `user_reference_id` (`user_reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_guest_user`
--

LOCK TABLES `mst_guest_user` WRITE;
/*!40000 ALTER TABLE `mst_guest_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_guest_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_ima_activity`
--

DROP TABLE IF EXISTS `mst_ima_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_ima_activity` (
  `ima_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ima_code` varchar(40) NOT NULL,
  `board_id` int(3) NOT NULL,
  `board_name` varchar(25) NOT NULL,
  `class_id` int(3) NOT NULL,
  `subject_id` int(3) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `unit` int(3) NOT NULL,
  `chapter_id` int(3) NOT NULL,
  `chapter_name` varchar(50) NOT NULL,
  `topic_id` int(3) NOT NULL,
  `topic_name` varchar(50) NOT NULL,
  `marks` int(4) NOT NULL,
  `term` int(2) NOT NULL,
  `ead_id` int(3) NOT NULL,
  `kuase_id` int(3) NOT NULL,
  `mi_id` int(3) NOT NULL,
  `exam_date` date NOT NULL,
  `activity_type_id` int(3) NOT NULL,
  `activity_type` varchar(30) NOT NULL,
  `sub_activity_id` int(3) NOT NULL,
  `sub_activity_type` varchar(20) NOT NULL,
  `question_no` int(5) NOT NULL,
  `question_text` varchar(150) NOT NULL,
  `school_code` varchar(40) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `include_time` int(5) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`ima_id`,`ima_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_ima_activity`
--

LOCK TABLES `mst_ima_activity` WRITE;
/*!40000 ALTER TABLE `mst_ima_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_ima_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_imagetype_question_bank`
--

DROP TABLE IF EXISTS `mst_imagetype_question_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_imagetype_question_bank` (
  `question_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `question_code` varchar(35) NOT NULL,
  `class_id` int(6) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `subject_name` varchar(25) NOT NULL,
  `unit_number` int(5) NOT NULL,
  `chapter_id` bigint(11) NOT NULL,
  `chapter_name` varchar(60) NOT NULL,
  `topic_id` bigint(11) NOT NULL,
  `topic_name` varchar(60) NOT NULL,
  `sub_topic_name` varchar(60) NOT NULL,
  `marks` int(5) NOT NULL,
  `question_number` bigint(11) NOT NULL,
  `question_text` varchar(500) NOT NULL,
  `sub_ques_imgpath_text` varchar(150) NOT NULL,
  `sub_ques_imgname` varchar(30) NOT NULL,
  `activity_id` int(5) NOT NULL,
  `sub_activity_id` int(11) NOT NULL,
  `activity_code` varchar(12) NOT NULL,
  `activity_type` varchar(35) NOT NULL,
  `option1_id` int(5) NOT NULL,
  `image1_path` varchar(100) NOT NULL,
  `image1_name` varchar(30) NOT NULL,
  `option1_text` varchar(100) NOT NULL,
  `option2_id` int(5) NOT NULL,
  `image2_path` varchar(100) NOT NULL,
  `image2_name` varchar(30) NOT NULL,
  `option2_text` varchar(100) NOT NULL,
  `option3_id` int(5) NOT NULL,
  `image3_path` varchar(100) NOT NULL,
  `image3_name` varchar(30) NOT NULL,
  `option3_text` varchar(100) NOT NULL,
  `option4_id` int(5) NOT NULL,
  `image4_path` varchar(100) NOT NULL,
  `image4_name` varchar(30) NOT NULL,
  `option4_text` varchar(100) NOT NULL,
  `option5_id` int(5) NOT NULL,
  `image5_path` varchar(100) NOT NULL,
  `image5_name` varchar(30) NOT NULL,
  `option5_text` varchar(100) NOT NULL,
  `option6_id` int(5) NOT NULL,
  `image6_path` varchar(100) NOT NULL,
  `image6_name` varchar(30) NOT NULL,
  `option6_text` varchar(100) NOT NULL,
  `option7_id` int(5) NOT NULL,
  `image7_path` varchar(100) NOT NULL,
  `image7_name` varchar(30) NOT NULL,
  `option7_text` varchar(100) NOT NULL,
  `option8_id` int(5) NOT NULL,
  `image8_path` varchar(100) NOT NULL,
  `image8_name` varchar(30) NOT NULL,
  `option8_text` varchar(100) NOT NULL,
  `option9_id` int(5) NOT NULL,
  `image9_path` varchar(100) NOT NULL,
  `image9_name` varchar(30) NOT NULL,
  `option9_text` varchar(100) NOT NULL,
  `option10_id` int(5) NOT NULL,
  `image10_path` varchar(100) NOT NULL,
  `image10_name` varchar(30) NOT NULL,
  `option10_text` varchar(100) NOT NULL,
  `option11_id` int(5) NOT NULL,
  `image11_path` varchar(100) NOT NULL,
  `image11_name` varchar(30) NOT NULL,
  `option11_text` varchar(100) NOT NULL,
  `option12_id` int(5) NOT NULL,
  `image12_path` varchar(100) NOT NULL,
  `image12_name` varchar(30) NOT NULL,
  `option12_text` varchar(100) NOT NULL,
  `option13_id` int(5) NOT NULL,
  `image13_path` varchar(100) NOT NULL,
  `image13_name` varchar(30) NOT NULL,
  `option13_text` varchar(100) NOT NULL,
  `option14_id` int(5) NOT NULL,
  `image14_path` varchar(100) NOT NULL,
  `image14_name` varchar(30) NOT NULL,
  `option14_text` varchar(100) NOT NULL,
  `option15_id` int(5) NOT NULL,
  `image15_path` varchar(100) NOT NULL,
  `image15_name` varchar(30) NOT NULL,
  `option15_text` varchar(100) NOT NULL,
  `target1_id` int(5) NOT NULL,
  `target1_text` varchar(100) NOT NULL,
  `target2_id` int(5) NOT NULL,
  `target2_text` varchar(100) NOT NULL,
  `target3_id` int(5) NOT NULL,
  `target3_text` varchar(100) NOT NULL,
  `target4_id` int(5) NOT NULL,
  `target4_text` varchar(100) NOT NULL,
  `target5_id` int(5) NOT NULL,
  `target5_text` varchar(100) NOT NULL,
  `target6_id` int(5) NOT NULL,
  `target6_text` varchar(100) NOT NULL,
  `target7_id` int(5) NOT NULL,
  `target7_text` varchar(100) NOT NULL,
  `target8_id` int(5) NOT NULL,
  `target8_text` varchar(100) NOT NULL,
  `target9_id` int(5) NOT NULL,
  `target9_text` varchar(100) NOT NULL,
  `target10_id` int(5) NOT NULL,
  `target10_text` varchar(100) NOT NULL,
  `target11_id` int(5) NOT NULL,
  `target11_text` varchar(100) NOT NULL,
  `target12_id` int(5) NOT NULL,
  `target12_text` varchar(100) NOT NULL,
  `target13_id` int(5) NOT NULL,
  `target13_text` varchar(100) NOT NULL,
  `target14_id` int(5) NOT NULL,
  `target14_text` varchar(100) NOT NULL,
  `target15_id` int(5) NOT NULL,
  `target15_text` varchar(100) NOT NULL,
  `answer_id` int(5) NOT NULL,
  `answer_text` varchar(300) NOT NULL,
  `ead_id` int(5) NOT NULL,
  `ead_category` varchar(20) NOT NULL,
  `kuase_id` int(5) NOT NULL,
  `kuase_category` varchar(25) NOT NULL,
  `mi_id` int(5) NOT NULL,
  `mi_category` varchar(25) NOT NULL,
  `board_id` int(4) NOT NULL,
  `board` varchar(25) NOT NULL,
  `term` int(3) NOT NULL,
  `right_explanation` varchar(150) NOT NULL,
  `wrong_explanation` varchar(150) NOT NULL,
  `school_id` varchar(35) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `author_name` varchar(30) NOT NULL,
  `isbn_number` varchar(30) NOT NULL,
  `add_date` date NOT NULL,
  `generated_by` varchar(35) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `question_code` (`question_code`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_imagetype_question_bank`
--

LOCK TABLES `mst_imagetype_question_bank` WRITE;
/*!40000 ALTER TABLE `mst_imagetype_question_bank` DISABLE KEYS */;
INSERT INTO `mst_imagetype_question_bank` VALUES (1,'DND5SCIL14Q',5,'SCI','Science',0,14,'Heavenly Bodies',0,'','',0,1,'Fill in the blanks.','upload/activity/images/dnd/5/Science/','',9,0,'DND','Drag and Drop',1,'','','Constellations are made of __________ number of stars.',2,'','','Moon receives light from the __________. ',3,'','','Shooting stars are ___________.',4,'','','The __________ is the only natural satellite of our Earth.',5,'','','Moon is __________ than the Earth.',0,'','','',0,'','','',0,'','','',0,'upload/activity/images/dnd/5/Science/','abc.jpg','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',1,'(small, very large)',2,'(Earth, Sun)',3,'(asteroids, meteors)',4,'(moon, venus)',5,'(bigger, smaller)',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'1. small  2. Sun  3. meteors  4. moon  5. smaller ',1,'Easy',0,'',0,'',1,'CBSE',1,'','','SWASCH1','2016-2017','','Rachna Sagar','','','2016-12-15','SWAU12160005',1),(2,'MATCH5SCIL14Q',5,'SCI','Science',0,14,'Heavenly Bodies',0,'','',0,2,'Match the following columns.','upload/activity/images/match/5/Science/','',4,0,'MATCH','Match the Column',1,'','','Number of stars in the universe',2,'','','Distance between the earth and the moon',3,'','','Number of moons of Saturn',4,'','','The temperature of the sun at the core',5,'','','Our sun is',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',1,'62',2,'_1022',3,'15 million oC',4,'13,00,000 times bigger than the earth',5,'3,84,000 km',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'1. (b) 2. (e) 3. (a) 4. (c) 5. (d)',2,'Average',0,'',0,'',1,'CBSE',1,'','','SWASCH1','2016-2017','','Rachna Sagar','','','2016-12-15','SWAU12160005',1),(3,'DND5SCIL15Q',5,'SCI','Science',0,15,'Space Exploration',0,'','',0,1,'Fill in the blanks.','upload/activity/images/dnd/5/Science/','',9,0,'DND','Drag and Drop',1,'','','The first artificial satellite was sent by ________ in the year ________. ',2,'','','The first Russian satellite was ________ whereas the first American satellite was ________.',3,'','','The spacemen travelling in the rocket are known as ________.',4,'','','________ was the first man to go into space.',5,'','','Telescopes need ________ lenses.',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',1,'(Russia, 1950, America, 1957)',2,'(Explorer-I, Aryabhatta, Sputnik-I)',3,'(Explorers, Astronauts) ',4,'(Major Yuri Gagarin, Neil Armstrong)',5,'(one, two, three)',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'1. Russia    1957  2. Sputink-I     Explorer-I  3. Astronauts  \n5. Major Yuri Gagarin 6. two',1,'Easy',0,'',0,'',1,'CBSE',1,'','','SWASCH1','2016-2017','','Rachna Sagar','','','2016-12-15','SWAU12160005',1),(4,'MATCH5SCIL15Q',5,'SCI','Science',0,15,'Space Exploration',0,'','',0,2,'Match the following columns.','upload/activity/images/match/5/Science/','',4,0,'MATCH','Match the Column',1,'','','Rakesh Sharma ',2,'','','Kalpana Chawla ',3,'','','Neil Armstrong ',4,'','','Edwin Aldrin ',5,'','','Yuri Gagarin ',6,'','','Laika ',7,'','','Michael Collins ',8,'','','Valentina Tereshkova ',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',1,'First man to go into space',2,'First woman to go into space',3,'First Indian woman to go into space',4,'First man to land on Moon',5,'First Indian to go into space',6,'The person who remained in Apollo XI',7,'Second man to land on Moon',8,'First animal to go into space',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'1. (e) 2. (c) 3. (d) 4. (g) 5. (a) 6. (h) 7. (f) 8. (b)',3,'Difficult',0,'',0,'',1,'CBSE',1,'','','SWASCH1','2016-2017','','Rachna Sagar','','','2016-12-15','SWAU12160005',1),(5,'JUMBW5SCIL15Q',5,'SCI','Science',0,15,'Space Exploration',0,'','',0,4,'Unscramble the names of the following satellites.','upload/activity/images/jumbw/5/Science/','',10,0,'JUMBW','Jumble Word',1,'','','U N T I K S P',2,'','','X O R R E L P E',3,'','','A A A A T T H B Y R',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'','','',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'1. SPUTNIK  2. EXPLORER  3. ARYABHATTA',2,'Average',0,'',0,'',1,'CBSE',1,'','','SWASCH1','2016-2017','','Rachna Sagar','','','2016-12-15','SWAU12160005',1);
/*!40000 ALTER TABLE `mst_imagetype_question_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_indicator`
--

DROP TABLE IF EXISTS `mst_indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_indicator` (
  `indicator_id` int(3) NOT NULL AUTO_INCREMENT,
  `indicator_name` varchar(100) NOT NULL,
  `class_id` int(2) NOT NULL,
  `school_code` varchar(40) NOT NULL,
  `group_id` int(2) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`indicator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_indicator`
--

LOCK TABLES `mst_indicator` WRITE;
/*!40000 ALTER TABLE `mst_indicator` DISABLE KEYS */;
INSERT INTO `mst_indicator` VALUES (1,'Life Skills',0,'6999',0,'',1),(2,'Aptitude & Values',0,'6999',0,'',1);
/*!40000 ALTER TABLE `mst_indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_kuase`
--

DROP TABLE IF EXISTS `mst_kuase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_kuase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kause_activity` varchar(35) NOT NULL,
  `kause_desc` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_kuase`
--

LOCK TABLES `mst_kuase` WRITE;
/*!40000 ALTER TABLE `mst_kuase` DISABLE KEYS */;
INSERT INTO `mst_kuase` VALUES (1,'Knowledge','Knowledge Based Activity',1),(2,'Understanding','Understanding Based Activity',1),(3,'Application','Application Based Activity',1),(4,'Skill','Skill Based Activity',1),(5,'Evaluation','Evaluation Based Activity',0);
/*!40000 ALTER TABLE `mst_kuase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_language`
--

DROP TABLE IF EXISTS `mst_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_language` (
  `language_id` int(8) NOT NULL AUTO_INCREMENT,
  `language` varchar(30) NOT NULL,
  `language_desc` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_language`
--

LOCK TABLES `mst_language` WRITE;
/*!40000 ALTER TABLE `mst_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_manual_question_bank`
--

DROP TABLE IF EXISTS `mst_manual_question_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_manual_question_bank` (
  `question_id` bigint(11) NOT NULL DEFAULT '0',
  `question_code` varchar(35) NOT NULL,
  `class_id` int(6) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `subject_name` varchar(25) NOT NULL,
  `unit_number` int(5) NOT NULL,
  `chapter_id` bigint(11) NOT NULL,
  `chapter_name` varchar(60) NOT NULL,
  `topic_id` bigint(11) NOT NULL,
  `topic_name` varchar(60) NOT NULL,
  `sub_topic_name` varchar(60) NOT NULL,
  `marks` int(5) NOT NULL,
  `question_number` bigint(11) NOT NULL,
  `question_text` varchar(500) NOT NULL,
  `activity_type` varchar(25) NOT NULL,
  `activity_id` int(5) NOT NULL,
  `sub_activity_id` int(11) NOT NULL,
  `activity_code` varchar(12) NOT NULL,
  `activity` varchar(35) NOT NULL,
  `option1_id` int(5) NOT NULL,
  `option1_text` varchar(100) NOT NULL,
  `option2_id` int(5) NOT NULL,
  `option2_text` varchar(100) NOT NULL,
  `option3_id` int(5) NOT NULL,
  `option3_text` varchar(100) NOT NULL,
  `option4_id` int(5) NOT NULL,
  `option4_text` varchar(100) NOT NULL,
  `option5_id` int(5) NOT NULL,
  `option5_text` varchar(100) NOT NULL,
  `option6_id` int(5) NOT NULL,
  `option6_text` varchar(100) NOT NULL,
  `option7_id` int(5) NOT NULL,
  `option7_text` varchar(100) NOT NULL,
  `option8_id` int(5) NOT NULL,
  `option8_text` varchar(100) NOT NULL,
  `option9_id` int(5) NOT NULL,
  `option9_text` varchar(100) NOT NULL,
  `option10_id` int(5) NOT NULL,
  `option10_text` varchar(100) NOT NULL,
  `answer_id` int(5) NOT NULL,
  `answer_text` varchar(300) NOT NULL,
  `ead_id` int(5) NOT NULL,
  `ead_category` varchar(20) NOT NULL,
  `kuase_id` int(5) NOT NULL,
  `kuase_category` varchar(25) NOT NULL,
  `mi_id` int(5) NOT NULL,
  `mi_category` varchar(25) NOT NULL,
  `board_id` int(4) NOT NULL,
  `board` varchar(25) NOT NULL,
  `term` int(3) NOT NULL,
  `right_explanation` varchar(150) NOT NULL,
  `wrong_explanation` varchar(150) NOT NULL,
  `school_id` varchar(35) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `author_name` varchar(30) NOT NULL,
  `isbn_number` varchar(30) NOT NULL,
  `add_date` date NOT NULL,
  `generated_by` varchar(35) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_manual_question_bank`
--

LOCK TABLES `mst_manual_question_bank` WRITE;
/*!40000 ALTER TABLE `mst_manual_question_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_manual_question_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_mi`
--

DROP TABLE IF EXISTS `mst_mi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_mi` (
  `mi_id` int(5) NOT NULL AUTO_INCREMENT,
  `mi_activity` varchar(30) NOT NULL,
  `mi_activity_desc` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`mi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_mi`
--

LOCK TABLES `mst_mi` WRITE;
/*!40000 ALTER TABLE `mst_mi` DISABLE KEYS */;
INSERT INTO `mst_mi` VALUES (1,'Interpersonal','Inter-Personal',1),(2,'Intrapersonal','Intra-Personal',1),(3,'Logical','Thinking Power',1),(4,'Visual','Concentration',1),(5,'Musical','Listening Power',1),(6,'Linguistic','Command Over Language (Auditory)',1),(7,'Naturalistic','Observation',1),(8,'Kinesthetic','Mind is Sharp or Not',1),(9,'Spritual','Relate to God',0),(10,'Existential','Presence of Soul',0);
/*!40000 ALTER TABLE `mst_mi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_question_bank`
--

DROP TABLE IF EXISTS `mst_question_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_question_bank` (
  `question_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `question_code` varchar(35) NOT NULL,
  `class_id` int(6) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `subject_name` varchar(25) NOT NULL,
  `unit_number` int(5) NOT NULL,
  `chapter_id` bigint(11) NOT NULL,
  `chapter_name` varchar(60) NOT NULL,
  `topic_id` bigint(11) NOT NULL,
  `topic_name` varchar(60) NOT NULL,
  `sub_topic_id` bigint(11) NOT NULL,
  `sub_topic_name` varchar(60) NOT NULL,
  `activity_id` int(5) NOT NULL,
  `activity_code` varchar(12) NOT NULL,
  `activity` varchar(35) NOT NULL,
  `sub_activity_id` int(2) NOT NULL,
  `sub_activity_name` varchar(25) NOT NULL,
  `marks` int(5) NOT NULL,
  `question_number` bigint(11) NOT NULL,
  `question_part_1` varchar(250) NOT NULL,
  `question_part_2` varchar(250) NOT NULL,
  `question_part_3` varchar(250) NOT NULL,
  `question_part_4` varchar(250) NOT NULL,
  `question_part_5` varchar(250) NOT NULL,
  `question_part_6` varchar(250) NOT NULL,
  `question_part_7` varchar(250) NOT NULL,
  `question_part_8` varchar(250) NOT NULL,
  `question_part_9` varchar(250) NOT NULL,
  `question_part_10` varchar(250) NOT NULL,
  `question_part_11` varchar(250) NOT NULL,
  `question_part_12` varchar(250) NOT NULL,
  `question_part_13` varchar(250) NOT NULL,
  `question_part_14` varchar(250) NOT NULL,
  `question_part_15` varchar(60) NOT NULL,
  `question_part_16` varchar(60) NOT NULL,
  `question_part_17` varchar(60) NOT NULL,
  `question_part_18` varchar(50) NOT NULL,
  `question_part_19` varchar(50) NOT NULL,
  `question_part_20` varchar(50) NOT NULL,
  `question_part_21` varchar(50) NOT NULL,
  `question_part_22` varchar(50) NOT NULL,
  `question_part_23` varchar(50) NOT NULL,
  `question_part_24` varchar(50) NOT NULL,
  `question_part_25` varchar(50) NOT NULL,
  `question_part_26` varchar(50) NOT NULL,
  `question_part_27` varchar(50) NOT NULL,
  `question_part_28` varchar(50) NOT NULL,
  `question_part_29` varchar(50) NOT NULL,
  `question_part_30` varchar(50) NOT NULL,
  `question_part_31` varchar(50) NOT NULL,
  `question_part_32` varchar(50) NOT NULL,
  `question_part_33` varchar(50) NOT NULL,
  `question_part_34` varchar(50) NOT NULL,
  `question_part_35` varchar(50) NOT NULL,
  `option1_id` int(5) NOT NULL,
  `option1_text` varchar(250) NOT NULL,
  `option1_image` varchar(30) NOT NULL,
  `option2_id` int(5) NOT NULL,
  `option2_text` varchar(250) NOT NULL,
  `option2_image` varchar(30) NOT NULL,
  `option3_id` int(5) NOT NULL,
  `option3_text` varchar(250) NOT NULL,
  `option3_image` varchar(30) NOT NULL,
  `option4_id` int(5) NOT NULL,
  `option4_text` varchar(250) NOT NULL,
  `option4_image` varchar(30) NOT NULL,
  `option5_id` int(5) NOT NULL,
  `option5_text` varchar(250) NOT NULL,
  `option5_image` varchar(30) NOT NULL,
  `option6_id` int(5) NOT NULL,
  `option6_text` varchar(250) NOT NULL,
  `option6_image` varchar(30) NOT NULL,
  `option7_id` int(5) NOT NULL,
  `option7_text` varchar(250) NOT NULL,
  `option7_image` varchar(30) NOT NULL,
  `option8_id` int(5) NOT NULL,
  `option8_text` varchar(250) NOT NULL,
  `option8_image` varchar(30) NOT NULL,
  `option9_id` int(5) NOT NULL,
  `option9_text` varchar(250) NOT NULL,
  `option9_image` varchar(30) NOT NULL,
  `option10_id` int(5) NOT NULL,
  `option10_text` varchar(250) NOT NULL,
  `option10_image` varchar(30) NOT NULL,
  `option11_id` int(5) NOT NULL,
  `option11_text` varchar(100) NOT NULL,
  `option11_image` varchar(30) NOT NULL,
  `option12_id` int(5) NOT NULL,
  `option12_text` varchar(100) NOT NULL,
  `option12_image` varchar(30) NOT NULL,
  `option13_id` int(5) NOT NULL,
  `option13_text` varchar(100) NOT NULL,
  `option13_image` varchar(30) NOT NULL,
  `option14_id` int(5) NOT NULL,
  `option14_text` varchar(100) NOT NULL,
  `option14_image` varchar(30) NOT NULL,
  `option15_id` int(5) NOT NULL,
  `option15_text` varchar(100) NOT NULL,
  `option15_image` varchar(30) NOT NULL,
  `target_id1` int(5) NOT NULL,
  `target_text1` varchar(100) NOT NULL,
  `target_id2` int(5) NOT NULL,
  `target_text2` varchar(100) NOT NULL,
  `target_id3` int(5) NOT NULL,
  `target_text3` varchar(100) NOT NULL,
  `target_id4` int(5) NOT NULL,
  `target_text4` varchar(100) NOT NULL,
  `target_id5` int(5) NOT NULL,
  `target_text5` varchar(100) NOT NULL,
  `target_id6` int(5) NOT NULL,
  `target_text6` varchar(100) NOT NULL,
  `target_id7` int(5) NOT NULL,
  `target_text7` varchar(100) NOT NULL,
  `target_id8` int(5) NOT NULL,
  `target_text8` varchar(100) NOT NULL,
  `target_id9` int(2) NOT NULL,
  `target_text9` varchar(100) NOT NULL,
  `target_id10` int(2) NOT NULL,
  `target_text10` varchar(100) NOT NULL,
  `target_id11` int(5) NOT NULL,
  `target_text11` varchar(100) NOT NULL,
  `target_id12` int(5) NOT NULL,
  `target_text12` varchar(100) NOT NULL,
  `target_id13` int(5) NOT NULL,
  `target_text13` varchar(100) NOT NULL,
  `target_id14` int(5) NOT NULL,
  `target_text14` varchar(100) NOT NULL,
  `target_id15` int(5) NOT NULL,
  `target_text15` varchar(100) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `answer_id` int(5) NOT NULL,
  `answer_text` varchar(800) NOT NULL,
  `answer_id2` int(3) NOT NULL,
  `answer_text2` varchar(500) NOT NULL,
  `ead_id` int(5) NOT NULL,
  `ead_category` varchar(20) NOT NULL,
  `kuase_id` int(5) NOT NULL,
  `kuase_category` varchar(25) NOT NULL,
  `mi_id` int(5) NOT NULL,
  `mi_category` varchar(25) NOT NULL,
  `avk_id` int(3) NOT NULL,
  `avk_category` varchar(15) NOT NULL,
  `board_id` int(4) NOT NULL,
  `board` varchar(25) NOT NULL,
  `term` int(3) NOT NULL,
  `right_explanation` varchar(150) NOT NULL,
  `wrong_explanation` varchar(150) NOT NULL,
  `school_id` varchar(35) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `author_name` varchar(30) NOT NULL,
  `isbn_number` varchar(30) NOT NULL,
  `add_date` date NOT NULL,
  `generated_by` varchar(35) NOT NULL,
  `option_ids` varchar(50) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `question_code` (`question_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_question_bank`
--

LOCK TABLES `mst_question_bank` WRITE;
/*!40000 ALTER TABLE `mst_question_bank` DISABLE KEYS */;
INSERT INTO `mst_question_bank` VALUES (1,'DD1ENL11Q3',1,'EN','English',0,11,'Positions Words – In, On, Over, Under',0,'',0,'',12,'DD','Drop Down',1,'DD Type 1 (Question, Stat',0,3,'Look at the pictures. Fill in the blanks by selecting the correct position word.','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'\0T\0h\0e\0 \0n\0e\0s\0t\0 \0i\0s\0 \0#\0 \0t\0h\0e\0 \0t\0r\0e\0e\0.','GMR_gr1_ch11_act3_img1.jpg',2,'The birds are flying # the tree.','GMR_gr1_ch11_act3_img2.jpg',3,'The man is sleeping # the tree','GMR_gr1_ch11_act3_img3.jpg',4,'The boy is sitting # the chair.','GMR_gr1_ch11_act3_img4.jpg',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',1,'on, in, under, over',2,'on, in, over, under',3,'under, on, in, over',4,'over, under, in, on',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','upload/activity/images/dd/1/English/',1,'on, over, under, in',0,'0',2,'Average',0,'',4,'Visual',0,'',1,'CBSE',1,'','','SWASCH1','2017-2018','','Rachna Sagar Pvt. Ltd.','','','2017-05-16','GBDIPS001','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15',1),(2,'DD1ENL3Q1',1,'EN','English',0,3,'Action Words',0,'',0,'',12,'DD','Drop Down',1,'DD Type 1 (Question, Stat',0,1,'Look at the picture in each sentence and fill in the blanks by selecting the correct option.','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'\0H\0e\0 \0i\0s\0 \0#\0 \0i\0n\0 \0t\0h\0e\0 \0r\0i\0v\0e\0r\0.','GMR_gr1_ch3_act1_img1.jpg',2,'She is # a car.','GMR_gr1_ch3_act1_img2.jpg',3,'He is #.','GMR_gr1_ch3_act1_img3.jpg',4,'She is # with a doll.','GMR_gr1_ch3_act1_img4.jpg',5,'The child is # a banana.','GMR_gr1_ch3_act1_img5.jpg',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',1,'swimming, playing',2,'walking, driving',3,'playing, running',4,'playing, eating',5,'eating, watching',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','upload/activity/images/dd/1/English/',1,'swimming, driving, running, playing, eating',0,'0',1,'Easy',0,'',4,'Visual',0,'',1,'CBSE',1,'','','SWASCH1','2017-2018','','Rachna Sagar Pvt. Ltd.','','','2017-05-16','GBDIPS001','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15',1),(3,'DD1ENL5Q1',1,'EN','English',0,5,'This/That, These/Those',0,'',0,'',12,'DD','Drop Down',1,'DD Type 1 (Question, Stat',0,1,'Look at the given picture carefully. Select the correct words to fill in the blanks.','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'\0#\0 \0a\0 \0b\0e\0a\0r\0,\0 \0b\0u\0t\0 \0#\0 \0a\0 \0t\0i\0g\0e\0r\0.','GMR_gr1_ch5_act1_img1.jpg',2,'# a boy, but # a girl.','GMR_gr1_ch5_act1_img2.jpg',3,'# are fruits, but # vegetables.','GMR_gr1_ch5_act1_img3.jpg',4,'# are mangoes, but # oranges.','GMR_gr1_ch5_act1_img4.jpg',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',1,'This is, That is???this is, that is',2,'That is, This is???this is, that is',3,'Those are, These are???those are, these are',4,'These are, Those are???these are, those are',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','upload/activity/images/dd/1/English/',1,'This is???that is,This is???that is,These are???those are,These are???those are',0,'0',1,'Easy',0,'',4,'Visual',0,'',1,'CBSE',1,'','','SWASCH1','2017-2018','','Rachna Sagar Pvt. Ltd.','','','2017-05-16','GBDIPS001','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15',1),(4,'DD1ENL7Q4',1,'EN','English',0,7,'Singular and Plural',0,'',0,'',12,'DD','Drop Down',2,'DD Type 2 (Question, Para',0,4,'Fill in the blanks by selecting the correct option.','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'\0I\0 \0l\0o\0v\0e\0 \0#\0.','',2,'I have two # at home.','',3,'I also have one # and one #.','',4,'But I never chain these #.','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',1,'animal, animals',2,'dog, dogs',3,'cat,cats???rabbit, rabbits',4,'animal, animals',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','upload/activity/images/dd/1/English/',1,'animals, dogs, cat???rabbit, animals',0,'0',2,'Average',0,'',6,'Linguistic',0,'',1,'CBSE',1,'','','SWASCH1','2017-2018','','Rachna Sagar Pvt. Ltd.','','','2017-05-16','GBDIPS001','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15',1),(5,'DD1ENL8Q3',1,'EN','English',0,8,'Three little words – A, An, The',0,'',0,'',12,'DD','Drop Down',1,'DD Type 1 (Question, Stat',0,3,'Fill in the blanks by selecting the correct option.','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'\0S\0h\0e\0 \0b\0o\0u\0g\0h\0t\0 \0#\0 \0n\0e\0w\0 \0u\0m\0b\0r\0e\0l\0l\0a\0.\0 \0#\0 \0u\0m\0b\0r\0e\0l\0l\0a\0 \0i\0s\0 \0b\0e\0a\0u\0t\0i\0f\0u\0l\0.','',2,'She saw # ugly duck. # duck had lost its way.','',3,'That rabbit is holding # pencil. # pencil is big.','',4,'# book is kept on the table. # book is thick.','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',0,'','',1,'a, an, the ??? A, An, The',2,'a, an , the ??? A, An, The',3,'a, an, the ??? A, An, The',4,'A, An, The ??? A, An, The',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','upload/activity/images/dd/1/English/',1,'a???The,an???The,a???The,A???The',0,'0',2,'Average',0,'',6,'Linguistic',0,'',1,'CBSE',1,'','','SWASCH1','2017-2018','','Rachna Sagar Pvt. Ltd.','','','2017-05-16','GBDIPS001','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15',1);
/*!40000 ALTER TABLE `mst_question_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_school`
--

DROP TABLE IF EXISTS `mst_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_school` (
  `school_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `school_code` varchar(40) NOT NULL,
  `dise_code` varchar(15) NOT NULL,
  `affiliation_code` varchar(30) NOT NULL,
  `exam_code` varchar(30) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `school_group` varchar(15) NOT NULL DEFAULT 'Primary Branch',
  `school_group_code` varchar(40) NOT NULL,
  `school_board` varchar(30) NOT NULL,
  `school_board_id` int(3) NOT NULL,
  `school_type` varchar(22) NOT NULL,
  `class_from` int(5) NOT NULL,
  `class_to` int(5) NOT NULL,
  `address` varchar(150) NOT NULL,
  `city_village` varchar(30) NOT NULL,
  `cluster_code` varchar(15) NOT NULL,
  `cluster_name` varchar(25) NOT NULL,
  `block_code` varchar(15) NOT NULL,
  `block_name` varchar(25) NOT NULL,
  `district_code` varchar(15) NOT NULL,
  `district_name` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `pin_code` int(6) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `principal_name` varchar(25) NOT NULL,
  `vice_principal_name` varchar(25) NOT NULL,
  `student_capacity` int(6) NOT NULL,
  `total_teacher` int(6) NOT NULL,
  `total_classroom` int(5) NOT NULL,
  `total_transport_vehicle` int(4) NOT NULL,
  `school_session_start` varchar(20) NOT NULL DEFAULT 'April',
  `vacation_start_date` date NOT NULL,
  `vacation_end_date` date NOT NULL,
  `kitchen_shed` varchar(5) NOT NULL DEFAULT 'No',
  `school_playground` varchar(5) NOT NULL DEFAULT 'No',
  `tent_available` varchar(5) NOT NULL DEFAULT 'No',
  `boundary_type` varchar(15) NOT NULL DEFAULT 'Fancy',
  `total_guest_teacher` int(5) NOT NULL,
  `connection_id` varchar(25) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `school_photo` varchar(100) NOT NULL,
  `school_logo` varchar(100) NOT NULL,
  `add_date` date NOT NULL,
  `add_time` time NOT NULL,
  `add_by_user` varchar(25) NOT NULL,
  `add_by_userid` int(40) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`school_id`),
  UNIQUE KEY `school_code` (`school_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_school`
--

LOCK TABLES `mst_school` WRITE;
/*!40000 ALTER TABLE `mst_school` DISABLE KEYS */;
INSERT INTO `mst_school` VALUES (1,'6999','6528','6999','','DE INDIAN PUBLIC SCHOOL','Primary','','CBSE',1,'Primary',1,5,'D Block Ashok Vihar','Ashok Vihar','652855','Ashok Vihar','65285','Ashok Vihar','65285','North Delhi','Delhi',110052,'goldenbells@gmail.com','8754854855','Rajni Khosla','',1500,15,50,56,'April','2017-04-18','2017-05-25','NA','NA','NA','NA',0,'NA','2016-2017','plugins/images/users/schoolimg.png','upload/upload_images/school_images/noschoollogo.png','2017-04-04','00:00:12','Admin Swaadhyayan',0,1),(2,'SWA22040002','','9000','365','THE BAGGA LINK PUBLIC SCHOOL','Primary','','CBSE',1,'Primary',1,5,'Chetna Marg, Banglore','Hunter City','','','','','','South Delhi','Bihar',658548,'tblps@gmail.com','3658596585','Sunder Singh','',0,0,0,0,'April','2017-04-12','2017-05-25','NA','NA','NA','NA',0,'NA','2017-18','plugins/images/users/schoolimg.png','upload/upload_images/school_images/noschoollogo.png','2017-04-22','00:00:05','Rajiv Gupta',0,1),(3,'SWA25040003','','12345','','DELHI PUBLIC SCHOOL','Primary','','CBSE',1,'Middle',1,8,'Sector-12,rohini,new Delhi','','','','','','','West','Delhi',110085,'sugandhgulati.1018@gmail.com','9887665433','Piyusha Jain','',0,0,0,0,'April','2017-04-25','2017-05-30','NA','NA','NA','NA',0,'NA','2017-18','upload/upload_images/user_images/DELHIimages (2).jpg','upload/upload_images/school_images/noschoollogo.png','2017-04-25','00:00:12','Rajiv Gupta',0,1),(4,'SWA26040004','','1234','','BAL BHARTI PUBLIC SCHOOL','Primary','','CBSE',1,'Senior Secondary',1,12,'Sector-20,rohini,new Delhi','','','','','','','','Delhi',136243,'sugandh@swaadhyayan.com','9787536775','Rajni Khosla','',0,0,0,0,'April','2017-04-26','2017-04-26','NA','NA','NA','NA',0,'NA','2017-2018','upload/upload_images/user_images/BALimages (2).jpg','upload/upload_images/school_images/noschoollogo.png','2017-04-26','00:00:10','Rajiv Gupta',0,1),(5,'SWA05050005','','4567','0001','GOLDEN BELLS PRE SCHOOL','Primary','','CBSE',1,'Middle',1,8,'Ashok Vihar','Ashok Vihar','','','','','','North Delhi','Delhi',110052,'gbdips@gmail.com','9582358811','Rajni Khosla','',0,0,0,0,'April','2017-05-10','2017-06-09','NA','NA','NA','NA',0,'NA','2017-2018','plugins/images/users/schoolimg.png','upload/upload_images/school_images/noschoollogo.png','2017-05-05','00:00:11','Rajiv Gupta',0,1),(6,'SWA11DIPS85','','123456','','DE INDIAN PUBLIC SCHOOL','Primary','','CBSE',1,'Senior Secondary',1,12,'Pocket 11, Sector - 24, Rohini, New Delhi','DELHI','','','','','','NORTH dELHI','Delhi',110085,'info@dipsrohini.in','27050252','Seema Awasthi','',0,0,0,0,'April','2017-05-11','2017-07-03','NA','NA','NA','NA',0,'NA','2017-2018','upload/upload_images/user_images/DEd.png','upload/upload_images/school_images/noschoollogo.png','2017-05-23','00:00:11','Rajiv Gupta',0,1),(7,'SWA11DS85','','0888','0888','DUMMY SCHOOL ','Primary','','CBSE',1,'Pre-Primary',14,14,'Sector -3 Rohini','Delhi','','','','','','NORTH DELHI','Delhi',110085,'dum@gmail.com','9873145698','Rajni Khosla','',0,0,0,0,'April','2017-05-15','2017-05-30','NA','NA','NA','NA',0,'NA','2017-2018','plugins/images/users/schoolimg.png','upload/upload_images/school_images/noschoollogo.png','2017-05-23','00:00:11','Seema Awasthi',0,1),(8,'SWA11LSPS34','','10001','495009','LITTLE STAR PUBLIC SCHOOL','Primary','','CBSE',1,'Middle',1,8,'OP-BLOCK, NORTH PITAM PURA,','DELHI','','','','','','NORTH DELHI','Delhi',110034,'littlestar1001@gmail.com','8485478548','Sunita Parewa','',0,0,0,0,'April','2017-04-18','2017-07-05','NA','NA','NA','NA',0,'NA','2017-2018','upload/upload_images/school_images/schoolimg.png','upload/upload_images/school_images/noschoollogo.png','2017-06-24','00:00:03','Rajiv Gupta',0,1);
/*!40000 ALTER TABLE `mst_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_school_category`
--

DROP TABLE IF EXISTS `mst_school_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_school_category` (
  `school_category_id` int(6) NOT NULL AUTO_INCREMENT,
  `school_category` varchar(25) NOT NULL,
  `category_desc` varchar(30) NOT NULL,
  `class_from` int(5) NOT NULL,
  `class_to` int(5) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`school_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_school_category`
--

LOCK TABLES `mst_school_category` WRITE;
/*!40000 ALTER TABLE `mst_school_category` DISABLE KEYS */;
INSERT INTO `mst_school_category` VALUES (1,'Pre-School','Pre-School (Prep1-Prep2)',13,13,1),(2,'Pre-Primary','Pre-Primary (LKG-UKG)',14,14,1),(3,'Primary','Primary',1,5,1),(4,'Middle','Middle',1,8,1),(5,'Secondary','Secondary',1,10,1),(6,'Senior Secondary','Senior Secondary',1,12,1);
/*!40000 ALTER TABLE `mst_school_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_section`
--

DROP TABLE IF EXISTS `mst_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(5) NOT NULL,
  `class_id` int(3) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_section`
--

LOCK TABLES `mst_section` WRITE;
/*!40000 ALTER TABLE `mst_section` DISABLE KEYS */;
INSERT INTO `mst_section` VALUES (1,'A',1,1),(2,'B',1,1),(3,'C',1,1),(4,'D',1,1),(5,'A',2,1),(6,'B',2,1),(7,'C',2,1),(8,'D',2,1),(9,'A',3,1),(10,'B',3,1),(11,'C',3,1),(12,'D',3,1),(13,'A',4,1),(14,'B',4,1),(15,'C',4,1),(16,'D',4,1),(17,'A',5,1),(18,'B',5,1),(19,'C',5,1),(20,'D',5,1),(21,'A',13,1),(22,'A',14,1),(23,'A',6,1),(24,'B',6,1),(25,'A',7,1),(26,'A',8,1);
/*!40000 ALTER TABLE `mst_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_sept_activity`
--

DROP TABLE IF EXISTS `mst_sept_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_sept_activity` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `question_sequence` int(5) NOT NULL,
  `question` varchar(500) NOT NULL,
  `ques_option1_id` int(3) NOT NULL,
  `ques_option1` varchar(100) NOT NULL,
  `ques_option2_id` int(3) NOT NULL,
  `ques_option2` varchar(100) NOT NULL,
  `ques_option3_id` int(3) NOT NULL,
  `ques_option3` varchar(100) NOT NULL,
  `ques_option4_id` int(3) NOT NULL,
  `ques_option4` varchar(100) NOT NULL,
  `ques_option5_id` int(3) NOT NULL,
  `ques_option5` varchar(100) NOT NULL,
  `ques_option6_id` int(3) NOT NULL,
  `ques_option6` varchar(100) NOT NULL,
  `ques_option7_id` int(3) NOT NULL,
  `ques_option7` varchar(100) NOT NULL,
  `ques_option8_id` int(3) NOT NULL,
  `ques_option8` varchar(100) NOT NULL,
  `ques_option9_id` int(3) NOT NULL,
  `ques_option9` varchar(100) NOT NULL,
  `ques_option10_id` int(3) NOT NULL,
  `ques_option10` varchar(100) NOT NULL,
  `op1_option_id` int(5) NOT NULL,
  `op1_option` varchar(80) NOT NULL,
  `op2_option_id` int(5) NOT NULL,
  `op2_option` varchar(80) NOT NULL,
  `op3_option_id` int(5) NOT NULL,
  `op3_option` varchar(80) NOT NULL,
  `op4_option_id` int(5) NOT NULL,
  `op4_option` varchar(80) NOT NULL,
  `op5_option_id` int(5) NOT NULL,
  `op5_option` varchar(80) NOT NULL,
  `video_path` varchar(100) NOT NULL,
  `audio_path` varchar(100) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `activity_desc` varchar(100) NOT NULL,
  `class_id` int(3) NOT NULL,
  `avk_category` varchar(35) NOT NULL,
  `ead_category` varchar(35) NOT NULL,
  `MI_type` varchar(25) NOT NULL,
  `board` varchar(15) NOT NULL,
  `attempt_time` int(11) NOT NULL,
  `marks` int(3) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `status` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_sept_activity`
--

LOCK TABLES `mst_sept_activity` WRITE;
/*!40000 ALTER TABLE `mst_sept_activity` DISABLE KEYS */;
INSERT INTO `mst_sept_activity` VALUES (1,1,'Listen to the word and select its correct homophone.',1,'Frock',2,'Matter',3,'Caught',4,'Route',0,'',0,'0',0,'0',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/5_1a.mp3',3,'Caught','Listen and Tick the Answer (V0)',5,'Auditory','Easy','','CBSE',59,1,'2016-2017',1),(2,2,'Froggy wants to cross a stream. The stream is twelve feet wide. On every jump, Froggy covers two feet distance. In how many jumps will Froggy reach from rock A to rock B?',1,'4',2,'5',3,'6',4,'7',0,'',0,'0',0,'0',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'','','',3,'6','Type Correct Answer',5,'Visual','Average','','CBSE',59,1,'',1),(3,3,'Observe the following balances.',1,'2',2,'4',3,'3',4,'1',0,'',0,'0',0,'0',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'','','Kinesthetic',1,'2','Drag and Drop',5,'Kinesthetic','Difficult','','CBSE',59,1,'2016-2017',1),(4,4,'Drag and drop the given waste materials into biodegradable \nand non-biodegradable bin.',1,'Fallen leaves',2,'Polybags',3,'Waste paper',4,'Aluminium foil',5,'Glass bottle',6,'Peels of Fruits',0,'0',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'','','Kinesthetic',1,'Biodegradable: Fallen Leaves, Waste paper, Peels of Fruits <br> Non-biodegradable: Polybags, Aluminium foil, Glass Bottle ','Drag and Drop',5,'Kinesthetic','Easy','','C',59,1,'2016-2017',1),(5,5,'पंकितयों को सुनें और वस्तु को पहचानें।',1,'सूरज',2,'नदी',3,'बादल',4,'समुद्र',0,'',0,'0',0,'0',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/5_5a.mp3',3,'बादल','Listen and Tick the Answer (V0)',5,'Auditory','Average','','CBSE',59,1,'2016-2017',1),(6,6,' What is the fraction of test tubes which are filled?',1,'1/2',2,'1/3',3,'1/6',4,'1/4',0,'',0,'0',0,'0',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'','','',4,'1/4','Tick the Correct',5,'Visual','Difficult','','CBSE',59,1,'2016-2017',1),(7,7,'Select the activities which are safe.',1,'Walking on Footpath',2,'Standing at the gete in the Bus',3,'Running on Desk',4,'Cross from Zebra Crossing',5,'Pencil Eraser',0,'0',0,'0',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'1,3,5','Fill in the Answer',5,'Visual','Easy','','CBSE',59,1,'2016-2017',1),(8,8,'Match the given products with the plants from which they are obtained. ',1,'Cotton Plant ',2,' Rose Plant',3,'Rubber Tree',4,'Sugarcane',0,'',0,'0',0,'0',0,'0',0,'0',0,'',1,'Sugar',2,'Tyre',3,'Clothes',4,'Scent',0,'','','',1,'Cotton Plants—Clothes\r\nRose Plant—Scent\r\nRubber Tree—Tyre\r\nSugarcane—Sugar','Match the Following',5,'Kinesthetic','Average','','CBSE',59,1,'2016-2017',1),(9,9,'Listen to the poem and select at what time we should not water the flowers.',1,'Morning',2,'Evening',3,'Noon',4,'Dusk',0,'',0,'0',0,'0',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/5_9a.mp3',3,'Noon','Listen and Tick the Answer (V0)',5,'Auditory','Difficult','','CBSE',59,1,'2016-2017',1),(10,1,'Listen to the rhyme and select the scene that describes it.',1,'A picture of boy watering a plant',2,'A picture of a bird watching a fruit on the tree while flying',3,'A picture of sunrise',0,'',0,'',0,'0',0,'0',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/2_1a.mp3',2,'A picture of a bird watching a fruit on the tree while flying','Listen and Tick the Answer (V0)',2,'Auditory','Easy','','CBSE',59,1,'2016-2017',1),(11,2,'You want to buy three articles. Select the articles which you can buy for exactly 40 rupees.',1,'Rs 40 Kake',2,'Rs 20 Juice',3,'Rs 10 Noodle',4,'Rs 30 Jam',5,'Rs 10 Souce',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'Rs 20 Juice, Rs 10 Noodle, Rs 10 Souce ','Tick the Correct',2,'Visual','Average','','CBSE',59,1,'2016-2017',1),(12,3,'Drag and drop the given clothes in the wardrobe according to the seasons in which we use them.',1,'Cotton Shirt',2,'Cotton Frock',3,'Sweater',4,'Rainsuit',5,'Raincoat',6,'Scarf',7,'Gloves',8,'Shorts',9,'T-Shirt',0,'',1,'',2,'',3,'',0,'',0,'','','',1,'Summer-Cotton Shirt, Cotton Frock, Shorts, T-shirt\nWinter-Sweater, Scarf, Gloves\nRainy-Gumboot, Raincoat','Drag and Drop',2,'Kinesthetic','Difficult','','CBSE',59,1,'2016-2017',1),(13,4,'Match Column A with Column B.',1,'We should always walk on the',2,'When traffic signal is red, it means to',3,'When traffic signal is red, it means to',4,'We should never play on the ',0,'',0,'',0,'',0,'',0,'',0,'',1,'Road',2,' Footpath',3,'Zebra crossing',4,'Stop',0,'','','',1,'We should always walk on the - footpath\nWe should cross the road on the - zebra crossing\nWhen traffic signal is red, it means to - stop\nWe should never play on the - road','Match the Following',2,'Kinesthetic','Easy','','CBSE',59,1,'2016-2017',1),(14,5,'कविता को सुनें और बताएं इनमें से किस शब्द का प्रयोग नहीं हुआ है',1,'घर',2,'बस ',3,'चल',4,'बल',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/2_5a.mp3',4,'बल','Listen and Tick the Answer (V0)',2,'Auditory','Average','','CBSE',59,1,'2016-2017',1),(15,6,'Observe the given balances and fill in the blank.',1,'5',2,'8',3,'6',4,'4',5,'',6,'',7,'',8,'',9,'',0,'',0,'',0,'',0,'',0,'',0,'','','',4,'4','Tick the Correct',2,'Visual','Difficult','','CBSE',59,1,'2016-2017',1),(16,7,'Select the correct spelling of the given picture.',1,'Cabage',2,'Cabbaje',3,'Cabbage',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',3,'Cabbage','Tick the Correct',2,'Visual','Easy','','CBSE',59,1,'2016-2017',1),(17,8,'Drag and drop the correct adjective for the following objects.',1,'Sweet',2,'Red',3,'Black',4,'New',0,'',0,'',0,'',0,'',0,'',0,'',1,'Mango',2,'Tomato',3,'Dog',4,'Car',0,'','','',1,'Sweet-Mango Red-Tomato Black-Dog New-Car','Drag and Drop',2,'Kinesthetic','Average','','CBSE',59,1,'2016-2017',1),(18,9,'Listen to the hint and identify part of the plant.',1,'Flower',2,'Stem',3,'Roots',4,'Fruit',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/2_9a.mp3',4,'Fruit','Tick the Correct',2,'Auditory','Difficult','','CBSE',59,1,'2016-2017',1),(19,1,'Listen to the sound and identify the object.',1,'Tractor ',2,'Train',3,'Scooter',4,'Truck',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/14_1a.mp3',2,'Train','Tick the Correct',14,'Auditory','Easy','','CBSE',59,1,'2016-2017',1),(20,2,'Select the modes of transport. ',1,'Aeroplane',2,'Boat',3,'Camera',4,'Car',5,'Fan',6,'Television',7,'Lamp',8,'Bus',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'Aeroplane,Car,Bus,Boat','Tick the Correct',14,'Visual','Average','','CBSE',59,1,'2016-2017',1),(21,3,'Match the following pairs.',1,'Shoes ',2,'Table',3,'Lock',4,'Open Textbook',0,'',0,'',0,'',0,'',0,'',0,'',1,'Socks',2,'Chair',3,'Key',4,'Pencil',0,'','','Kinesthetic',1,'a-iii, b-iv, c-i, d-ii','Match the Coloum',14,'Kinesthetic','Difficult','','CBSE',59,1,'2016-2017',1),(22,4,'Match the objects with their shapes.',1,'CD',2,'Chessboard',3,'Hanger',4,'Blackboard',0,'',0,'',0,'',0,'',0,'',0,'',1,'Circle',2,'Square',3,'Triangle',4,'Rectangle',0,'','','Kinesthetic',1,'CD—Circle,Chessboard—Square,\nTriangle—Hanger,Blackboard—Rectangle','Match the Coloum',14,'Kinesthetic','Easy','','CBSE',59,1,'2016-2017',1),(23,5,'Listen to the sound and identify the correct picture.',1,'2 Red Apples',2,'2 Green Apples',3,'2 Tomatoes',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/14_5a.mp3',1,'Two Red Apples','Listen and Tick',14,'Auditory','Average','','CBSE',59,1,'2016-2017',1),(24,6,'Count the number of insects and select the correct answer.',1,'5',2,'8',3,'6',4,'7',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'5','Multiple Choice Questions',14,'Visual','Difficult','','CBSE',59,1,'2016-2017',1),(25,7,'Select the activity that we should not do.',1,'Picture 1',2,'Picture 2',3,'Picture 3',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'Picture 1','Tick the Correct',14,'Visual','Easy','','CBSE',59,1,'2016-2017',1),(26,8,'Take the fruits and vegetables to the respective baskets.',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','Kinesthetic',1,'Fruits-4, Vegetables-4','Drag and Drop',14,'Kinesthetic','Average','','CBSE',59,1,'2016-2017',1),(27,9,'Listen to the recording and select the object.',1,'Sun',2,'Rainbow',3,'clouds',4,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/14_9a.mp3',2,'Rainbow','Listen and Tick',14,'Auditory','Difficult','','CBSE',59,1,'2016-2017',1),(28,1,'Listen to the word and identify the colour of the balloon.',1,'Red',2,'Blue',3,'Yellow',4,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/13_1a.mp3',2,'Blue','Listen and Tick',13,'Auditory','Easy','','CBSE',59,1,'2016-2017',1),(29,2,'Select the things that you see in the sky.',1,'Flower',2,'Sun',3,'Clouds',4,'Balloon',5,'Chair',6,'Lamp',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'Sun, Clouds','Click and Select',13,'Visual','Average','','CBSE',59,1,'2016-2017',1),(30,3,'Drag and drop the ladder in the slanting position and help Rohan to climb up.',1,'a ladder in sleeping position',2,'a ladder in slanting position',3,'a ladder in standing position',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','Kinesthetic',2,'a ladder in slanting position','Colour the Image',13,'Kinesthetic','Difficult','','CBSE',59,1,'2016-2017',1),(31,4,'Match the clothes with their names.',1,'Sweater',2,'T-shirt',3,'Shirt',4,'Frock',0,'',0,'',0,'',0,'',0,'',0,'',1,'activity/images/Pre_Primary/13_4_1.jpg',2,'activity/images/Pre_Primary/13_4_2.jpg',3,'activity/images/Pre_Primary/13_4_3.jpg',4,'activity/images/Pre_Primary/13_4_4.jpg',0,'','','Kinesthetic',1,'','Match the Coloum',13,'Kinesthetic','Easy','','CBSE',59,1,'2016-2017',1),(32,5,'Listen to the word and identify the number.',1,'1',2,'4',3,'7',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/13_5a.mp3',1,'One','Listen and Tick',13,'Auditory','Average','','CBSE',59,1,'2016-2017',1),(33,6,'Select the animals which live in jungle.',1,'Cat',2,'Cow',3,'Lion',4,'Zebra',5,'Rabbit',6,'Dog',7,'Giraffe',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'Lion, Zebra, Giraffe','Multiple Choice Question',13,'Visual','Difficult','','CBSE',59,1,'2016-2017',1),(34,7,'Select the object which matches with the given shape.',1,'A picture of rectangular geometry box',2,'The picture of round drum',3,'A picture of triangular sandwich',0,'',5,'',6,'',7,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',3,'A picture of triangular sandwich','Click and Select',13,'Visual','Easy','','CBSE',59,1,'2016-2017',1),(35,8,'Match the vehicles with their modes of transport.',1,'Picture of Train ',2,'Picture of Bus',3,'Picture of Boat',0,'',0,'',0,'',0,'',0,'',0,'',0,'',1,' Picture of Rail track ',2,'Picture of Road',3,'Picture of a River',0,'',0,'','','Kinesthetic',1,'1-2, 2-3, 3-1','Match the Coloum',13,'Kinesthetic','Average','','CBSE',59,1,'2016-2017',1),(36,9,'Listen to the sound and identify the animal.',1,'cat',2,'Lion',3,'Dog',4,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/13_9a.mp3',2,'Sound of roaring of lion','Listen and Tick',13,'Auditory','Difficult','','CBSE',59,1,'2016-2017',1),(37,1,' Listen to the sound and identify the correct word which uses it.',1,'Bed',2,'Zip',3,'Box',4,'Cat',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/1_1a.mp3',4,'Cat','Listen and Tick',1,'Auditory','Easy','','CBSE',59,1,'2016-2017',1),(38,2,'Select the longest blue strip.',1,'P',2,'Q',3,'R',4,'S',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',3,'R','Tick the Correct',1,'Visual','Average','','CBSE',59,1,'2016-2017',1),(39,3,'Drag and drop the names of the weather for the given pictures.',1,'Sunny',2,'Tuesday',3,'Rainy',3,'Cloudy',4,'Windy',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'0',0,'',0,'','','',1,'','Drag and Drop',1,'Kinesthetic','Difficult','','CBSE',59,1,'2016-2017',1),(40,4,'Match the body parts with their uses.',1,'Nose',2,'Tongue',3,'Eyes',4,'Ears',5,'Hands',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'','Match the Coloum',1,'Kinesthetic','Easy','','CBSE',59,1,'2016-2017',1),(41,5,'Listen to the recording and select the scene that describes it.',1,'Eighteen',2,'47',3,'34',4,'18',0,'',0,'',0,'',0,'',0,'',0,'',1,'',2,'',3,'',4,'',0,'','','activity/audio/1_5a.mp3',1,'The correct answer is \'A picture of a sitting in the corner of the room.','Drag and Drop',1,'Auditory','Average','','CBSE',59,1,'2016-2017',1),(42,6,'Count the objects and select the correct answer.',1,'4 Cakes, 2 Caps',2,'2 Cakes, 3 Caps',3,'3 Cakes, 1 Cap',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',2,'2 Cakes, 3 Caps','Tick the Correct',1,'Visual','Difficult','','CBSE',59,1,'2016-2017',1),(43,7,'Look at the pictures and identify their names.',1,'Sea, Moon',2,'River, Sun',0,'0',0,'0',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',2,'River, Sun','Tick the Correct',1,'Visual','Easy','','CBSE',59,1,'2016-2017',1),(44,8,'Drag and drop the correct number name under each number.',1,'23',2,'47',3,'34',4,'18',0,'',0,'',0,'',0,'',0,'',0,'',1,'Forty-seven',2,'Eighteen',3,'Twenty-three',4,'Thirty-four',0,'','','',1,'23-Twenty-three\n47-Forty-seven\n34-Thirty-four\n18-Eighteen','Drag and Drop',1,'Kinesthetic','Average','','CBSE',59,1,'2016-2017',1),(45,9,'Listen to the recording and identify the flower.',1,'Rose flower',2,'Jasmine flower',3,'Sun flower',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/1_9a.mp3',3,'Picture of Sunflower','Listen and Tick',1,'Auditory','Difficult','','CBSE',59,1,'2016-2017',1),(46,1,'Listen to the recording and select which of the following objects is mentioned here.',1,'Moon',2,'Earth',3,'Sun',4,'Sea',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/3_1a.mp3',3,'Sun','Listen and Tick',3,'Auditory','Easy','','CBSE',59,1,'2016-2017',1),(47,2,'Select the name of the seasons shown here.',1,'Rainy, Spring, Winter	',2,'Summer, Rainy, Spring',3,'Rainy, Winter, Summer',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',3,'Rainy, Winter, Summer','Fill in the Blank',3,'Visual','Average','','CBSE',59,1,'2016-2017',1),(48,3,'The rainfall at a place was maximum on Monday and minimum on Tuesday during a week. ',1,'Monday',2,'Tuesday',3,'Wednesday',0,'',0,'',0,'',0,'',0,'',0,'',0,'',1,'66 mm',2,'75 mm',3,'69 mm',0,'',0,'','','',1,'Monday—75 mm\nTuesday—66 mm\nWednesday—69 mm','Unscramble and drag and drop',3,'Kinesthetic','Difficult','','CBSE',59,1,'2016-2017',1),(49,4,'Identify and drag the correct names of 3D solids in the boxes. ',1,'SPHERE',2,'CYLINDER',3,'CUBOID',4,'CUBE',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'CUBE,\r\nSPHERE,\r\nCUBOID,\r\nCYLINDER','Drag and Drop',3,'Kinesthetic','Easy','','CBSE',59,1,'2016-2017',1),(50,5,'पंक्ति को सुनें और उस दृश्य को चुनें जिस क्षण आप इस पंक्ति का प्रयोग करेंगे।',1,'Gift',2,'कोई गलती होने पर',3,'Book',4,'teach',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/3_5a.mp3',2,'कोई गलती होने पर','Listen and Tick',3,'Auditory','Average','','CBSE',59,1,'2016-2017',1),(51,6,'Write the first letter of each picture in the given boxes and spell the word formed. ',1,'G',2,'I',3,'R',4,'A',5,'F',6,'F',7,'E',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'GIRAFFE','Tick the Correct',3,'Visual','Difficult','','CBSE',59,1,'2016-2017',1),(52,7,'चित्र पहचानें और दिए गए शब्दों में लगाने वाली मात्रा के अनुरूप सही शब्द को चुनें।',1,'चांद',2,'चाँद',3,'सुँदर',4,'सुंदर',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'चाँद, सुंदर','Tick the Correct',3,'Visual','Easy','','CBSE',59,1,'2016-2017',1),(53,8,'A bee wants to reach its beehive.<br>\nDrag and drop the correct path by which it can reach its beehive.',1,'Path Image 1',2,'Path Image 2',3,'Path Image 3',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',2,'Path Image 2','Drag and Drop',3,'Kinesthetic','Average','','CBSE',59,1,'2016-2017',1),(54,9,'Listen to the name and identify it in the grid.',1,'MUD',2,'WOOD',3,'STONE',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/3_9a.mp3',1,'MUD, WOOD, STONE','Listen and solve the crossword.',3,'Auditory','Difficult','','CBSE',59,1,'2016-2017',1),(55,1,'Listen to the poem and select which of the following words is not mentioned here.',1,'Fans',2,'Players',3,'Boys',4,'Ladies',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/4_1a.mp3',4,'Ladies','Listen and Tick',4,'Auditory','Easy','','CBSE',59,1,'2016-2017',1),(56,2,'चित्र पहचानें और और उन चित्रों को चुनें जो दिए गए शब्दों के विलोम को दर्शाते हैं।',1,'दिन',2,'गन्दा',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'रात, साफ़','Tick the Correct',4,'Visual','Average','','CBSE',59,1,'2016-2017',1),(57,3,'Drag the images and their respectives names to the correct boxes in order to complete the water cycle.',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'2','Pick and Drop',4,'Kinesthetic','Difficult','','CBSE',59,1,'2016-2017',1),(58,4,'Drag and drop the given food items in the correct basket.',1,' Butter',2,'Cashewnut',3,'Honey',4,'Clove',5,'Meat',6,'Onion',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'ANIMALS : BUTTER, MEAT & HONEY,                                                                            PLANTS : CASHEWNUT, CLOVE & ONION','Drag and Drop',4,'Kinesthetic','Easy','','CBSE',59,1,'2016-2017',1),(59,5,'पंक्ति को सुनें और इसमें प्रयोग होने वाले सही शब्द को चुनें।',1,'बड़ती',2,'बरती',3,'बढ़ती',0,'',0,'',0,'',0,'',0,'',0,'',0,'',1,'',0,'',0,'',0,'',0,'','','activity/audio/4_5a.mp3',3,'बढ़ती','Select the Word',4,'Auditory','Average','','CBSE',59,1,'2016-2017',1),(60,6,'Fill in the numbers 4, 5 and 6 in the circles such that the sum of the numbers on each side of the figure is 12.',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',1,'',2,'',3,'',4,'',0,'','','',1,'4,6,5','',4,'Visual','Easy','','CBSE',59,1,'2016-2017',1),(61,7,'Write -or, -er and -our to complete the following words.',1,'Farm____',2,'Col___',3,'Sail___',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'er, our, er','Puzzle',4,'Visual','Easy','','CBSE',59,1,'2016-2017',1),(62,8,'Click on the coins and collect the maximum number of coins as per the following directions.',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'','Colouring',4,'Kinesthetic','Average','','CBSE',59,1,'2016-2017',1),(63,9,'Listen to the hint and search the animal\'s name in the crossword puzzle.',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/4_9a.mp3',1,'SNAIL','Crossword',4,'Auditory','Difficulty','','CBSE',59,1,'2016-2017',1),(64,1,'इन पंक्तियों को सुनें और उत्तर दें।',1,'जीवन',2,'ख़ुशी',3,'बचपन',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/6_1.mp3',3,'बचपन','Tick the Correct',6,'Auditory','Visual','','CBSE',59,1,'2017-2018',1),(65,2,'Solve the riddle and fill in the boxes. ',1,'H',2,'E',3,'R',4,'T',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'HEART','Fill in the boxes',6,'Visual','Average','','CBSE',59,1,'2017-2018',1),(66,3,'Read the given statement and drag and drop the letters in the blanks given in the figure correctly.',1,'Library',2,'Computer Lab',3,'Director\'s room',4,'Activity Room',0,'',0,'',0,'',0,'',0,'',0,'',1,'A',2,'B',3,'C',4,'D',0,'','','Kinesthetic',1,'','Drag and Drop',6,'Kinesthetic','Difficult','','CBSE',59,1,'2017-2018',1),(67,4,'Match the column A with column B.',1,'Eye',2,'Ear',3,'Tongue',4,'Smell',5,'Skin',0,'',0,'',0,'',0,'',0,'',1,'Auditory nerve',2,'Taste buds',3,'Pain',4,'Optic nerve',5,'Olfactory nerve','','Kinesthetic',1,'iv,i,ii,v,iii','Math the Column',6,'Kinesthetic','Easy','','CBSE',59,1,'2017-2018',1),(68,5,'Listen to the poem and select the correct answer.',1,'Prayers',2,'Father\'s Love ',3,'Preachers',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/auido/6_5.mp3',2,'Father\'s Love','Tick the Correct',6,'Auditory','Average','','CBSE',59,1,'2017-2018',1),(69,6,'Read the statement and select the correct answer.',1,'16',2,'17',3,'18',4,'19',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',4,'19','Tick the Correct',6,'Visual','Difficult','','CBSE',59,1,'2017-2018',1),(70,7,'Select the animals which are carnivores.',1,'Show here a picture of Lion.',2,'Show here a picture of Horse.',3,'Show here a picture of Giraffe.',4,'Show here a picture of Wolf.',5,'Show here a picture of Buffalo.',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',1,'1,4','Tick the Correct',6,'Visual','Easy','','CBSE',59,1,'2017-2018',1),(71,8,'Drag and drop the given words to each box correctly to make the verbs from them.',1,'Quick',2,'Modern',3,'Active',4,'Beauty',5,'Fast',6,'Magnet',7,'Liquid',8,'Diverse',0,'',0,'',1,'–en',2,'–ize',3,'–fy/ify',4,'–ate',0,'','','Kinesthetic',1,'Quicken, Fasten\nModernize, Magnetize\nBeautify, Diverse\nActivate, Liquidate','Drag and Drop',6,'Kinesthetic','Average','','CBSE',59,1,'2017-2018',1),(72,9,'Listen to the recording and answer the question.',1,'The man should listen to the songs too.',2,'The man should leave the radio on.',3,'The program will be over soon.',4,'She will listen to the radio later.',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','	activity/auido/6_9.mp3',2,'The man should leave the radio on.','Tick the Correct',6,'Auditory','Difficult','','CBSE',59,1,'2017-2018',1),(73,1,'Listen to the rhyme and select the mood of the person.',1,'Do',2,'Can',3,'Good',4,'By',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/7_1.mp3',3,'Good','Listen and Tick the Correct',7,'Auditory','Easy','','CBSE',59,1,'2017-2018',1),(74,2,'Read the statement and select the correct graph.',1,'graph1 image',2,'graph2 image',3,'graph3 image',4,'graph4 image',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',3,'graph3 image','Tick the Correct',7,'Visual','Average','','CBSE',59,1,'2017-2018',1),(75,3,'Read the given statements.',1,'A',2,'B',3,'C',4,'D',0,'',0,'',0,'',0,'',0,'',0,'',1,'B—Females who are surgeons.',2,'A—Males who are doctors.',3,'C—Males who are surgeons.',4,'D—Doctors as well as surgeons.',0,'','','Kinesthetic',1,'','Drag and Drop',7,'Kinesthetic','Difficult','','CBSE',59,1,'2017-2018',1),(76,4,'Match the events of Indian History with the years when they happened.',1,'Civil Disobedience Movement',2,'Jallianwala Bagh Massacre',3,'Non-cooperation Movement',4,'Quit India Movement',5,'Lahore Session',0,'',0,'',0,'',0,'',0,'',1,'1942',2,'1929',3,'1930',4,'1920',5,'1919','','Kinesthetic',1,'3,5,4,1,2','Match the following',7,'Kinesthetic','Easy','','CBSE',59,1,'2017-2018',1),(77,5,'इन पंक्तियों को सुनें और उत्तर दें|',1,'संज्ञा',2,'सर्वनाम',3,'विशेषण',4,'क्रिया',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/7_5.mp3',3,'विशेषण','Tick the Correct',7,'Auditory','Average','','CBSE',59,1,'2017-2018',1),(78,6,'Select the diagram which represents the relationship between Class, Students and Toppers.',1,'activity/images/7/activity6/act6_img1.jpg',2,'activity/images/7/activity6/act6_img2.jpg',3,'activity/images/7/activity6/act6_img3.jpg',4,'activity/images/7/activity6/act6_img4.jpg',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',2,'act6_img1.jpg','Tick the Correct',7,'Visual','Difficult','','CBSE',59,1,'2017-2018',1),(79,7,'Select the figure which completes the given pattern.',1,'act7_img1.jpg',2,'act7_img2.jpg',3,'act7_img3.jpg',4,'act7_img4.jpg',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',3,'act7_img3.jpg','Tick the Correct',7,'Visual','Easy','','CBSE',59,1,'2017-2018',1),(80,8,'Classify the following changes as reversible or irreversible. Drag and drop these into appropriate box. Pulling of rubber band, Cooking of rice, Boiling of water, Inflation of balloon, Falling of leaves, Curdling of milk\nGive these changes with diagrams.',1,'Pulling of rubber band',2,'Cooking of rice',3,'Boiling of water',4,' Inflation of balloon',5,'Falling of leaves',6,'Curdling of milk',0,'',0,'',0,'',0,'',1,'Reversible changes',2,'Irreversible changes',0,'',0,'',0,'','','Kinesthetic',1,'Reversible changes: Pulling of rubber band, Inflation of balloon, Boiling of water\nIrreversible change: Cooking of rice, Falling of leaves, Curdling of milk','Drag and Drop',7,'Kinesthetic','Average','','CBSE',59,1,'2017-2018',1),(81,9,'Listen to the conversation and answer the question.',1,'The girl\'s name is Neha.',2,'Both persons are meeting after three months.',3,'The girl is feeling anxious to meet the boy.',4,'The boy is feeling happy to meet the girl.  ',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/7_9.mp3',3,'The girl is feeling anxious to meet the boy.','Tick the Correct',7,'Auditory','Difficult','','CBSE',59,1,'2017-2018',1),(82,1,'Listen to the rhyme and select the mood of the person.',1,'Sympathetic',2,'Jubilant',3,'Excited',4,'Joyful',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/8_1.mp3',4,'Joyful','Tick the Correct',8,'Auditory','Easy','','CBSE',59,1,'2017-2018',1),(83,2,'Observe the given graph and select the correct answer.',1,'Delhi',2,'Jaipur',3,'Jammu',4,'Mumbai',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',3,'Jammu','Tick the Correct',8,'Visual','Average','','CBSE',59,1,'2017-2018',1),(84,3,'Study the given diagram.',1,'25',2,'14',3,'13',4,'22',5,'30',6,'17',0,'',0,'',0,'',0,'',1,'The number of engineers who are players but not authors',2,'The number of players who are authors as well as engineers',3,'The number of authors who are neither engineers nor players',0,'',0,'','','Kinesthetic',1,'14,13,30','Drag and Drop',8,'Kinesthetic','Difficult','','CBSE',59,1,'2017-2018',1),(85,4,'Match the World Heritage Sites with the states in which they are located.',1,'Humayun\'s Tomb',2,'Sun Temple',3,'Mahabodhi Temple',4,'Fatehpur Sikri',5,'Elephanta Caves',0,'',0,'',0,'',0,'',0,'',1,'Bihar',2,'Uttar Pradesh',3,'Delhi',4,'Maharashtra',5,'Odisha','','Kinesthetic',1,'3,5,1,2,4','Match the Following',8,'Kinesthetic','Easy','','CBSE',59,1,'2017-2018',1),(86,5,'इन पंक्तियों को सुनें और उत्तर दें| ',1,'फल',2,'आटा',3,'फूल',4,'पौधा',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/8_5.mp3',3,'फूल','Tick the Correct',8,'Auditory','Average','','CBSE',59,1,'2017-2018',1),(87,6,'See the given figure and select the correct answer.',1,'activity/images/8/activity6/act6_img1.png',2,'activity/images/8/activity6/act6_img2.png',3,'activity/images/8/activity6/act6_img3.png',4,'activity/images/8/activity6/act6_img4.png',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',2,'act6_img1.jpg','Tick the Correct',8,'Visual','Difficult','','CBSE',59,1,'2017-2018',1),(88,7,'The given figure is folded to form a cube. ',1,'activity/images/8/activity7/act7_img1.jpg',2,'activity/images/8/activity7/act7_img2.jpg',3,'activity/images/8/activity7/act7_img3.jpg',4,'activity/images/8/activity7/act7_img4.jpg',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','',2,'act7_img2.jpg','Tick the Correct',8,'Visual','Easy','','CBSE',59,1,'2017-2018',1),(89,8,'Drag and drop the names of the following animals according to their habitat.',1,'Polar bear',2,'Gorilla',3,'Elephant',4,'Reindeer',5,'Musk ox',6,'Orangutan',7,'Tree frog',8,'Wolf',0,'',0,'',1,'Polar Region',2,'Tropical Rainforest',0,'',0,'',0,'','','Kinesthetic',1,'Polar Region: Polar bear, Reindeer, Wolf and Musk ox\r\nTropical Rainforest: Gorilla, Elephant, Orangutan and Tree frog','Drag and Drop',8,'Kinesthetic','Average','','CBSE',59,1,'2017-2018',1),(90,9,'Listen to the conversation and answer the question.',1,'The doctor is prescribing a medicine to a patient.',2,'The patient has not gone to a qualified doctor.',3,'The patient has already come out of the disease.',4,'The doctor is going to prescribe another medicine to the patient.   ',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'','','activity/audio/8_9.mp3',3,'The patient has already come out of the disease.','Tick the Correct',8,'Auditory','Difficult','','CBSE',59,1,'2017-2018',1);
/*!40000 ALTER TABLE `mst_sept_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_share`
--

DROP TABLE IF EXISTS `mst_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_share` (
  `share_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_reference_id` bigint(11) NOT NULL,
  `share_type_id` int(5) NOT NULL,
  `share_sub_groups_id` varchar(15) NOT NULL COMMENT 'if value Exists',
  `visitor_post_id` bigint(11) NOT NULL,
  `data_post_id` int(11) NOT NULL,
  `visitor_view_id` int(11) NOT NULL,
  `total_likes` bigint(11) NOT NULL,
  `liked_user_id` varchar(500) NOT NULL,
  `total_commens` bigint(11) NOT NULL,
  `visitor_comment_id` varchar(500) NOT NULL,
  `comment_action_id` int(2) NOT NULL,
  `expire_date` date NOT NULL,
  `slug` varchar(200) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_share`
--

LOCK TABLES `mst_share` WRITE;
/*!40000 ALTER TABLE `mst_share` DISABLE KEYS */;
INSERT INTO `mst_share` VALUES (1,182,0,'',0,1,0,0,'0',0,'0',0,'0000-00-00','articles-1-182',0),(2,160,1,'',0,2,0,0,'0',1,'0,160',0,'0000-00-00','to-all-teachers-2',1),(3,160,1,'',0,3,0,1,'0,151',0,'0',0,'0000-00-00','3',1),(4,160,1,'',0,4,0,1,'0,160',2,'0,160,160',0,'0000-00-00','colours-4',1),(5,160,0,'',0,5,0,0,'0',0,'0',0,'0000-00-00','articles-5-160',0);
/*!40000 ALTER TABLE `mst_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_share_group_type`
--

DROP TABLE IF EXISTS `mst_share_group_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_share_group_type` (
  `share_group_id` int(6) NOT NULL AUTO_INCREMENT,
  `share_group_name` varchar(15) NOT NULL,
  `description` varchar(75) NOT NULL,
  `privileges` varchar(30) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`share_group_id`),
  UNIQUE KEY `share_group_id` (`share_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_share_group_type`
--

LOCK TABLES `mst_share_group_type` WRITE;
/*!40000 ALTER TABLE `mst_share_group_type` DISABLE KEYS */;
INSERT INTO `mst_share_group_type` VALUES (1,'Public','sharing contents visible only within school only','1,2,3,7',1),(2,'Private Group','Create a group as private and add members.','1,2,3,4,7',1),(3,'Self','Sharing content only visible to you.','1,2,3,4,7',1),(4,'Global','Sharing content see all to sha-adhyayan system.','7',0),(5,'Specific User','user seach in all swa-adhyayan system','1,2,3,4,7',1),(6,'Others','','',0);
/*!40000 ALTER TABLE `mst_share_group_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_state`
--

DROP TABLE IF EXISTS `mst_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_state` (
  `state_id` int(8) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(30) NOT NULL,
  `state_name_hindi` varchar(30) NOT NULL,
  `state_capital` varchar(30) NOT NULL,
  `zone_id` int(2) NOT NULL,
  `zone_name` varchar(30) NOT NULL,
  `language_code` int(3) NOT NULL,
  `mother_language` varchar(30) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_state`
--

LOCK TABLES `mst_state` WRITE;
/*!40000 ALTER TABLE `mst_state` DISABLE KEYS */;
INSERT INTO `mst_state` VALUES (1,'Andaman and Nicobar ','अण्डमान और निकोबार','Port Blair',0,'',2,'English',1),(2,'Andhra Pradesh ','आंध्र प्रदेश','Hyderabad',0,'',0,'Telugu',1),(3,'Arunachal Pradesh','अरुणाचल प्रदेश','Itanagar',0,'',0,'Monpa, Miji, Nyishi, Dafla,etc',1),(4,'Assam ','असम','Dispur',0,'',0,'Assamese',1);
/*!40000 ALTER TABLE `mst_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_student`
--

DROP TABLE IF EXISTS `mst_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_student` (
  `student_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(40) NOT NULL,
  `admission_no` varchar(40) NOT NULL,
  `admission_date` date NOT NULL,
  `aadhar_no` varchar(18) NOT NULL,
  `reference_no` varchar(35) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_type_id` int(3) NOT NULL DEFAULT '4',
  `gender` varchar(13) NOT NULL,
  `class_name` varchar(15) NOT NULL,
  `section` varchar(3) NOT NULL,
  `medium` varchar(10) NOT NULL,
  `board_name` varchar(35) NOT NULL,
  `board_id` int(4) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `caste` varchar(15) NOT NULL,
  `physical_handicap` varchar(4) NOT NULL,
  `physical_problem` varchar(15) NOT NULL,
  `house` varchar(25) NOT NULL,
  `wing` varchar(15) NOT NULL,
  `concession` varchar(15) NOT NULL,
  `sibling` varchar(4) NOT NULL,
  `sibling_name` varchar(35) NOT NULL,
  `sibling_admn_no` varchar(40) NOT NULL,
  `sibling_class` int(3) NOT NULL,
  `sibling_section` varchar(2) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `emergency_contact` varchar(15) NOT NULL,
  `mother_tongue` varchar(15) NOT NULL,
  `birth_place` varchar(35) NOT NULL,
  `parent_reference_id` bigint(11) NOT NULL,
  `parent_code` varchar(40) NOT NULL,
  `identification_mark` varchar(35) NOT NULL,
  `mother_name` varchar(35) NOT NULL,
  `mother_qualification` varchar(30) NOT NULL,
  `mother_occupation` varchar(35) NOT NULL,
  `mother_contact_no` varchar(10) NOT NULL,
  `mother_mail_id` varchar(60) NOT NULL,
  `father_name` varchar(35) NOT NULL,
  `father_qualification` varchar(30) NOT NULL,
  `father_occupation` varchar(35) NOT NULL,
  `father_contact_no` varchar(10) NOT NULL,
  `father_mail_id` varchar(60) NOT NULL,
  `guardian` varchar(35) NOT NULL,
  `guardian_mail_id` varchar(60) NOT NULL,
  `guardian_contact_no` varchar(10) NOT NULL,
  `annual_income` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city_village` varchar(50) NOT NULL,
  `block_name` varchar(25) NOT NULL,
  `district` varchar(35) NOT NULL,
  `state` varchar(35) NOT NULL,
  `pin_code` int(7) NOT NULL,
  `residence_contact` varchar(15) NOT NULL,
  `distance_from_home` int(5) NOT NULL,
  `previous_school` varchar(100) NOT NULL,
  `prev_admn_no` varchar(40) NOT NULL,
  `any_sport` varchar(25) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `discount` varchar(25) NOT NULL,
  `school_code` varchar(40) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `student_photo` varchar(150) NOT NULL,
  `edit_date` date NOT NULL,
  `edit_time` varchar(15) NOT NULL,
  `edit_user` varchar(35) NOT NULL,
  `edit_user_type` int(3) NOT NULL,
  `user_reference_id` bigint(11) NOT NULL,
  `paid_id` varchar(50) NOT NULL,
  `connection_code` varchar(35) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`admission_no`),
  UNIQUE KEY `student_id` (`student_id`),
  UNIQUE KEY `user_reference_id` (`user_reference_id`),
  CONSTRAINT `mst_student_ibfk_1` FOREIGN KEY (`user_reference_id`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_student`
--

LOCK TABLES `mst_student` WRITE;
/*!40000 ALTER TABLE `mst_student` DISABLE KEYS */;
INSERT INTO `mst_student` VALUES (82,'SWAS05170082','0006','2017-05-23','68656598545482','','Nisha','','Sharma','ash@gmail.com','2014-03-14','nisha04032014','04032014',4,'Female','7','A','English','CBSE',1,'','General','','None','','','','','','',0,'','9865897595','','','Delhi',167,'SWAS05170082P','','Shikha','','','8596578966','','Ashwani','','','9865897595','ash@gmail.com','','','',0,'','','','','Delhi',110052,'',0,'','','','','','SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:56:56pm','Rajni Khosla',1,168,'','',1),(81,'SWAS05170081','001','2017-05-23','56588697684248','','Simran','','Jain','amit@gmail.com','2014-04-14','simran01042014','01042014',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9896574514','','','Delhi',165,'SWAS05170081P','','Seema','','','9896568252','','Amit','','','9896574514','amit@gmail.com','','','',0,'','','','','Delhi',110052,'',0,'','','','','','SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:24:24pm','Rajni Khosla',1,166,'','',1),(84,'SWAS05170084','0022','2017-05-23','44853697555888','','Shruti','','Sharma','vik@gmail.com','2014-04-14','shruti01042014','01042014',4,'Female','13','A','English','CBSE',1,'','General','','None','','','','','','',0,'','8596895555','','','Delhi',171,'SWAS05170084P','','Shivani','','','8986548746','','Vikas','','','8596895555','vik@gmail.com','','','',0,'','','','','Delhi',110085,'',0,'','','','','','SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:24:24pm','Rajni Khosla',1,172,'','',1),(85,'SWAS05170085','0033','2017-05-23','66995587595444','','Tiya','','Seth','rakss@gmail.com','2014-03-14','tiya12032014','12032014',4,'Female','3','A','English','CBSE',1,'','General','','None','','','','','','',0,'','9865896789','','','',173,'SWAS05170085P','','Neelima','','','7986589677','','Rakesh','','','9865896789','rakss@gmail.com','','','',0,'','','','','Delhi',110085,'',0,'','','','','','SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:13:13pm','Rajni Khosla',1,174,'','',1),(83,'SWAS05170083','0055','2017-05-23','57896589756988','','Aarav','','Jain','amit01@gmail.com','2014-02-14','aarav09022014','09022014',4,'Male','2','A','English','CBSE',1,'','General','','None','','','','','','',0,'','9868957779','','','Delhi',169,'SWAS05170083P','','Rita','','','9868985655','','Amit','','','9868957779','amit01@gmail.com','','','',0,'','','','','Delhi',110007,'',0,'','','','','','SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:36:36pm','Rajni Khosla',1,170,'','',1),(86,'SWAS05170086','0088','2017-05-23','85986999666877','','Riya','','Kapoor','akk01@gmail.com','2014-03-14','riya14032014','14032014',4,'Female','4','A','English','CBSE',1,'','General','','None','','','','','','',0,'','9818568799','','','Delhi',175,'SWAS05170086P','','Pooja Kapoor','','','9898689555','','Akshit Kapoor','','','9818568799','akk01@gmail.com','','','',0,'','','','','Delhi',110085,'',0,'','','','','','SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:13:13pm','Rajni Khosla',1,176,'','',1),(95,'SWAS06170095','1021','2017-03-14','354525452525','','Kritika','','Chand','vipinc@gmial.com','2008-08-29','kritika29082008','29082008',4,'Female','3','A','English','CBSE',1,'','ST','','','Nehru House','General','','','','',0,'','9584854854','','','Pandav Nagar',199,'SWA1021P','NA','Deepti Chand','','','9582897925','','Vipin Chand','Post Graduate','Service','9584854854','vipinc@gmial.com','','','',0,'5337, Jawahar Nagar','Kamla Nagar','','Delhi','Delhi',110007,'9584854854',0,'','','','','','SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:06','SWA11LSPS34A',1,200,'','',1),(96,'SWAS06170096','1022','2017-04-15','354525452556','','Khushal','Singh','Yadav','santoshy@gmial.com','2007-03-24','khushal24032007','24032007',4,'Male','3','A','English','CBSE',1,'','SC','','','Gandhi House','General','','','','',0,'','6584584585','','','Dilshad Garden',201,'SWA1022P','NA','Poonam Yadav','','','9810474343','','Santosh Yadav','Graduate','Service','6584584585','santoshy@gmial.com','','','',0,'3444/250, Hansapuri Road','Tri Nagar','','Delhi','Delhi',110035,'6584584585',0,'','','','','','SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:06','SWA11LSPS34A',1,202,'','',1),(97,'SWAS06170097','1023','2017-04-14','354525452557','','Neeraj','','Sharma','akhileshs1@gmial.com','2009-03-24','neeraj24032009','24032009',4,'Male','3','A','English','CBSE',1,'','General','','','Patel House','General','','','','',0,'','6854854855','','','Dilshad Garden',203,'SWA1023P','NA','Usha Sharma','','','9818466851','','Akhilesh Sharma','Masters','Service','6854854855','akhileshs1@gmial.com','','','',0,'266, Katra Gulkhan','Sabzi Mandi','','Delhi','Delhi',110007,'6854854855',0,'','','','','','SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:06','SWA11LSPS34A',1,204,'','',1),(101,'SWAS06170101','1027','2017-05-25','354525452561','','Manisha','','Dutta','arjund@gmial.com','2008-08-24','manisha24082008','24082008',4,'Male','4','A','English','CBSE',1,'','ST','','','Patel House','General','','','','',0,'','9685968555','','','Kailash Colony',211,'SWA1027P','NA','Manushree Dutta','','','9650233666','','Arjun Dutta','Post Graduate','Service','9685968555','arjund@gmial.com','','','',0,'House No-B - 4 A/ 6 A','Rana Pratap Bagh','','Delhi','Delhi',110007,'9685968555',0,'','','','','','SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:06','SWA11LSPS34A',1,212,'','',1),(102,'SWAS06170102','1028','2017-04-20','354525452562','','Shivani','','Goyal','piyushg@gmial.com','2009-03-30','shivani30032009','30032009',4,'Female','3','A','English','CBSE',1,'','General','','','Gandhi House','General','','','','',0,'','9857858785','','','Kailash Colony',213,'SWA1028P','NA','Neha Goyal','','','8882301905','','Piyush Goyal','Graduate','Business','9857858785','piyushg@gmial.com','','','',0,'854/56, Lekhu Nagar','Tri Nagar','','Delhi','Delhi',110035,'9857858785',0,'','','','','','SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:06','SWA11LSPS34A',1,214,'','',1),(87,'SWAS05170087','123456','2017-05-23','458796','','Arushi','','Gupta','dikistation@gmail.com','2012-09-12','arushi11092012','11092012',4,'Male','2','A','English','CBSE',1,'','General','','None','Sai Villa','','','','','',0,'','9876543210','','','Delhi',177,'SWAS05170087P','','Radhika','','','0123456789','','Rajesh Gupta','','','9876543210','dikistation@gmail.com','','','',0,'','','','','Delhi',110034,'',0,'','','','','','SWA11DIPS85','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:10:10pm','Seema Awasthi',1,178,'','',1),(93,'SWAS06170093','126457658','2017-06-08','14256347474666','','Adhyayan','','Gupta','sugandh@swaadhyayan.com','2008-03-08','adhyayan03032008','03032008',4,'Male','5','A','English','CBSE',1,'','General','','','','','','','','',0,'','7654568765','','','',192,'SWAS06170093P','','Shalini Gupta','','','9887654334','','Rajeev Gupta','bed','Buisnessman','7654568765','sugandh@swaadhyayan.com','','','',0,'vikaspuri','','','West Delhi','Delhi',110018,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/126457658_s2.jpg','2017-06-08','04:57:57pm','Rajiv Gupta',1,193,'','',1),(80,'SWAS05170080','1536274765768','2017-05-22','12536275347565','','Madhvi','','Kapahi','sugandh@swaadhyayan.com','2009-09-09','madhvi09092009','09092009',4,'Female','3','A','English','CBSE',1,'','General','','None','','','','','','',0,'','9876435677','','','',161,'SWAS05170080P','','Meenal','','','8976521234','','Suresh Kapahi','','','9876435677','sugandh@swaadhyayan.com','','','',0,'','','','','Delhi',110018,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/1536274765768_s1.jpg','2017-05-22','02:53:53pm','Rajiv Gupta',1,162,'','',1),(92,'SWAS05170092','2154','2017-05-30','98568785485455','','Kanika','','Jain','yashpr2001@gmail.com','2004-03-14','kanika12032014','12032014',4,'Female','8','A','Hindi','CBSE',1,'','General','','None','Nehru House','','','','','',0,'','9658548548','','','New Delhi',189,'SWAS05170092P','Scar on forehead','Kamna Jain','','House Wife','8547858587','kamnajain@gmail.com','Kapil Jain','Post graduate','Service','9658548548','yashpr2001@gmail.com','Kapil Jain','kapiljain@gmail.com','9658548548',785485,'Anand Vihar Extension','Opp Ram Vihar','','East Delhi','Delhi',110092,'3562552545',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/2154_s7.jpg','2017-05-30','04:43:43pm','Rajiv Gupta',1,190,'','',1),(71,'SWAS05170071','248','2017-04-15','4568971321745','','Abhinav','','Rana','Abhinav72@gbdips.com','2007-05-09','abhinav09052007','09052007',4,'Male','5','A','English','CBSE',1,'','General','','','','','','','','',0,'','9891042516','','','Ashok Vihar',141,'SWA248P','NA','Ramna Rana','','','9818666245','','Abhilash Rana','','','9891042516','Abhinav72@gbdips.com','','','',0,'House No-C - 5/168','Lawrence Road','','Delhi','Delhi',110035,'9891042516',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,142,'','',1),(76,'SWAS05170076','256486632','2017-05-16','785696','','Ritul','','Acharya','pawan01@gmail.com','2012-05-12','ritul16052012','16052012',4,'Male','1','B','English','CBSE',1,'','General','','None','None','','','','','',0,'','9876543210','','','India',152,'SWAS05170076P','None','Paromita Mukherjee  ','','Home Maker','9876543210','paro01@gmail.com','Pawan Acharya','Graduate','Service','9876543210','pawan01@gmail.com','','','',2147483647,'','','','','Delhi',110006,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-16','04:06:06pm','Rajiv Gupta',1,153,'','',1),(72,'SWAS05170072','262','2017-04-14','4568971321746','','Rehaan','','Chopra','Rehaan73@gbdips.com','2007-08-15','rehaan15082007','15082007',4,'Male','7','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811196978','','','Ashok Vihar',143,'SWA262P','NA','Sonali Chopra','','','7065759493','','Sachin Chopra','','','9811196978','Rehaan73@gbdips.com','','','',0,'House No-A-8/38','Rana Partap Bagh','','Delhi','Delhi',110007,'9811196978',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:16','SWA482P',1,144,'','',1),(73,'SWAS05170073','285','2017-04-15','4568971321747','','Shaurya','','Sharma','Shaurya74@gbdips.com','2007-10-16','shaurya16102007','16102007',4,'Male','5','A','English','CBSE',1,'','General','','','','','','','','',0,'','9810966718','','','Ashok Vihar',145,'SWA285P','NA','Jyoti Sharma','','','9654364316','','Rajiv Sharma','','','9810966718','Shaurya74@gbdips.com','','','',0,'House No-A - 2/128 A','Lawrence Raod','','Delhi','Delhi',110035,'9810966718',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:16','SWA482P',1,146,'','',1),(74,'SWAS05170074','296','2017-04-14','4568971321748','','Yug','','Sharma','Yug75@gbdips.com','2007-10-16','yug16102007','16102007',4,'Male','5','A','English','CBSE',1,'','General','','','','','','','','',0,'','9899309859','','','Ashok Vihar',147,'SWA296P','NA','Roopa Sharma','','','9899590636','','Mahendra Sharma','','','9899309859','Yug75@gbdips.com','','','',0,'House No-A - 355/2','Shastri Nagar','','Delhi','Delhi',110052,'9899309859',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:16','SWA482P',1,148,'','',1),(59,'SWAS05170059','316','2017-04-15','4568971321733','','Siddhant','','Chauhan','Siddhant60@gbdips.com','2009-03-24','siddhant24032009','24032009',4,'Male','3','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811073403','','','Ashok Vihar',117,'SWA316P','NA','Poonam Thakur','','','9810474343','','Gajender Singh','','','9811073403','Siddhant60@gbdips.com','','','',0,'3444/250, Hansapuri Road','Tri Nagar','','Delhi','Delhi',110035,'9811073403',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,118,'','',1),(60,'SWAS05170060','317','2017-04-14','4568971321734','','Samarth','','Kumar','Samarth61@gbdips.com','2008-01-06','samarth06012008','06012008',4,'Male','6','A','English','CBSE',1,'','General','','','','','','','','',0,'','8745851533','','','Ashok Vihar',119,'SWA317P','NA','Usha Kumar','','','9818466851','','Sunil Kumar','','','8745851533','Samarth61@gbdips.com','','','',0,'266, Katra Gulkhan','Sabzi Mandi','','Delhi','Delhi',110007,'8745851533',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,120,'','',1),(61,'SWAS05170061','318','2017-04-15','4568971321735','','Hitanshu','','Jain','Hitanshu62@gbdips.com','2008-10-22','hitanshu22102008','22102008',4,'Male','4','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811596038','','','Ashok Vihar',121,'SWA318P','NA','Karishma Jain','','','9716408641','','Naveen Jain','','','9811596038','Hitanshu62@gbdips.com','','','',0,'C - 2/130, Phase - II','Ashok Vihar','','Delhi','Delhi',110052,'9811596038',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,122,'','',1),(78,'SWAS05170078','3224','2017-05-19','97698767567464','','Madhur','','Gupta','mail.madhurg@gmail.com','2008-10-08','madhur01102008','01102008',4,'Male','6','A','English','CBSE',1,'','General','','None','','','','','','',0,'','9821121662','','','Delhi',156,'SWAS05170078P','','Khushi Gupta','','','9821121662','khushi@gmail.com','I S Gupta','MCA','Salaried','9821121662','mail.madhurg@gmail.com','','','',1000000000,'','','','','Delhi',110001,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-19','12:22:22pm','Rajiv Gupta',1,157,'','',1),(62,'SWAS05170062','323','2017-03-14','4568971321736','','Sanskriti','','Chauhan','Sanskriti63@gbdips.com','2008-12-26','sanskriti26122008','26122008',4,'Female','4','A','English','CBSE',1,'','General','','','','','','','','',0,'','9711519050','','','Ashok Vihar',123,'SWA323P','NA','Kavita Chauhan','','','9868074759','','Virender Chauhan','','','9711519050','Sanskriti63@gbdips.com','','','',0,'C - 6, New Cottage Road','Adarsh Nagar','','Delhi','Delhi',110033,'9711519050',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,124,'','',1),(63,'SWAS05170063','329','2017-04-19','4568971321737','','Anurag','Kumar','Pandey','Anurag64@gbdips.com','2008-05-15','anurag15052008','15052008',4,'Male','6','A','English','CBSE',1,'','General','','','','','','','','',0,'','9810204312','','','Ashok Vihar',125,'SWA329P','NA','Neetu Pandey','','','9911982867','','Akhilesh Kumar Pandey','','','9810204312','Anurag64@gbdips.com','','','',0,'House No-C-4/103 B','Lawrence Road','','Delhi','Delhi',110035,'9810204312',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,126,'','',1),(64,'SWAS05170064','343','2017-05-25','4568971321738','','Aditie','','Jain','Aditie65@gbdips.com','2008-08-24','aditie24082008','24082008',4,'Female','4','A','English','CBSE',1,'','General','','','','','','','','',0,'','9871033666','','','Ashok Vihar',127,'SWA343P','NA','Manushree Bhargava','','','9650233666','','Manoj Kumar Jain','','','9871033666','Aditie65@gbdips.com','','','',0,'House No-B - 4 A/ 6 A','Rana Pratap Bagh','','Delhi','Delhi',110007,'9871033666',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,128,'','',1),(65,'SWAS05170065','344','2017-04-20','4568971321739','','Ishika','','Bansal','Ishika66@gbdips.com','2009-03-30','ishika30032009','30032009',4,'Female','3','A','English','CBSE',1,'','General','','','','','','','','',0,'','9582239606','','','Ashok Vihar',129,'SWA344P','NA','Neha Bansal','','','8882301905','','Kamal Bansal','','','9582239606','Ishika66@gbdips.com','','','',0,'854/56, Lekhu Nagar','Tri Nagar','','Delhi','Delhi',110035,'9582239606',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,130,'','',1),(66,'SWAS05170066','346','2017-03-19','4568971321740','','Kanav','','Rathore','Kanav67@gbdips.com','2008-10-06','kanav06102008','06102008',4,'Male','4','A','English','CBSE',1,'','General','','','','','','','','',0,'','9582379700','','','Ashok Vihar',131,'SWA346P','NA','Kajal Rathore','','','9210765537','','Deepak Rathore','','','9582379700','Kanav67@gbdips.com','','','',0,'House No-17','Anand Nagar','','Delhi','Delhi',110035,'9582379700',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,132,'','',1),(67,'SWAS05170067','349','2017-03-14','4568971321741','','Tiya','','Kadam','Tiya68@gbdips.com','2008-08-25','tiya25082008','25082008',4,'Female','6','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811437868','','','Ashok Vihar',133,'SWA349P','NA','Vandana Kadam','','','8586000558','','Yachin Kadam','','','9811437868','Tiya68@gbdips.com','','','',0,'C - 113, Pocket-D, Phase- III','Ashok Vihar','','Delhi','Delhi',110052,'9811437868',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,134,'','',1),(68,'SWAS05170068','350','2017-04-15','4568971321742','','Yanya','','Garg','Yanya69@gbdips.com','2008-05-11','yanya11052008','11052008',4,'Female','4','A','English','CBSE',1,'','General','','','','','','','','',0,'','9873400872','','','Ashok Vihar',135,'SWA350P','NA','Shalu Garg','','','7011559401','','Charat Ram Garg','','','9873400872','Yanya69@gbdips.com','','','',0,'House No-17/19','Shakti Nagar','','Delhi','Delhi',110052,'9873400872',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,136,'','',1),(69,'SWAS05170069','359','2017-04-14','4568971321743','','Pratham','','Kapoor','Pratham70@gbdips.com','2009-02-13','pratham13022009','13022009',4,'Male','3','A','English','CBSE',1,'','General','','','','','','','','',0,'','9999962235','','','Ashok Vihar',137,'SWA359P','NA','Sakshi Kapoor','','','9873300795','','Ujwal Kapoor','','','9999962235','Pratham70@gbdips.com','','','',0,'552, Phase - IV , Nimri Colony','Ashok Vihar','','Delhi','Delhi',110052,'9999962235',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,138,'','',1),(88,'SWAS05170088','374546','2017-05-23','23675867989089','','Vivek','','Panwar','sugandh@swaadhyayan.com','2014-04-14','vivek01042014','01042014',4,'Male','4','A','English','CBSE',1,'','General','','None','','','','','','',0,'','3454678676','','','',180,'SWAS05170088P','','Veena','','','8765432456','','Sgdhsfhj','','','3454678676','sugandh@swaadhyayan.com','','','',0,'','','','','Chandigarh',345678,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','05:54:54pm','Rajiv Gupta',1,181,'','',1),(55,'SWAS05170055','384','2017-05-25','4568971321729','','Bhuvi','','Gupta','Bhuvi56@gbdips.com','2010-01-14','bhuvi14012010','14012010',4,'Female','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9711725524','','','Ashok Vihar',109,'SWA384P','NA','Meenu Gupta','','','8447524224','','Parveen Gupta','','','9711725524','Bhuvi56@gbdips.com','','','',0,'House No-C - 5/50','Keshav Puram','','Delhi','Delhi',110035,'9711725524',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,110,'','',1),(56,'SWAS05170056','388','2017-04-20','4568971321730','','Gauransh','','Chopra','Gauransh57@gbdips.com','2009-10-14','gauransh14102009','14102009',4,'Male','3','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811196979','','','Ashok Vihar',111,'SWA388P','NA','Chopra','','','9958481646','','Sandeep Chopra','','','9811196979','Gauransh57@gbdips.com','','','',0,'House No-A - 1','Rana Partap Bagh','','Delhi','Delhi',110007,'9811196979',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,112,'','',1),(35,'SWAS05170035','417','2017-03-14','4568971321709','','Gaurmita','','Sharma','Gaurmita36@gbdips.com','2010-08-27','gaurmita27082010','27082010',4,'Female','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','7291821181','','','Ashok Vihar',69,'SWA417P','NA','Namita Sharma','','','9999319207','','Gaurav Sharma','','','7291821181','Gaurmita36@gbdips.com','','','',0,'House No-L-20','Pratap Nagar','','Delhi','Delhi',110007,'7291821181',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,70,'','',1),(36,'SWAS05170036','418','2017-04-19','4568971321710','','Abhay','Singh','Chauhan','Abhay37@gbdips.com','2011-10-04','abhay04102011','04102011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811073403','','','Ashok Vihar',71,'SWA418P','NA','Poonam Thakur','','','9810474343','','Gajender Pal Singh Chauhan','','','9811073403','Abhay37@gbdips.com','','','',0,'3444/250, Hansapuri Road','Tri Nagar','','Delhi','Delhi',110035,'9811073403',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,72,'','',1),(37,'SWAS05170037','420','2017-05-25','4568971321711','','Aarav','','Bisht','Aarav38@gbdips.com','2010-08-12','aarav12082010','12082010',4,'Male','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9899676866','','','Ashok Vihar',73,'SWA420P','NA','Bhanu Bisht','','','9582432381','','Vijay Bisht','','','9899676866','Aarav38@gbdips.com','','','',0,'House No-B P -147','Shalimar Bagh','','Delhi','Delhi',110088,'9899676866',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,74,'','',1),(38,'SWAS05170038','423','2017-04-20','4568971321712','','Sidhant','','Baldewa','Sidhant39@gbdips.com','2010-10-10','sidhant10102010','10102010',4,'Male','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811020811','','','Ashok Vihar',75,'SWA423P','NA','Sneha Baldewa','','','7838301201','','Vinod Baldewa','','','9811020811','Sidhant39@gbdips.com','','','',0,'House No-94','Vivekanand Puri','','Delhi','Delhi',110007,'9811020811',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,76,'','',1),(39,'SWAS05170039','426','2017-03-19','4568971321713','','Atharv','','Sharma','Atharv40@gbdips.com','2010-07-05','atharv05072010','05072010',4,'Male','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9311500700','','','Ashok Vihar',77,'SWA426P','NA','Himanshi Sharma','','','9311505700','','Manish Sharma','','','9311500700','Atharv40@gbdips.com','','','',0,'House No-C-8/266','Lawrence Raod','','Delhi','Delhi',110035,'9311500700',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,78,'','',1),(40,'SWAS05170040','429','2017-03-14','4568971321714','','Arshjyot','Singh','Gill','Arshjyot41@gbdips.com','2010-03-08','arshjyot08032010','08032010',4,'Male','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9810289657','','','Ashok Vihar',79,'SWA429P','NA','Harpreet Kaur','','','9810387723','','Sukhvinder Singh','','','9810289657','Arshjyot41@gbdips.com','','','',0,'405, S F S Flats, Phase - IV','Ashok Vihar','','Delhi','Delhi',110052,'9810289657',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,80,'','',1),(41,'SWAS05170041','430','2017-04-15','4568971321715','','Aarav','','Jain','Aarav42@gbdips.com','2010-07-17','aarav17072010','17072010',4,'Male','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811169787','','','Ashok Vihar',81,'SWA430P','NA','Nidhi Jain','','','9899569787','','Amit Jain','','','9811169787','Aarav42@gbdips.com','','','',0,'House No-B-8/3','Rana Pratap Bagh','','Delhi','Delhi',110009,'9811169787',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,82,'','',1),(42,'SWAS05170042','436','2017-04-14','4568971321716','','Nihaal','','Chopra','Nihaal43@gbdips.com','2010-11-05','nihaal05112010','05112010',4,'Male','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811196978','','','Ashok Vihar',83,'SWA436P','NA','Sonali Chopra','','','7065759493','','Sachin Chopra','','','9811196978','Nihaal43@gbdips.com','','','',0,'House No-A-8/38','Rana Pratap Bagh','','Delhi','Delhi',110007,'9811196978',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,84,'','',1),(43,'SWAS05170043','440','2017-04-15','4568971321717','','Yashika','','Chhajer','Yashika44@gbdips.com','2010-12-11','yashika11122010','11122010',4,'Female','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9013549981','','','Ashok Vihar',85,'SWA440P','NA','Pinku','','','9654869710','','Hulash Chhajer','','','9013549981','Yashika44@gbdips.com','','','',0,'A-133, Phase - II','Ashok Vihar','','Delhi','Delhi',110052,'9013549981',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,86,'','',1),(44,'SWAS05170044','443','2017-03-14','4568971321718','','Ridhima','','Malyan','Ridhima45@gbdips.com','2011-02-22','ridhima22022011','22022011',4,'Female','2','A','English','CBSE',1,'','General','','','','','','','','',0,'','8860556656','','','Ashok Vihar',87,'SWA443P','NA','Neha','','','8860565659','','Tarun Kumar','','','8860556656','Ridhima45@gbdips.com','','','',0,'W P-293, Wazirpur Village','Ashok Vihar','','Delhi','Delhi',110052,'8860556656',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,88,'','',1),(45,'SWAS05170045','445','2017-04-19','4568971321719','','Krishna','','Kumar','Krishna46@gbdips.com','2010-04-28','krishna28042010','28042010',4,'Female','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9999119469','','','Ashok Vihar',89,'SWA445P','NA','Shalini','','','9999119489','','Ashu Kumar','','','9999119469','Krishna46@gbdips.com','','','',0,'House No-A-816','Shastri Nagar','','Delhi','Delhi',110052,'9999119469',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,90,'','',1),(46,'SWAS05170046','449','2017-05-25','4568971321720','','Pragyan','','Rishi','Pragyan47@gbdips.com','2011-04-03','pragyan03042011','03042011',4,'Male','2','A','English','CBSE',1,'','General','','','','','','','','',0,'','9910747788','','','Ashok Vihar',91,'SWA449P','NA','Archana Rishi','','','9818707576','','Neelish Rishi','','','9910747788','Pragyan47@gbdips.com','','','',0,'58 C, Block - B A, Phase - I','Ashok Vihar','','Delhi','Delhi',110052,'9910747788',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,92,'','',1),(77,'SWAS05170077','45245','2017-05-18','5552545','','Sandeep','','Kuar','sanjay@gmail.com','2005-05-05','sandeep05052005','05052005',4,'Male','5','A','English','CBSE',1,'','','','None','','','','','','',0,'','8547854855','','','Ninital',154,'SWAS05170077P','','Sangeeta Saini','','House Wife','9584554855','sangeeta@gmail.com','Sanjay Saini','','','8547854855','sanjay@gmail.com','','','',0,'','','','','Sibling Class',110095,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-18','12:05:05pm','Rajiv Gupta',1,155,'','',1),(47,'SWAS05170047','455','2017-04-20','4568971321721','','Rayyaan','','Sadiq','Rayyaan48@gbdips.com','2010-10-20','rayyaan20102010','20102010',4,'Male','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9873195327','','','Ashok Vihar',93,'SWA455P','NA','Mehuish Sadiq','','','9999685941','','Mohd Sadiq','','','9873195327','Rayyaan48@gbdips.com','','','',0,'7108, Beri Wala Bagh','Azad Market','','Delhi','Delhi',110006,'9873195327',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,94,'','',1),(90,'SWAS05170090','4556687','2017-05-29','56678544332567','','Ansh','','Sharma','rohit@gmail. com','2012-12-12','ansh12122012','12122012',4,'Male','4','A','Hindi','CBSE',1,'','General','','','','','','','','',0,'','9876543256','','','',185,'SWAS05170090P','','Aroma Sharma','','','8976543276','','Rohit Sharma','','','9876543256','rohit@gmail. com','','','',0,'','','','','Delhi',345654,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-29','01:25:25pm','Rajiv Gupta',1,186,'','',1),(48,'SWAS05170048','465','2017-03-19','4568971321722','','Viraj','','Vohra','Viraj49@gbdips.com','2010-10-08','viraj08102010','08102010',4,'Male','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','8558990357','','','Ashok Vihar',95,'SWA465P','NA','Monica Vohra','','','8588885117','','Vikas Vohra','','','8558990357','Viraj49@gbdips.com','','','',0,'C-9, D D A Flats, Phase - III','Ashok Vihar','','Delhi','Delhi',110052,'8558990357',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,96,'','',1),(49,'SWAS05170049','466','2017-03-14','4568971321723','','Ahana','','Arora','Ahana50@gbdips.com','2011-02-22','ahana22022011','22022011',4,'Female','2','A','English','CBSE',1,'','General','','','','','','','','',0,'','9810735354','','','Ashok Vihar',97,'SWA466P','NA','Bhawna Arora','','','8826307730','','Gaurav Arora','','','9810735354','Ahana50@gbdips.com','','','',0,'B-20, Shakti Nagar Extension, Phase- III','Ashok Vihar','','Delhi','Delhi',110052,'9810735354',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,98,'','',1),(50,'SWAS05170050','468','2017-04-15','4568971321724','','Madhav','','Walia','Madhav51@gbdips.com','2010-07-20','madhav20072010','20072010',4,'Male','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9873032009','','','Ashok Vihar',99,'SWA468P','NA','Ritu','','','9910666388','','Anand','','','9873032009','Madhav51@gbdips.com','','','',0,'House No-2/87','Roop Nagar','','Delhi','Delhi',110007,'9873032009',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,100,'','',1),(1,'SWAS05170001','477','2017-05-25','4568971321675','','Nimisha','','Bajaj','Nimisha2@gbdips.com','2011-12-22','nimisha22122011','22122011',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9810464251','','','Ashok Vihar',1,'SWA477P','NA','Veena Bajaj','','','9999195670','','Pankaj Bajaj','','','9810464251','Nimisha2@gbdips.com','','','',0,'308/2, Street No-5','Bagh Kare Khan','','Delhi','New Delhi',110007,'9810464251',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:01','SWA482P',1,2,'','',1),(18,'SWAS05170018','478','2017-04-19','4568971321692','','Jaynt','','Sharma','Jaynt19@gbdips.com','2011-11-29','jaynt29112011','29112011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811118762','','','Ashok Vihar',35,'SWA478P','NA','Aashima Sharma','','','8447246487','','Shashank Sharma','','','9811118762','Jaynt19@gbdips.com','','','',0,'House No-B-56','Derawal Nagar','','Delhi','New Delhi',110007,'9811118762',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,36,'','',1),(2,'SWAS05170002','480','2017-04-20','4568971321676','','Mohit','','Batra','Mohit3@gbdips.com','2011-04-23','mohit23042011','23042011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9717937632','','','Ashok Vihar',3,'SWA480P','NA','Sapna Batra','','','7529935529','','Amit Batra','','','9717937632','Mohit3@gbdips.com','','','',0,'A-129, Lok Vihar','Pitampura','','Delhi','New Delhi',110035,'9717937632',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:02','SWA482P',1,4,'','',1),(3,'SWAS05170003','482','2017-03-19','4568971321677','','Ansh','','Gupta','Ansh4@gbdips.com','2011-05-25','ansh25052011','25052011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9899290789','','','Ashok Vihar',5,'SWA482P','NA','Mamta Gupta','','','9212745748','','Sachin Gupta','','','9899290789','Ansh4@gbdips.com','','','',0,'923 A/ 60, Lekhu Nagar','Tri Nagar','','Delhi','New Delhi',110035,'9899290789',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:02','SWA482P',1,6,'','',1),(4,'SWAS05170004','483','2017-03-14','4568971321678','','Neha','','Marwari','Neha5@gbdips.com','2011-03-11','neha11032011','11032011',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9990582122','','','Ashok Vihar',7,'SWA483P','NA','Paveen','','','9717708135','','Samer','','','9990582122','Neha5@gbdips.com','','','',0,'House No-B-1471','Shastri Nagar','','Delhi','New Delhi',110052,'9990582122',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:02','SWA482P',1,8,'','',1),(19,'SWAS05170019','484','2017-05-25','4568971321693','','Lakshita','','Sharma','Lakshita20@gbdips.com','2011-06-27','lakshita27062011','27062011',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9910392202','','','Ashok Vihar',37,'SWA484P','NA','Shilpa Munjal','','','9899317930','','Mahesh Sharma','','','9910392202','Lakshita20@gbdips.com','','','',0,'House No-W Z-1696','Rani Bagh','','Delhi','New Delhi',110034,'9910392202',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,38,'','',1),(5,'SWAS05170005','485','2017-04-15','4568971321679','','Mishika','','Mahajan','Mishika6@gbdips.com','2011-05-29','mishika29052011','29052011',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9891909261','','','Ashok Vihar',9,'SWA485P','NA','Monika Mahajan','','','9891604514','','Ashish Mahajan','','','9891909261','Mishika6@gbdips.com','','','',0,'House No-C-7/229 A','Lawrence Road','','Delhi','New Delhi',110035,'9891909261',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:03','SWA482P',1,10,'','',1),(20,'SWAS05170020','491','2017-04-20','4568971321694','','Saatwan','','Kumar','Saatwan21@gbdips.com','2011-07-16','saatwan16072011','16072011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811036711','','','Ashok Vihar',39,'SWA491P','NA','Richa Kumar','','','9873236791','','Nitin Kumar','','','9811036711','Saatwan21@gbdips.com','','','',0,'House No-B D- 56','Pitampura','','Delhi','New Delhi',110034,'9811036711',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,40,'','',1),(21,'SWAS05170021','496','2017-03-19','4568971321695','','Angel','','Sharma','Angel22@gbdips.com','2011-11-21','angel21112011','21112011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9999419811','','','Ashok Vihar',41,'SWA496P','NA','Pooja Sharma','','','9811560818','','Rajeev Sharma','','','9999419811','Angel22@gbdips.com','','','',0,'3674/7, Narang Colony','Tri Nagar','','Delhi','New Delhi',110034,'9999419811',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,42,'','',1),(22,'SWAS05170022','497','2017-03-14','4568971321696','','Samarth','','Mishra','Samarth23@gbdips.com','2012-01-27','samarth27012012','27012012',4,'Male','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9999774105','','','Ashok Vihar',43,'SWA497P','NA','Reema Mishra','','','9873956546','','Rahul Mishra','','','9999774105','Samarth23@gbdips.com','','','',0,'A-2/28, Shakti Nagar, Phase-III','Ashok Vihar','','Delhi','New Delhi',110035,'9999774105',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,44,'','',1),(6,'SWAS05170006','498','2017-04-14','4568971321680','','Lavanya','','Arora','Lavanya7@gbdips.com','2011-09-16','lavanya16092011','16092011',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9210558587','','','Ashok Vihar',11,'SWA498P','NA','Neetu Arora','','','9289023082','','Neeraj Arora','','','9210558587','Lavanya7@gbdips.com','','','',0,'House No-B-47','New Gupta Colony','','Delhi','New Delhi',110009,'9210558587',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:03','SWA482P',1,12,'','',1),(23,'SWAS05170023','499','2017-04-15','4568971321697','','Saisha','','Chatwal','Saisha24@gbdips.com','2011-01-13','saisha13012011','13012011',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9310363100','','','Ashok Vihar',45,'SWA499P','NA','Heena Chatwal','','','9999816350','','Naveen Chatwal','','','9310363100','Saisha24@gbdips.com','','','',0,'146, Bharat Nagar','Ashok Vihar','','Delhi','New Delhi',110052,'9310363100',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,46,'','',1),(24,'SWAS05170024','501','2017-04-14','4568971321698','','Ayaan','','Jindal','Ayaan25@gbdips.com','2011-04-28','ayaan28042011','28042011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9311242233','','','Ashok Vihar',47,'SWA501P','NA','Monika Jindal','','','9911255635','','Ram Gopal','','','9311242233','Ayaan25@gbdips.com','','','',0,'1/8, Roop Nagar','Shakti Nagar','','Delhi','New Delhi',110007,'9311242233',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,48,'','',1),(25,'SWAS05170025','504','2017-04-15','4568971321699','','Kashvi','','Bhatia','Kashvi26@gbdips.com','2011-10-15','kashvi15102011','15102011',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811937132','','','Ashok Vihar',49,'SWA504P','NA','Shipra Bhatia','','','9999282893','','Vikas Bhatia','','','9811937132','Kashvi26@gbdips.com','','','',0,'1376, Dr Mukherjee Nagar','Mukherjee Nagar','','Delhi','New Delhi',110009,'9811937132',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,50,'','',1),(7,'SWAS05170007','505','2017-04-15','4568971321681','','Jia','George','Swamy','Jia8@gbdips.com','2012-01-18','jia18012012','18012012',4,'Female','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','8588858029','','','Ashok Vihar',13,'SWA505P','NA','Neha George Swamy','','','9910500384','','Joy George Swamy','','','8588858029','Jia8@gbdips.com','','','',0,'B-4/14, Phase - II','Ashok Vihar','','Delhi','New Delhi',110052,'8588858029',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:03','SWA482P',1,14,'','',1),(26,'SWAS05170026','506','2017-03-14','4568971321700','','Mayra','','Kwatra','Mayra27@gbdips.com','2012-01-24','mayra24012012','24012012',4,'Female','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9891357317','','','Ashok Vihar',51,'SWA506P','NA','Pooja Kwatra','','','9999187317','','Manoj Kwatra','','','9891357317','Mayra27@gbdips.com','','','',0,'House No- I-17','Pratap Nagar','','Delhi','New Delhi',110007,'9891357317',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,52,'','',1),(8,'SWAS05170008','507','2017-03-14','4568971321682','','Advik','','Jain','Advik9@gbdips.com','2012-02-28','advik28022012','28022012',4,'Male','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9891261433','','','Ashok Vihar',15,'SWA507P','NA','Anu Jain','','','9718065428','','Nitin Jain','','','9891261433','Advik9@gbdips.com','','','',0,'39/23, I Floor','Shakti Nagar','','Delhi','New Delhi',110007,'9891261433',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:04','SWA482P',1,16,'','',1),(27,'SWAS05170027','510','2017-04-19','4568971321701','','Shivaansh','','Anand','Shivaansh28@gbdips.com','2012-02-20','shivaansh20022012','20022012',4,'Male','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9873702292','','','Ashok Vihar',53,'SWA510P','NA','Menka Anand','','','9711866012','','Neeraj Anand','','','9873702292','Shivaansh28@gbdips.com','','','',0,'76, Vivekanand Puri','Sarai Rohilla','','Delhi','Delhi',110007,'9873702292',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,54,'','',1),(28,'SWAS05170028','513','2017-05-25','4568971321702','','Abhinav','','Sharma','Abhinav29@gbdips.com','2011-07-19','abhinav19072011','19072011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9953058716','','','Ashok Vihar',55,'SWA513P','NA','Neha Sharma','','','8368927365','','Varun Kr Sharma','','','9953058716','Abhinav29@gbdips.com','','','',0,'House No-281','Lawrence Road','','Delhi','Delhi',110035,'9953058716',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,56,'','',1),(9,'SWAS05170009','515','2017-04-19','4568971321683','','Mayank','','Prasad','Mayank10@gbdips.com','2011-09-17','mayank17092011','17092011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','8860490571','','','Ashok Vihar',17,'SWA515P','NA','Sunita Prasad','','','9711072875','','Ishwari Prasad','','','8860490571','Mayank10@gbdips.com','','','',0,'J- III 3111, J J Colony','Wazirpur','','Delhi','New Delhi',110052,'8860490571',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:04','SWA482P',1,18,'','',1),(29,'SWAS05170029','521','2017-04-20','4568971321703','','Deetya','','Aggarwal','Deetya30@gbdips.com','2012-01-27','deetya27012012','27012012',4,'Female','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9999880770','','','Ashok Vihar',57,'SWA521P','NA','Paridhi Aggarwal','','','9999883906','','Bharat Aggarwal','','','9999880770','Deetya30@gbdips.com','','','',0,'70, Tagore Park','Model Town-I','','Delhi','Delhi',110009,'9999880770',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,58,'','',1),(10,'SWAS05170010','522','2017-05-25','4568971321684','','Vidyut','','Kalra','Vidyut11@gbdips.com','2012-03-27','vidyut27032012','27032012',4,'Male','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811406435','','','Ashok Vihar',19,'SWA522P','NA','Suhani Kalra','','','9811406569','','Ritesh Kalra','','','9811406435','Vidyut11@gbdips.com','','','',0,'86, Bharat Nagar, Phase - IV','Ashok Vihar','','Delhi','New Delhi',110052,'9811406435',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:04','SWA482P',1,20,'','',1),(11,'SWAS05170011','525','2017-04-20','4568971321685','','Cherish','','Takkar','Cherish12@gbdips.com','2012-02-02','cherish02022012','02022012',4,'Male','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9350756920','','','Ashok Vihar',21,'SWA525P','NA','Jyoti Takkar','','','9350370999','','Mukesh Takkar','','','9350756920','Cherish12@gbdips.com','','','',0,'House No-P-38','Pratap Nagar','','Delhi','New Delhi',110052,'9350756920',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:04','SWA482P',1,22,'','',1),(12,'SWAS05170012','530','2017-03-19','4568971321686','','Manan','','Hooda','Manan13@gbdips.com','2012-01-13','manan13012012','13012012',4,'Male','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9990644521','','','Ashok Vihar',23,'SWA530P','NA','Saket Hooda','','','9718170401','','Ashish Hooda','','','9990644521','Manan13@gbdips.com','','','',0,'House No-A - 46','Azadpur Village','','Delhi','New Delhi',110007,'9990644521',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:05','SWA482P',1,24,'','',1),(51,'SWAS05170051','533','2017-04-14','4568971321725','','Janeesha','','Gandhi','Janeesha52@gbdips.com','2011-02-28','janeesha28022011','28022011',4,'Female','2','A','English','CBSE',1,'','General','','','','','','','','',0,'','9873423637','','','Ashok Vihar',101,'SWA533P','NA','Savita Tandon','','','9818489953','','Rohit Gandhi','','','9873423637','Janeesha52@gbdips.com','','','',0,'House No-C-3/86','Lawrence Road','','Delhi','Delhi',110035,'9873423637',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,102,'','',1),(30,'SWAS05170030','534','2017-03-19','4568971321704','','Shaurya','','Shukla','Shaurya31@gbdips.com','2011-08-11','shaurya11082011','11082011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9868333448','','','Ashok Vihar',59,'SWA534P','NA','Shashi Shukla','','','9560587589','','Anirudh Shukla','','','9868333448','Shaurya31@gbdips.com','','','',0,'1279/88, Shanti Nagar','Tri Nagar','','Delhi','Delhi',110035,'9868333448',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,60,'','',1),(13,'SWAS05170013','536','2017-03-14','4568971321687','','Yug','','Sareen','Yug14@gbdips.com','2011-02-11','yug11022011','11022011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','7065536000','','','Ashok Vihar',25,'SWA536P','NA','Meenakshi Sareen','','','7065533000','','Raveen Sareen','','','7065536000','Yug14@gbdips.com','','','',0,'House No-10710','Pratap Nagar','','Delhi','New Delhi',110007,'7065536000',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:05','SWA482P',1,26,'','',1),(57,'SWAS05170057','537','2017-03-19','4568971321731','','Ather','','Rahman','Ather58@gbdips.com','2009-10-20','ather20102009','20102009',4,'Male','3','A','English','CBSE',1,'','General','','','','','','','','',0,'','9540736526','','','Ashok Vihar',113,'SWA537P','NA','Rahmat Anjum','','','8285809294','','Abdur Rahman','','','9540736526','Ather58@gbdips.com','','','',0,'D-675, J J Colony','Wazirpur','','Delhi','Delhi',110052,'9540736526',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,114,'','',1),(52,'SWAS05170052','540','2017-04-15','4568971321726','','Aanya','','Mehta','Aanya53@gbdips.com','2010-09-08','aanya08092010','08092010',4,'Female','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9811275866','','','Ashok Vihar',103,'SWA540P','NA','Sarita Mehta','','','8860535313','','Parag Mehta','','','9811275866','Aanya53@gbdips.com','','','',0,'H.No -13, Opp Hansraj College','Malka Ganj','','Delhi','Delhi',110007,'9811275866',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,104,'','',1),(89,'SWAS05170089','55678','2017-05-29','876654332445','','Raj','','Sharma','rohan@gmail. com','2010-10-10','raj10102010','10102010',4,'Male','5','A','Hindi','CBSE',1,'','General','','','','','','','','',0,'','9876543219','','','',183,'SWAS05170089P','','Sonata Sharma','','','8976543234','','Rohan Sharma','','','9876543219','rohan@gmail. com','','','',0,'','','','','Sibling Class',12334,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-29','12:06:06pm','Rajiv Gupta',1,184,'','',1),(14,'SWAS05170014','559','2017-04-15','4568971321688','','Aviral','','Shrivastava','Aviral15@gbdips.com','2012-05-24','aviral24052012','24052012',4,'Female','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9891678068','','','Ashok Vihar',27,'SWA559P','NA','Manisha Shrivastava','','','9871988068','','Deepesh Shrivastava','','','9891678068','Aviral15@gbdips.com','','','',0,'A-1, S B I Bank Road','Adarsh Nagar','','Delhi','New Delhi',110033,'9891678068',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:05','SWA482P',1,28,'','',1),(53,'SWAS05170053','570','2017-03-14','4568971321727','','Rajveer','','Kumar','Rajveer54@gbdips.com','2011-01-26','rajveer26012011','26012011',4,'Male','2','A','English','CBSE',1,'','General','','','','','','','','',0,'','9810449598','','','Ashok Vihar',105,'SWA570P','NA','Mamta Kumari','','','9654710098','','Diwakar Kumar','','','9810449598','Rajveer54@gbdips.com','','','',0,'A/309-310, Bunker Colony, Phase - IV','Ashok Vihar','','Delhi','Delhi',110052,'9810449598',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,106,'','',1),(31,'SWAS05170031','571','2017-03-14','4568971321705','','Shourya','','Sharma','Shourya32@gbdips.com','2011-07-19','shourya19072011','19072011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9891533023','','','Ashok Vihar',61,'SWA571P','NA','Mukta Sharma','','','9999476772','','Pawan Sharma','','','9891533023','Shourya32@gbdips.com','','','',0,'House No-B-1146','Shastri Nagar','','Delhi','Delhi',110052,'9891533023',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,62,'','',1),(32,'SWAS05170032','579','2017-04-15','4568971321706','','Samridhi','','Pathania','Samridhi33@gbdips.com','2012-02-02','samridhi02022012','02022012',4,'Female','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9013925332','','','Ashok Vihar',63,'SWA579P','NA','Sachitra Pathania','','','9899715774','','Gurdev Singh','','','9013925332','Samridhi33@gbdips.com','','','',0,'House No-A-160','Shastri Nagar','','Delhi','Delhi',110052,'9013925332',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,64,'','',1),(15,'SWAS05170015','583','2017-04-14','4568971321689','','Parth','Nikhilesh','Pandey','Parth16@gbdips.com','2011-07-11','parth11072011','11072011',4,'Male','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9953478048','','','Ashok Vihar',29,'SWA583P','NA','Sarita Pandey','','','9811989087','','Nikhilesh Pandey','','','9953478048','Parth16@gbdips.com','','','',0,'H-79, J.J Colony','Wazirpur','','Delhi','New Delhi',110052,'9953478048',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:05','SWA482P',1,30,'','',1),(75,'SWAS05170075','585','2017-04-15','4568971321749','','Atishay','','Jain','Atishay76@gbdips.com','2007-04-05','atishay05042007','05042007',4,'Female','5','A','English','CBSE',1,'','General','','','','','','','','',0,'','9350043605','','','Ashok Vihar',149,'SWA585P','NA','Reetika Jain','','','9811102130','','Anurag Jain','','','9350043605','Atishay76@gbdips.com','','','',0,'House No-B-2/ 55- A','Lawrence Raod','','Delhi','Delhi',110035,'9350043605',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:16','SWA482P',1,150,'','',1),(54,'SWAS05170054','586','2017-04-19','4568971321728','','Ranya','','Anand','Ranya55@gbdips.com','2010-07-25','ranya25072010','25072010',4,'Female','1','A','English','CBSE',1,'','General','','','','','','','','',0,'','9582170151','','','Ashok Vihar',107,'SWA586P','NA','Harinder Anand','','','8588847836','','Kapil Anand','','','9582170151','Ranya55@gbdips.com','','','',0,'House No-A-756','Shastri Nagar,','','Delhi','Delhi',110052,'9582170151',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,108,'','',1),(58,'SWAS05170058','588','2017-03-14','4568971321732','','Yana','','Chadha','Yana59@gbdips.com','2009-08-29','yana29082009','29082009',4,'Female','6','A','English','CBSE',1,'','General','','','','','','','','',0,'','9582358811','','','Ashok Vihar',115,'SWA588P','NA','Deepti Chadha','','','9582897925','','Unknown','','','9582358811','Yana59@gbdips.com','','','',0,'5337, Jawahar Nagar','Kamla Nagar','','Delhi','Delhi',110007,'9582358811',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,116,'','',1),(70,'SWAS05170070','607','2017-04-15','4568971321744','','Raghav','','Gupta','Raghav71@gbdips.com','2008-04-12','raghav12042008','12042008',4,'Male','4','A','English','CBSE',1,'','General','','','','','','','','',0,'','9999940610','','','Ashok Vihar',139,'SWA607P','NA','Sonu Gupta','','','9990934999','','Shyam Gupta','','','9999940610','Raghav71@gbdips.com','','','',0,'2339, Hudson Lane','Kingsway Camp','','Delhi','Delhi',110009,'9999940610',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,140,'','',1),(16,'SWAS05170016','608','2017-04-15','4568971321690','','Vani','','Aggarwal','Vani17@gbdips.com','2012-07-02','vani02072012','02072012',4,'Female','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','9899984461','','','Ashok Vihar',31,'SWA608P','NA','Richa Aggarwal','','','9711113456','','Nikhil Aggarwal','','','9899984461','Vani17@gbdips.com','','','',0,'1768/129, Shanti Nagar','Tri Nagar','','Delhi','New Delhi',110035,'9899984461',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,32,'','',1),(17,'SWAS05170017','616','2017-03-14','4568971321691','','Bhavaani','','Siya','Bhavaani18@gbdips.com','2011-04-11','bhavaani11042011','11042011',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9035099909','','','Ashok Vihar',33,'SWA616P','NA','Liza Mohanty','','','7978160769','','Satyakam H Biswal','','','9035099909','Bhavaani18@gbdips.com','','','',0,'A-265, Guru Ram Das Lane','Majlis Park','','Delhi','New Delhi',110033,'9035099909',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,34,'','',1),(33,'SWAS05170033','622','2017-04-14','4568971321707','','Arnav','','Arora','Arnav34@gbdips.com','2012-03-29','arnav29032012','29032012',4,'Male','13','A','English','CBSE',1,'','General','','','','','','','','',0,'','7503866997','','','Ashok Vihar',65,'SWA622P','NA','Simran Kaur','','','9911774996','','Jaspal Arora','','','7503866997','Arnav34@gbdips.com','','','',0,'E 280 /281, J J Colony','Wazirpur','','Delhi','Delhi',110052,'7503866997',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,66,'','',1),(34,'SWAS05170034','641','2017-04-15','4568971321708','','Anjalika','Kapoor','Saini','Anjalika35@gbdips.com','2011-01-15','anjalika15012011','15012011',4,'Female','14','A','English','CBSE',1,'','General','','','','','','','','',0,'','9953465299','','','Ashok Vihar',67,'SWA641P','NA','Sheetal','','','7291964301','','Amit Kapoor','','','9953465299','Anjalika35@gbdips.com','','','',0,'H-71, Phase - I','Ashok Vihar','','Delhi','Delhi',110052,'9953465299',0,'','','','','','6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,68,'','',1),(91,'SWAS05170091','7685','2017-05-29','4566433456776','','Rishu','','Sharma','ram34@gmail. com','2011-11-11','rishu11112011','11112011',4,'Female','1','A','Hindi','CBSE',1,'','General','','','','','','','','',0,'','5545674334','','','',187,'SWAS05170091P','','Rita Sharma','','','7668866544','','Ram Sharma','','','5545674334','ram34@gmail. com','','','',0,'','','','','Delhi',76666,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-29','01:55:55pm','Rajiv Gupta',1,188,'','',1),(94,'SWAS06170094','78548','2017-06-15','57854854854585','','Raj','','Verma','fd.yash@gmail.com','2004-04-04','raj04042004','04042004',4,'Male','6','A','Hindi','CBSE',1,'','General','','None','Nehru House','','','','','',0,'','6854854854','','','New Delhi',194,'SWAS06170094P','Scar on forehead','Monalisha Gupta','','Graduate','8584854855','monalishag@gmail.com','Kamal Singh','Post graduate','Business','6854854854','fd.yash@gmail.com','Santosh Kumar','santoshk@gmail.com','7854854854',352545,'T-43, Rampura Extension, Old Rohtak Road, New Delhi','Delhi','','West Delhi','Delhi',110035,'9876543211',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/78548_s5.jpg','2017-06-15','10:46:46am','Rajiv Gupta',1,195,'','',1),(79,'SWAS05170079','980','2017-05-19','24356152578928','','Ghazalah','','Khan','tweetytweety526@gmail.com','0000-00-00','ghazalah','',4,'Female','5','A','English','CBSE',1,'','General','','None','Jhelum','','','','','',0,'','8586916696','','','West Bengal',158,'SWAS05170079P','','Shahana Parween Khan','','','8527324334','','Shamim Ahmed Khan','','','8586916696','tweetytweety526@gmail.com','','','',0,'','','','','Sibling Class',110019,'',0,'','','','','','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/980_banner.png','2017-05-19','06:08:08pm','Rajiv Gupta',1,159,'','',1);
/*!40000 ALTER TABLE `mst_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_study_medium`
--

DROP TABLE IF EXISTS `mst_study_medium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_study_medium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medium` varchar(25) NOT NULL,
  `state_name` varchar(60) NOT NULL,
  `status` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `medium` (`medium`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_study_medium`
--

LOCK TABLES `mst_study_medium` WRITE;
/*!40000 ALTER TABLE `mst_study_medium` DISABLE KEYS */;
INSERT INTO `mst_study_medium` VALUES (1,'English','Delhi, Kerala, Tamilnadu',1),(2,'Hindi','All India',1),(3,'Tamil','Tamilnadu',0),(4,'Punjabi','Punjab, Haryana, Himachal Pradesh',0);
/*!40000 ALTER TABLE `mst_study_medium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_subject`
--

DROP TABLE IF EXISTS `mst_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` varchar(8) NOT NULL,
  `subject_name` varchar(35) NOT NULL,
  `class_id` varchar(60) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_subject`
--

LOCK TABLES `mst_subject` WRITE;
/*!40000 ALTER TABLE `mst_subject` DISABLE KEYS */;
INSERT INTO `mst_subject` VALUES (1,'HN','Hindi','1,2,3,4,5,6,7,8,9,10,11,12,13,14',1),(2,'EN','English','1,2,3,4,5,6,7,8,9,10,11,12,13,14',1),(3,'MT','Mathematics','1,2,3,4,5,6,7,8,9,10,11,12,13,14',1),(4,'SCI','Science','1,2,3,4,5,6,7,8,9,10,11,12',1),(5,'EVS','Environmental Studies','1,2,3,4,5',1),(6,'GK','General Knowledge','1,2,3,4,5',1),(7,'SKT','Sanskrit','6,7,8,9,10,11,12',0),(8,'PS','Political Science','6,7,8,9,10,11,12',0),(9,'BIO','Biology','6,7,8,9,10,11,12',0),(10,'PHY','Physics','6,7,8,9,10,11,12',0),(11,'CHE','Chemistry','6,7,8,9,10,11,12',0),(12,'ECO','Economics','11,12',0),(13,'CVS','Civics','11,12',0),(14,'GEO','Geography','6,7,8,9,10,11,12',0),(15,'BS','Business Studies','11,12',0),(16,'AC','Accountancy','11,12',0),(17,'SST','Social Studies','1,2,3,4,5,6,7,8,9,10,11,12',1);
/*!40000 ALTER TABLE `mst_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_term`
--

DROP TABLE IF EXISTS `mst_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_term` (
  `term_id` int(5) NOT NULL AUTO_INCREMENT,
  `term` varchar(10) NOT NULL,
  `board_id` int(8) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `term` (`term`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_term`
--

LOCK TABLES `mst_term` WRITE;
/*!40000 ALTER TABLE `mst_term` DISABLE KEYS */;
INSERT INTO `mst_term` VALUES (1,'First',1,1),(2,'Second',1,1),(3,'Third',1,0);
/*!40000 ALTER TABLE `mst_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_test_type`
--

DROP TABLE IF EXISTS `mst_test_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_test_type` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(20) NOT NULL,
  `term` int(1) NOT NULL,
  `max_marks` int(3) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_test_type`
--

LOCK TABLES `mst_test_type` WRITE;
/*!40000 ALTER TABLE `mst_test_type` DISABLE KEYS */;
INSERT INTO `mst_test_type` VALUES (1,'Half-Yearly Exam',1,80,1),(2,'Final Exam',2,10,1),(3,'Other',1,30,1),(4,'Other',2,10,0),(5,'FA4',2,10,0),(6,'SA2',2,30,0);
/*!40000 ALTER TABLE `mst_test_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_topic`
--

DROP TABLE IF EXISTS `mst_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_topic` (
  `topic_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `topic_no` int(5) NOT NULL,
  `topic_name` varchar(60) NOT NULL,
  `chapter_id` bigint(5) NOT NULL,
  `unit_id` bigint(5) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `book_name` varchar(60) NOT NULL,
  `publisher_name` varchar(60) NOT NULL,
  `author` varchar(40) NOT NULL,
  `school_code` varchar(35) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `topic_code` (`topic_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_topic`
--

LOCK TABLES `mst_topic` WRITE;
/*!40000 ALTER TABLE `mst_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_unit`
--

DROP TABLE IF EXISTS `mst_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_unit` (
  `unit_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `unit_no` int(6) NOT NULL,
  `unit_name` varchar(80) NOT NULL,
  `class_id` int(5) NOT NULL,
  `subject_id` int(5) NOT NULL,
  `book_name` varchar(80) NOT NULL,
  `publisher_name` varchar(80) NOT NULL,
  `author` varchar(50) NOT NULL,
  `school_code` varchar(35) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_unit`
--

LOCK TABLES `mst_unit` WRITE;
/*!40000 ALTER TABLE `mst_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_user`
--

DROP TABLE IF EXISTS `mst_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_user` (
  `user_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(35) NOT NULL,
  `employee_code` varchar(35) NOT NULL,
  `first_name` varchar(35) NOT NULL,
  `middle_name` varchar(35) NOT NULL,
  `last_name` varchar(35) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `user_type_id` int(2) NOT NULL,
  `user_profile` varchar(25) NOT NULL,
  `assign_class` varchar(5) NOT NULL,
  `section` varchar(6) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `e_mail` varchar(64) NOT NULL,
  `date_of_birth` date NOT NULL,
  `marital_status` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city_village` varchar(150) NOT NULL,
  `district_name` varchar(35) NOT NULL,
  `state_name` varchar(35) NOT NULL,
  `pin_code` int(6) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `residence_phone` varchar(15) NOT NULL,
  `highest_qualification` varchar(60) NOT NULL,
  `other_qualification` varchar(60) NOT NULL,
  `mother_tongue` varchar(35) NOT NULL,
  `id_mark` varchar(35) NOT NULL,
  `language1_known` varchar(50) NOT NULL,
  `language2_known` varchar(50) NOT NULL,
  `language3_known` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `confirm_date` date NOT NULL,
  `teaching_experience` float NOT NULL,
  `any_award` char(6) NOT NULL,
  `main_subject` varchar(35) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `edit_by_user` varchar(35) NOT NULL,
  `edit_by_usertype` int(5) NOT NULL,
  `edit_date` date NOT NULL,
  `edit_time` time NOT NULL,
  `school_code` varchar(35) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `user_reference_id` bigint(11) NOT NULL,
  `student_id` bigint(11) NOT NULL,
  `student_registration_no` varchar(40) NOT NULL,
  `paid_id` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `user_type_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `emp_id` (`user_code`),
  UNIQUE KEY `user_reference_id` (`user_reference_id`),
  CONSTRAINT `mst_user_ibfk_1` FOREIGN KEY (`user_reference_id`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_user`
--

LOCK TABLES `mst_user` WRITE;
/*!40000 ALTER TABLE `mst_user` DISABLE KEYS */;
INSERT INTO `mst_user` VALUES (1,'SWA477P','','Pankaj','','Bajaj','Pankaj12222011','swa#123456',5,'Parent','','','','Nimisha2@gbdips.com','0000-00-00','Married','308/2, Street No-5','Bagh Kare Khan','Delhi','New Delhi',110007,'9810464251','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','Rajiv Gupta',1,'2017-05-24','11:09:30','6999','De Indian Public  School','2017-2018',1,0,'','',1,NULL),(2,'SWA480P','','Amit','','Batra','Amit04232011','swa#123456',5,'Parent','','','Male','Mohit3@gbdips.com','1970-05-06','Married','A-129, Lok Vihar','Pitampura','Delhi','New Delhi',110035,'9717937632','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:02','6999','De Indian Public  School','2017-2018',3,0,'','',1,NULL),(3,'SWA482P','','Sachin','','Gupta','Sachin05252011','swa#123456',5,'Parent','','','Male','Ansh4@gbdips.com','1970-05-06','Married','923 A/ 60, Lekhu Nagar','Tri Nagar','Delhi','New Delhi',110035,'9899290789','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:02','6999','De Indian Public  School','2017-2018',5,0,'','',1,NULL),(4,'SWA483P','','Samer','','','Samer03112011','swa#123456',5,'Parent','','','Male','Neha5@gbdips.com','1970-05-06','Married','House No-B-1471','Shastri Nagar','Delhi','New Delhi',110052,'9990582122','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:02','6999','De Indian Public  School','2017-2018',7,0,'','',1,NULL),(5,'SWA485P','','Ashish','','Mahajan','Ashish05292011','swa#123456',5,'Parent','','','Male','Mishika6@gbdips.com','1970-05-06','Married','House No-C-7/229 A','Lawrence Road','Delhi','New Delhi',110035,'9891909261','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:02','6999','De Indian Public  School','2017-2018',9,0,'','',1,NULL),(6,'SWA498P','','Neeraj','','Arora','Neeraj09162011','swa#123456',5,'Parent','','','Male','Lavanya7@gbdips.com','1970-05-06','Married','House No-B-47','New Gupta Colony','Delhi','New Delhi',110009,'9210558587','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:03','6999','De Indian Public  School','2017-2018',11,0,'','',1,NULL),(7,'SWA505P','','Joy','','George','Joy01182012','swa#123456',5,'Parent','','','Male','Jia8@gbdips.com','1970-05-06','Married','B-4/14, Phase - II','Ashok Vihar','Delhi','New Delhi',110052,'8588858029','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:03','6999','De Indian Public  School','2017-2018',13,0,'','',1,NULL),(8,'SWA507P','','Nitin','','Jain','Nitin02282012','swa#123456',5,'Parent','','','Male','Advik9@gbdips.com','1970-05-06','Married','39/23, I Floor','Shakti Nagar','Delhi','New Delhi',110007,'9891261433','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:03','6999','De Indian Public  School','2017-2018',15,0,'','',1,NULL),(9,'SWA515P','','Ishwari','','Prasad','Ishwari09172011','swa#123456',5,'Parent','','','Male','Mayank10@gbdips.com','1970-05-06','Married','J- III 3111, J J Colony','Wazirpur','Delhi','New Delhi',110052,'8860490571','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:04','6999','De Indian Public  School','2017-2018',17,0,'','',1,NULL),(10,'SWA522P','','Ritesh','','Kalra','Ritesh03272012','swa#123456',5,'Parent','','','Male','Vidyut11@gbdips.com','1970-05-06','Married','86, Bharat Nagar, Phase - IV','Ashok Vihar','Delhi','New Delhi',110052,'9811406435','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:04','6999','De Indian Public  School','2017-2018',19,0,'','',1,NULL),(11,'SWA525P','','Mukesh','','Takkar','Mukesh02022012','swa#123456',5,'Parent','','','Male','Cherish12@gbdips.com','1970-05-06','Married','House No-P-38','Pratap Nagar','Delhi','New Delhi',110052,'9350756920','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:04','6999','De Indian Public  School','2017-2018',21,0,'','',1,NULL),(12,'SWA530P','','Ashish','','Hooda','Ashish01132012','swa#123456',5,'Parent','','','Male','Manan13@gbdips.com','1970-05-06','Married','House No-A - 46','Azadpur Village','Delhi','New Delhi',110007,'9990644521','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:04','6999','De Indian Public  School','2017-2018',23,0,'','',1,NULL),(13,'SWA536P','','Raveen','','Sareen','Raveen02112011','swa#123456',5,'Parent','','','Male','Yug14@gbdips.com','1970-05-06','Married','House No-10710','Pratap Nagar','Delhi','New Delhi',110007,'7065536000','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:05','6999','De Indian Public  School','2017-2018',25,0,'','',1,NULL),(14,'SWA559P','','Deepesh','','Shrivastava','Deepesh05242012','swa#123456',5,'Parent','','','Male','Aviral15@gbdips.com','1970-05-06','Married','A-1, S B I Bank Road','Adarsh Nagar','Delhi','New Delhi',110033,'9891678068','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:05','6999','De Indian Public  School','2017-2018',27,0,'','',1,NULL),(15,'SWA583P','','Nikhilesh','','Pandey','Nikhilesh07112011','swa#123456',5,'Parent','','','Male','Parth16@gbdips.com','1970-05-06','Married','H-79, J.J Colony','Wazirpur','Delhi','New Delhi',110052,'9953478048','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:05','6999','De Indian Public  School','2017-2018',29,0,'','',1,NULL),(16,'SWA608P','','Nikhil','','Aggarwal','Nikhil07022012','swa#123456',5,'Parent','','','Male','Vani17@gbdips.com','1970-05-06','Married','1768/129, Shanti Nagar','Tri Nagar','Delhi','New Delhi',110035,'9899984461','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:06','6999','De Indian Public  School','2017-2018',31,0,'','',1,NULL),(17,'SWA616P','','Satyakam','','H','Satyakam04112011','swa#123456',5,'Parent','','','Male','Bhavaani18@gbdips.com','1970-05-06','Married','A-265, Guru Ram Das Lane','Majlis Park','Delhi','New Delhi',110033,'9035099909','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:06','6999','De Indian Public  School','2017-2018',33,0,'','',1,NULL),(18,'SWA478P','','Shashank','','Sharma','Shashank11292011','swa#123456',5,'Parent','','','Male','Jaynt19@gbdips.com','1970-05-06','Married','House No-B-56','Derawal Nagar','Delhi','New Delhi',110007,'9811118762','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:06','6999','De Indian Public  School','2017-2018',35,0,'','',1,NULL),(19,'SWA484P','','Mahesh','','Sharma','Mahesh06272011','swa#123456',5,'Parent','','','Male','Lakshita20@gbdips.com','1970-05-06','Married','House No-W Z-1696','Rani Bagh','Delhi','New Delhi',110034,'9910392202','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:06','6999','De Indian Public  School','2017-2018',37,0,'','',1,NULL),(20,'SWA491P','','Nitin','','Kumar','Nitin07162011','swa#123456',5,'Parent','','','Male','Saatwan21@gbdips.com','1970-05-06','Married','House No-B D- 56','Pitampura','Delhi','New Delhi',110034,'9811036711','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:06','6999','De Indian Public  School','2017-2018',39,0,'','',1,NULL),(21,'SWA496P','','Rajeev','','Sharma','Rajeev11212011','swa#123456',5,'Parent','','','Male','Angel22@gbdips.com','1970-05-06','Married','3674/7, Narang Colony','Tri Nagar','Delhi','New Delhi',110034,'9999419811','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:06','6999','De Indian Public  School','2017-2018',41,0,'','',1,NULL),(22,'SWA497P','','Rahul','','Mishra','Rahul01272012','swa#123456',5,'Parent','','','Male','Samarth23@gbdips.com','1970-05-06','Married','A-2/28, Shakti Nagar, Phase-III','Ashok Vihar','Delhi','New Delhi',110035,'9999774105','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:07','6999','De Indian Public  School','2017-2018',43,0,'','',1,NULL),(23,'SWA499P','','Naveen','','Chatwal','Naveen01132011','swa#123456',5,'Parent','','','Male','Saisha24@gbdips.com','1970-05-06','Married','146, Bharat Nagar','Ashok Vihar','Delhi','New Delhi',110052,'9310363100','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:07','6999','De Indian Public  School','2017-2018',45,0,'','',1,NULL),(24,'SWA501P','','Ram','','Gopal','Ram04282011','swa#123456',5,'Parent','','','Male','Ayaan25@gbdips.com','1970-05-06','Married','1/8, Roop Nagar','Shakti Nagar','Delhi','New Delhi',110007,'9311242233','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:07','6999','De Indian Public  School','2017-2018',47,0,'','',1,NULL),(25,'SWA504P','','Vikas','','Bhatia','Vikas10152011','swa#123456',5,'Parent','','','Male','Kashvi26@gbdips.com','1970-05-06','Married','1376, Dr Mukherjee Nagar','Mukherjee Nagar','Delhi','New Delhi',110009,'9811937132','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:07','6999','De Indian Public  School','2017-2018',49,0,'','',1,NULL),(26,'SWA506P','','Manoj','','Kwatra','Manoj01242012','swa#123456',5,'Parent','','','Male','Mayra27@gbdips.com','1970-05-06','Married','House No- I-17','Pratap Nagar','Delhi','New Delhi',110007,'9891357317','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:07','6999','De Indian Public  School','2017-2018',51,0,'','',1,NULL),(27,'SWA510P','','Neeraj','','Anand','Neeraj02202012','swa#123456',5,'Parent','','','Male','Shivaansh28@gbdips.com','1970-05-06','Married','76, Vivekanand Puri','Sarai Rohilla','Delhi','Delhi',110007,'9873702292','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:08','6999','De Indian Public  School','2017-2018',53,0,'','',1,NULL),(28,'SWA513P','','Varun','','Kr','Varun07192011','swa#123456',5,'Parent','','','Male','Abhinav29@gbdips.com','1970-05-06','Married','House No-281','Lawrence Road','Delhi','Delhi',110035,'9953058716','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:08','6999','De Indian Public  School','2017-2018',55,0,'','',1,NULL),(29,'SWA521P','','Bharat','','Aggarwal','Bharat01272012','swa#123456',5,'Parent','','','Male','Deetya30@gbdips.com','1970-05-06','Married','70, Tagore Park','Model Town-I','Delhi','Delhi',110009,'9999880770','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:08','6999','De Indian Public  School','2017-2018',57,0,'','',1,NULL),(30,'SWA534P','','Anirudh','','Shukla','Anirudh08112011','swa#123456',5,'Parent','','','Male','Shaurya31@gbdips.com','1970-05-06','Married','1279/88, Shanti Nagar','Tri Nagar','Delhi','Delhi',110035,'9868333448','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:08','6999','De Indian Public  School','2017-2018',59,0,'','',1,NULL),(31,'SWA571P','','Pawan','','Sharma','Pawan07192011','swa#123456',5,'Parent','','','Male','Shourya32@gbdips.com','1970-05-06','Married','House No-B-1146','Shastri Nagar','Delhi','Delhi',110052,'9891533023','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:08','6999','De Indian Public  School','2017-2018',61,0,'','',1,NULL),(32,'SWA579P','','Gurdev','','Singh','Gurdev02022012','swa#123456',5,'Parent','','','Male','Samridhi33@gbdips.com','1970-05-06','Married','House No-A-160','Shastri Nagar','Delhi','Delhi',110052,'9013925332','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:08','6999','De Indian Public  School','2017-2018',63,0,'','',1,NULL),(33,'SWA622P','','Jaspal','','Arora','Jaspal03292012','swa#123456',5,'Parent','','','Male','Arnav34@gbdips.com','1970-05-06','Married','E 280 /281, J J Colony','Wazirpur','Delhi','Delhi',110052,'7503866997','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:09','6999','De Indian Public  School','2017-2018',65,0,'','',1,NULL),(34,'SWA641P','','Amit','','Kapoor','Amit01152011','swa#123456',5,'Parent','','','Male','Anjalika35@gbdips.com','1970-05-06','Married','H-71, Phase - I','Ashok Vihar','Delhi','Delhi',110052,'9953465299','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:09','6999','De Indian Public  School','2017-2018',67,0,'','',1,NULL),(35,'SWA417P','','Gaurav','','Sharma','Gaurav08272010','swa#123456',5,'Parent','','','Male','Gaurmita36@gbdips.com','1970-05-06','Married','House No-L-20','Pratap Nagar','Delhi','Delhi',110007,'7291821181','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:09','6999','De Indian Public  School','2017-2018',69,0,'','',1,NULL),(36,'SWA418P','','Gajender','','Pal','Gajender10042011','swa#123456',5,'Parent','','','Male','Abhay37@gbdips.com','1970-05-06','Married','3444/250, Hansapuri Road','Tri Nagar','Delhi','Delhi',110035,'9811073403','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:09','6999','De Indian Public  School','2017-2018',71,0,'','',1,NULL),(37,'SWA420P','','Vijay','','Bisht','Vijay08122010','swa#123456',5,'Parent','','','Male','Aarav38@gbdips.com','1970-05-06','Married','House No-B P -147','Shalimar Bagh','Delhi','Delhi',110088,'9899676866','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:09','6999','De Indian Public  School','2017-2018',73,0,'','',1,NULL),(38,'SWA423P','','Vinod','','Baldewa','Vinod10102010','swa#123456',5,'Parent','','','Male','Sidhant39@gbdips.com','1970-05-06','Married','House No-94','Vivekanand Puri','Delhi','Delhi',110007,'9811020811','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:09','6999','De Indian Public  School','2017-2018',75,0,'','',1,NULL),(39,'SWA426P','','Manish','','Sharma','Manish07052010','swa#123456',5,'Parent','','','Male','Atharv40@gbdips.com','1970-05-06','Married','House No-C-8/266','Lawrence Raod','Delhi','Delhi',110035,'9311500700','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:10','6999','De Indian Public  School','2017-2018',77,0,'','',1,NULL),(40,'SWA429P','','Sukhvinder','','Singh','Sukhvinder03082010','swa#123456',5,'Parent','','','Male','Arshjyot41@gbdips.com','1970-05-06','Married','405, S F S Flats, Phase - IV','Ashok Vihar','Delhi','Delhi',110052,'9810289657','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:10','6999','De Indian Public  School','2017-2018',79,0,'','',1,NULL),(41,'SWA430P','','Amit','','Jain','Amit07172010','swa#123456',5,'Parent','','','Male','Aarav42@gbdips.com','1970-05-06','Married','House No-B-8/3','Rana Pratap Bagh','Delhi','Delhi',110009,'9811169787','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:10','6999','De Indian Public  School','2017-2018',81,0,'','',1,NULL),(42,'SWA436P','','Sachin','','Chopra','Sachin11052010','swa#123456',5,'Parent','','','Male','Nihaal43@gbdips.com','1970-05-06','Married','House No-A-8/38','Rana Pratap Bagh','Delhi','Delhi',110007,'9811196978','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:10','6999','De Indian Public  School','2017-2018',83,0,'','',1,NULL),(43,'SWA440P','','Hulash','','Chhajer','Hulash12112010','swa#123456',5,'Parent','','','Male','Yashika44@gbdips.com','1970-05-06','Married','A-133, Phase - II','Ashok Vihar','Delhi','Delhi',110052,'9013549981','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:11','6999','De Indian Public  School','2017-2018',85,0,'','',1,NULL),(44,'SWA443P','','Tarun','','Kumar','Tarun02222011','swa#123456',5,'Parent','','','Male','Ridhima45@gbdips.com','1970-05-06','Married','W P-293, Wazirpur Village','Ashok Vihar','Delhi','Delhi',110052,'8860556656','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:11','6999','De Indian Public  School','2017-2018',87,0,'','',1,NULL),(45,'SWA445P','','Ashu','','Kumar','Ashu04282010','swa#123456',5,'Parent','','','Male','Krishna46@gbdips.com','1970-05-06','Married','House No-A-816','Shastri Nagar','Delhi','Delhi',110052,'9999119469','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:11','6999','De Indian Public  School','2017-2018',89,0,'','',1,NULL),(46,'SWA449P','','Neelish','','Rishi','Neelish04032011','swa#123456',5,'Parent','','','Male','Pragyan47@gbdips.com','1970-05-06','Married','58 C, Block - B A, Phase - I','Ashok Vihar','Delhi','Delhi',110052,'9910747788','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:11','6999','De Indian Public  School','2017-2018',91,0,'','',1,NULL),(47,'SWA455P','','Mohd','','Sadiq','Mohd10202010','swa#123456',5,'Parent','','','Male','Rayyaan48@gbdips.com','1970-05-06','Married','7108, Beri Wala Bagh','Azad Market','Delhi','Delhi',110006,'9873195327','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:11','6999','De Indian Public  School','2017-2018',93,0,'','',1,NULL),(48,'SWA465P','','Vikas','','Vohra','Vikas10082010','swa#123456',5,'Parent','','','Male','Viraj49@gbdips.com','1970-05-06','Married','C-9, D D A Flats, Phase - III','Ashok Vihar','Delhi','Delhi',110052,'8558990357','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:11','6999','De Indian Public  School','2017-2018',95,0,'','',1,NULL),(49,'SWA466P','','Gaurav','','Arora','Gaurav02222011','swa#123456',5,'Parent','','','Male','Ahana50@gbdips.com','1970-05-06','Married','B-20, Shakti Nagar Extension, Phase- III','Ashok Vihar','Delhi','Delhi',110052,'9810735354','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:12','6999','De Indian Public  School','2017-2018',97,0,'','',1,NULL),(50,'SWA468P','','Anand','','','Anand07202010','swa#123456',5,'Parent','','','Male','Madhav51@gbdips.com','1970-05-06','Married','House No-2/87','Roop Nagar','Delhi','Delhi',110007,'9873032009','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:12','6999','De Indian Public  School','2017-2018',99,0,'','',1,NULL),(51,'SWA533P','','Rohit','','Gandhi','Rohit02282011','swa#123456',5,'Parent','','','Male','Janeesha52@gbdips.com','1970-05-06','Married','House No-C-3/86','Lawrence Road','Delhi','Delhi',110035,'9873423637','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:12','6999','De Indian Public  School','2017-2018',101,0,'','',1,NULL),(52,'SWA540P','','Parag','','Mehta','Parag09082010','swa#123456',5,'Parent','','','Male','Aanya53@gbdips.com','1970-05-06','Married','H.No -13, Opp Hansraj College','Malka Ganj','Delhi','Delhi',110007,'9811275866','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:12','6999','De Indian Public  School','2017-2018',103,0,'','',1,NULL),(53,'SWA570P','','Diwakar','','Kumar','Diwakar01262011','swa#123456',5,'Parent','','','Male','Rajveer54@gbdips.com','1970-05-06','Married','A/309-310, Bunker Colony, Phase - IV','Ashok Vihar','Delhi','Delhi',110052,'9810449598','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:12','6999','De Indian Public  School','2017-2018',105,0,'','',1,NULL),(54,'SWA586P','','Kapil','','Anand','Kapil07252010','swa#123456',5,'Parent','','','Male','Ranya55@gbdips.com','1970-05-06','Married','House No-A-756','Shastri Nagar,','Delhi','Delhi',110052,'9582170151','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:12','6999','De Indian Public  School','2017-2018',107,0,'','',1,NULL),(55,'SWA384P','','Parveen','','Gupta','Parveen01142010','swa#123456',5,'Parent','','','Male','Bhuvi56@gbdips.com','1970-05-06','Married','House No-C - 5/50','Keshav Puram','Delhi','Delhi',110035,'9711725524','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:12','6999','De Indian Public  School','2017-2018',109,0,'','',1,NULL),(56,'SWA388P','','Sandeep','','Chopra','Sandeep10142009','swa#123456',5,'Parent','','','Male','Gauransh57@gbdips.com','1970-05-06','Married','House No-A - 1','Rana Partap Bagh','Delhi','Delhi',110007,'9811196979','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:13','6999','De Indian Public  School','2017-2018',111,0,'','',1,NULL),(57,'SWA537P','','Abdur','','Rahman','Abdur10202009','swa#123456',5,'Parent','','','Male','Ather58@gbdips.com','1970-05-06','Married','D-675, J J Colony','Wazirpur','Delhi','Delhi',110052,'9540736526','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:13','6999','De Indian Public  School','2017-2018',113,0,'','',1,NULL),(58,'SWA588P','','Unknown','','','Unknown08292009','swa#123456',5,'Parent','','','Male','Yana59@gbdips.com','1970-05-06','Married','5337, Jawahar Nagar','Kamla Nagar','Delhi','Delhi',110007,'9582358811','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:13','6999','De Indian Public  School','2017-2018',115,0,'','',1,NULL),(59,'SWA316P','','Gajender','','Singh','Gajender03242009','swa#123456',5,'Parent','','','Male','Siddhant60@gbdips.com','1970-05-06','Married','3444/250, Hansapuri Road','Tri Nagar','Delhi','Delhi',110035,'9811073403','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:13','6999','De Indian Public  School','2017-2018',117,0,'','',1,NULL),(60,'SWA317P','','Sunil','','Kumar','Sunil01062008','swa#123456',5,'Parent','','','Male','Samarth61@gbdips.com','1970-05-06','Married','266, Katra Gulkhan','Sabzi Mandi','Delhi','Delhi',110007,'8745851533','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:13','6999','De Indian Public  School','2017-2018',119,0,'','',1,NULL),(61,'SWA318P','','Naveen','','Jain','Naveen10222008','swa#123456',5,'Parent','','','Male','Hitanshu62@gbdips.com','1970-05-06','Married','C - 2/130, Phase - II','Ashok Vihar','Delhi','Delhi',110052,'9811596038','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:14','6999','De Indian Public  School','2017-2018',121,0,'','',1,NULL),(62,'SWA323P','','Virender','','Chauhan','Virender12262008','swa#123456',5,'Parent','','','Male','Sanskriti63@gbdips.com','1970-05-06','Married','C - 6, New Cottage Road','Adarsh Nagar','Delhi','Delhi',110033,'9711519050','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:14','6999','De Indian Public  School','2017-2018',123,0,'','',1,NULL),(63,'SWA329P','','Akhilesh','','Kumar','Akhilesh05152008','swa#123456',5,'Parent','','','Male','Anurag64@gbdips.com','1970-05-06','Married','House No-C-4/103 B','Lawrence Road','Delhi','Delhi',110035,'9810204312','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:14','6999','De Indian Public  School','2017-2018',125,0,'','',1,NULL),(64,'SWA343P','','Manoj','','Kumar','Manoj08242008','swa#123456',5,'Parent','','','Male','Aditie65@gbdips.com','1970-05-06','Married','House No-B - 4 A/ 6 A','Rana Pratap Bagh','Delhi','Delhi',110007,'9871033666','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:14','6999','De Indian Public  School','2017-2018',127,0,'','',1,NULL),(65,'SWA344P','','Kamal','','Bansal','Kamal03302009','swa#123456',5,'Parent','','','Male','Ishika66@gbdips.com','1970-05-06','Married','854/56, Lekhu Nagar','Tri Nagar','Delhi','Delhi',110035,'9582239606','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:14','6999','De Indian Public  School','2017-2018',129,0,'','',1,NULL),(66,'SWA346P','','Deepak','','Rathore','Deepak10062008','swa#123456',5,'Parent','','','Male','Kanav67@gbdips.com','1970-05-06','Married','House No-17','Anand Nagar','Delhi','Delhi',110035,'9582379700','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:14','6999','De Indian Public  School','2017-2018',131,0,'','',1,NULL),(67,'SWA349P','','Yachin','','Kadam','Yachin08252008','swa#123456',5,'Parent','','','Male','Tiya68@gbdips.com','1970-05-06','Married','C - 113, Pocket-D, Phase- III','Ashok Vihar','Delhi','Delhi',110052,'9811437868','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:15','6999','De Indian Public  School','2017-2018',133,0,'','',1,NULL),(68,'SWA350P','','Charat','','Ram','Charat05112008','swa#123456',5,'Parent','','','Male','Yanya69@gbdips.com','1970-05-06','Married','House No-17/19','Shakti Nagar','Delhi','Delhi',110052,'9873400872','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:15','6999','De Indian Public  School','2017-2018',135,0,'','',1,NULL),(69,'SWA359P','','Ujwal','','Kapoor','Ujwal02132009','swa#123456',5,'Parent','','','Male','Pratham70@gbdips.com','1970-05-06','Married','552, Phase - IV , Nimri Colony','Ashok Vihar','Delhi','Delhi',110052,'9999962235','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:15','6999','De Indian Public  School','2017-2018',137,0,'','',1,NULL),(70,'SWA607P','','Shyam','','Gupta','Shyam04122008','swa#123456',5,'Parent','','','Male','Raghav71@gbdips.com','1970-05-06','Married','2339, Hudson Lane','Kingsway Camp','Delhi','Delhi',110009,'9999940610','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:15','6999','De Indian Public  School','2017-2018',139,0,'','',1,NULL),(71,'SWA248P','','Abhilash','','Rana','Abhilash05092007','swa#123456',5,'Parent','','','Male','Abhinav72@gbdips.com','1970-05-06','Married','House No-C - 5/168','Lawrence Road','Delhi','Delhi',110035,'9891042516','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:15','6999','De Indian Public  School','2017-2018',141,0,'','',1,NULL),(72,'SWA262P','','Sachin','','Chopra','Sachin08152007','swa#123456',5,'Parent','','','Male','Rehaan73@gbdips.com','1970-05-06','Married','House No-A-8/38','Rana Partap Bagh','Delhi','Delhi',110007,'9811196978','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:15','6999','De Indian Public  School','2017-2018',143,0,'','',1,NULL),(73,'SWA285P','','Rajiv','','Sharma','Rajiv10162007','swa#123456',5,'Parent','','','Male','Shaurya74@gbdips.com','1970-05-06','Married','House No-A - 2/128 A','Lawrence Raod','Delhi','Delhi',110035,'9810966718','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:16','6999','De Indian Public  School','2017-2018',145,0,'','',1,NULL),(74,'SWA296P','','Mahendra','','Sharma','Mahendra10162007','swa#123456',5,'Parent','','','Male','Yug75@gbdips.com','1970-05-06','Married','House No-A - 355/2','Shastri Nagar','Delhi','Delhi',110052,'9899309859','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:16','6999','De Indian Public  School','2017-2018',147,0,'','',1,NULL),(75,'SWA585P','','Anurag','','Jain','Anurag04052007','swa#123456',5,'Parent','','','Male','Atishay76@gbdips.com','1970-05-06','Married','House No-B-2/ 55- A','Lawrence Raod','Delhi','Delhi',110035,'9350043605','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA482P',1,'2017-05-15','17:48:16','6999','De Indian Public  School','2017-2018',149,0,'','',1,NULL),(76,'GBDIPS001','GBD001','Rajiv','','Gupta','admin','admin#98765',1,'Administrator','','','Male','gbdips@gmail.com','1967-05-05','Married','B-54 Askhok Vihar','Ashok Vihar','North Delhi','New Delhi',110054,'9584854855','7854854855','Post Graduate','CA','Hindi','NA','English','Hindi','','2017-05-15','2017-05-15',15,'Yes','Hindi','','Admin',7,'2017-05-15','00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',151,0,'','',1,NULL),(77,'SWAS05170076P','','Pawan','','Acharya','pawan05162012','pawan#123',5,'Parent','','','','pawan01@gmail.com','0000-00-00','','','{cv}','','Delhi',110006,'9876543210','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/256486632_indian-schoolboy (1).jpg','',0,'2017-05-16','04:06:06','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',152,0,'','',1,NULL),(78,'SWAS05170077P','','Sanjay','','Saini','sanjay05052005','sanjay#123',5,'Parent','','','','sanjay@gmail.com','0000-00-00','','','{cv}','','Sibling Class',110095,'8547854855','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-18','12:05:05','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',154,0,'','',1,NULL),(79,'SWAS05170078P','','I','','S','i10012008','i#123',5,'Parent','','','','mail.madhurg@gmail.com','0000-00-00','','','{cv}','','Delhi',110001,'9821121662','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-19','12:22:22','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',156,0,'','',1,NULL),(80,'SWAS05170079P','','Shamim','','Ahmed','shamim','shamim#123',5,'Parent','','','','tweetytweety526@gmail.com','0000-00-00','','','{cv}','','Sibling Class',110019,'8586916696','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/980_banner.png','',0,'2017-05-19','06:08:08','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',158,0,'','',1,NULL),(81,'SWAU05170081','','Sugandh','','Dua','sugandh','sugandh',3,'Teacher','3','A','Female','sugandh@swaadhyayan.com','0000-00-00','','','','','Delhi',110018,'0986535678','','Graduate','','Kannada','','Array','','','0000-00-00','0000-00-00',2,'','Science','plugins/images/users/nouserphoto.png','Rajiv Gupta',1,'2017-05-22','11:16:15','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',160,0,'','',1,NULL),(82,'SWAS05170080P','','Suresh','','Kapahi','suresh09092009','suresh#123',5,'Parent','','','','sugandh@swaadhyayan.com','0000-00-00','','','{cv}','','Delhi',110018,'9876435677','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/1536274765768_s1.jpg','',0,'2017-05-22','02:53:53','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',161,0,'','',1,NULL),(83,'SWA11DIPS85A','123456A','Seema','','Awasthi','admin123456','access#123',1,'Administrator','','','Male','info@dipsrohini.in','1980-10-20','','Pocket 11, Sector - 24, Rohini, New Delhi','DELHI','NORTH dELHI','Delhi',110085,'27050252','','M-Tech','','Hindi','NA','English, Hindi','','','2017-05-23','0000-00-00',0,'','NA','upload/upload_images/user_images/nouserphoto.png','Rajiv Gupta',1,'2017-05-23','00:00:11','SWA11DIPS85','DE INDIAN PUBLIC SCHOOL','2017-2018',163,0,'','',1,NULL),(84,'SWA11DS85A','0888A','Rajni','','Khosla','admin0888','access#123',1,'Administrator','','','Male','dum@gmail.com','1980-10-20','','Sector -3 Rohini','Delhi','NORTH DELHI','Delhi',110085,'9873145698','','M-Tech','','Hindi','NA','English, Hindi','','','2017-05-23','0000-00-00',0,'','NA','upload/upload_images/user_images/nouserphoto.png','Seema Awasthi',1,'2017-05-23','00:00:11','SWA11DS85','DUMMY SCHOOL ','2017-2018',164,0,'','',1,NULL),(85,'SWAS05170081P','','Amit','','','amit04012014','amit#123',5,'Parent','','','','amit@gmail.com','0000-00-00','','','{cv}','','Delhi',110052,'9896574514','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-23','12:24:24','SWA11DS85','DUMMY SCHOOL','2017-2018',165,0,'','',1,NULL),(86,'SWAS05170082P','','Ashwani','','','ashwani03042014','ashwani#123',5,'Parent','','','','ash@gmail.com','0000-00-00','','','{cv}','','Delhi',110052,'9865897595','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-23','12:56:56','SWA11DS85','DUMMY SCHOOL','2017-2018',167,0,'','',1,NULL),(87,'SWAS05170083P','','Amit','','','amit02092014','amit#123',5,'Parent','','','','amit01@gmail.com','0000-00-00','','','{cv}','','Delhi',110007,'9868957779','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-23','12:36:36','SWA11DS85','DUMMY SCHOOL','2017-2018',169,0,'','',1,NULL),(88,'SWAS05170084P','','Vikas','','','vikas04012014','vikas#123',5,'Parent','','','','vik@gmail.com','0000-00-00','','','{cv}','','Delhi',110085,'8596895555','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-23','12:24:24','SWA11DS85','DUMMY SCHOOL','2017-2018',171,0,'','',1,NULL),(89,'SWAS05170085P','','Rakesh','','','rakesh03122014','rakesh#123',5,'Parent','','','','rakss@gmail.com','0000-00-00','','','{cv}','','Delhi',110085,'9865896789','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-23','12:13:13','SWA11DS85','DUMMY SCHOOL','2017-2018',173,0,'','',1,NULL),(90,'SWAS05170086P','','Akshit','','Kapoor','akshit03142014','akshit#123',5,'Parent','','','','akk01@gmail.com','0000-00-00','','','{cv}','','Delhi',110085,'9818568799','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-23','12:13:13','SWA11DS85','DUMMY SCHOOL','2017-2018',175,0,'','',1,NULL),(91,'SWAS05170087P','','Rajesh','','Gupta','rajesh09112012','rajesh#123',5,'Parent','','','','dikistation@gmail.com','0000-00-00','','','{cv}','','Delhi',110034,'9876543210','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-23','12:10:10','SWA11DIPS85','DE INDIAN PUBLIC SCHOOL','2017-2018',177,0,'','',1,NULL),(92,'SWAU05170092','','Rupali','','Mehra','rupali','rupali',3,'Teacher','4','A','Female','premlata@swaadhyayan.cm','0000-00-00','','','','','Delhi',110008,'9876541243','','B.Ed.','','Marathi','','Array','','','0000-00-00','0000-00-00',9,'','Social Study','plugins/images/users/nouserphoto.png','Rajiv Gupta',1,'2017-05-23','03:17:23','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',179,0,'','',1,NULL),(93,'SWAS05170088P','','Sgdhsfhj','','','sgdhsfhj04012014','sgdhsfhj#123',5,'Parent','','','','sugandh@swaadhyayan.com','0000-00-00','','','{cv}','','Chandigarh',345678,'3454678676','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-23','05:54:54','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',180,0,'','',1,NULL),(94,'SWAU05170094','','Neha','','Verma','neha','neha',3,'Teacher','5','A','Female','rishu@swaadhyayan.com','0000-00-00','','','','','Dadra and Nagar Haveli',189765,'9875645342','','M-Tech','','English','','Array','','','0000-00-00','0000-00-00',10,'','Mathematics','plugins/images/users/nouserphoto.png','Rajiv Gupta',1,'2017-05-25','05:37:52','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',182,0,'','',1,NULL),(95,'SWAS05170089P','','Rohan','','Sharma','rohan10102010','rohan#123',5,'Parent','','','','rohan@gmail. com','0000-00-00','','','{cv}','','Sibling Class',12334,'9876543219','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-29','12:06:06','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',183,0,'','',1,NULL),(96,'SWAS05170090P','','Rohit','','Sharma','rohit12122012','rohit#123',5,'Parent','','','','rohit@gmail. com','0000-00-00','','','{cv}','','Delhi',345654,'9876543256','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-29','01:25:25','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',185,0,'','',1,NULL),(97,'SWAS05170091P','','Ram','','Sharma','ram11112011','ram#123',5,'Parent','','','','ram34@gmail. com','0000-00-00','','','{cv}','','Delhi',76666,'5545674334','','','','','','','','','0000-00-00','0000-00-00',0,'','','plugins/images/users/nouserphoto.png','',0,'2017-05-29','01:55:55','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',187,0,'','',1,NULL),(98,'SWAS05170092P','','Kapil','','Jain','kapil03122014','kapil#123',5,'Parent','','','','yashpr2001@gmail.com','0000-00-00','','Anand Vihar Extension','{cv}','East Delhi','Delhi',110092,'9658548548','3562552545','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/2154_s7.jpg','',0,'2017-05-30','04:43:43','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',189,0,'','',1,NULL),(99,'SWAU06170099','','Madhur','','Gupta','madhur','madhur@123',2,'Principal','','','Male','madhur@swaadhyayan.com','0000-00-00','','Block B, Ashok Vihar','New Delhi','North Delhi','Delhi',110052,'9821121662','','MCA','','English','','Array','','','0000-00-00','0000-00-00',10,'','Hindi,English,Mathematics,Science','upload/upload_images/user_images/SWAU06170099_images.jpg','Rajiv Gupta',1,'2017-06-06','11:01:37','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',191,0,'','',1,NULL),(100,'SWAS06170093P','','Rajeev','','Gupta','rajeev03032008','rajeev#123',5,'Parent','','','','sugandh@swaadhyayan.com','0000-00-00','','vikaspuri','{cv}','West Delhi','Delhi',110018,'7654568765','','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/126457658_s2.jpg','',0,'2017-06-08','04:57:57','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',192,0,'','',1,NULL),(101,'SWAS06170094P','','Kamal','','Singh','kamal04042004','kamal#123',5,'Parent','','','','fd.yash@gmail.com','0000-00-00','','T-43, Rampura Extension, Old Rohtak Road, New Delhi','{cv}','West Delhi','Delhi',110035,'6854854854','9876543211','','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/78548_s5.jpg','',0,'2017-06-15','10:46:46','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',194,0,'','',1,NULL),(102,'SWAU06170102','SWASA01','Rajiv','','Gupta','swaadmin','swaadmin',7,'Super Admin','','','Male','director@swaadhyayan.com','0000-00-00','','GD-ITL Tower, BO-8, 712 Netaji Subhash Place','Delhi','West Delhi','Delhi',110034,'0114732667','','M-Tech','','English','Not Applicable','Array','','','0000-00-00','0000-00-00',10,'','Hindi,English','upload/upload_images/user_images/SWAU06170102_Dr_Rajiv_Gupta.jpg','Rajiv Gupta',1,'2017-06-24','02:52:04','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',196,0,'','',1,NULL),(103,'SWA11LSPS34A','10001A','Sunita','','Parewa','admin10001','access#123',1,'Administrator','','','Male','littlestar1001@gmail.com','1980-10-20','','OP-BLOCK, NORTH PITAM PURA,','DELHI','NORTH DELHI','Delhi',110034,'8485478548','','M-Tech','','Hindi','NA','English, Hindi','','','2017-06-24','0000-00-00',0,'','NA','upload/upload_images/user_images/nouserphoto.png','Rajiv Gupta',7,'2017-06-24','00:00:03','SWA11LSPS34\n','LITTLE STAR PUBLIC SCHOOL','2017-2018',197,0,'','',1,NULL),(104,'SWAU06170104','SWAMKT001','Sumit','','Sharma','sumitsharma','sumitsharma',9,'Marketing Head','','','Male','sumit@swaadhyayan.com','0000-00-00','','GD-ITL Tower, BO-8, 712 Netaji Subhash Place','DELHI','West Delhi','Delhi',110034,'0114732667','','MBA','','English','Not Applicable','Array','','','0000-00-00','0000-00-00',10,'','Hindi,English','plugins/images/users/nouserphoto.png','Rajiv Gupta',1,'2017-06-24','05:56:20','6999','DE INDIAN PUBLIC SCHOOL','2017-2018',198,0,'','',1,NULL),(105,'SWA1021P','','Vipin','','Chand','Vipin08292008','swa#123456',5,'Parent','','','Male','vipinc@gmial.com','1970-05-06','Married','5337, Jawahar Nagar','Kamla Nagar','Delhi','Delhi',110007,'9584854854','','Post Graduate','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA11LSPS34A',1,'2017-06-26','11:11:06','10001','Little Star Public School','2017-2018',199,0,'','',1,NULL),(106,'SWA1022P','','Santosh','','Yadav','Santosh03242007','swa#123456',5,'Parent','','','Male','santoshy@gmial.com','1970-05-06','Married','3444/250, Hansapuri Road','Tri Nagar','Delhi','Delhi',110035,'6584584585','','Graduate','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA11LSPS34A',1,'2017-06-26','11:11:06','10001','Little Star Public School','2017-2018',201,0,'','',1,NULL),(107,'SWA1023P','','Akhilesh','','Sharma','Akhilesh03242009','swa#123456',5,'Parent','','','Male','akhileshs1@gmial.com','1970-05-06','Married','266, Katra Gulkhan','Sabzi Mandi','Delhi','Delhi',110007,'6854854855','','Masters','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA11LSPS34A',1,'2017-06-26','11:11:06','10001','Little Star Public School','2017-2018',203,0,'','',1,NULL),(108,'SWA1024P','','Chandan','','Roy','Chandan10222008','swa#123456',5,'Parent','','','Male','chandanroy@gmial.com','1970-05-06','Married','C - 2/130, Phase - II','Ashok Vihar','Delhi','Delhi',110052,'9658585855','','MBA','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA11LSPS34A',1,'2017-06-26','11:11:06','10001','Little Star Public School','2017-2018',205,0,'','',1,NULL),(109,'SWA1025P','','Manish','','Paul','Manish12262008','swa#123456',5,'Parent','','','Male','manishp@gmial.com','1970-05-06','Married','C - 6, New Cottage Road','Adarsh Nagar','Delhi','Delhi',110033,'7854845785','','MCA','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA11LSPS34A',1,'2017-06-26','11:11:06','10001','Little Star Public School','2017-2018',207,0,'','',1,NULL),(110,'SWA1026P','','Krishna','','Kumar','Krishna05152008','swa#123456',5,'Parent','','','Male','krishnakm@gmial.com','1970-05-06','Married','House No-C-4/103 B','Lawrence Road','Delhi','Delhi',110035,'9859898989','','Masters','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA11LSPS34A',1,'2017-06-26','11:11:06','10001','Little Star Public School','2017-2018',209,0,'','',1,NULL),(111,'SWA1027P','','Arjun','','Dutta','Arjun08242008','swa#123456',5,'Parent','','','Male','arjund@gmial.com','1970-05-06','Married','House No-B - 4 A/ 6 A','Rana Pratap Bagh','Delhi','Delhi',110007,'9685968555','','Post Graduate','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA11LSPS34A',1,'2017-06-26','11:11:06','10001','Little Star Public School','2017-2018',211,0,'','',1,NULL),(112,'SWA1028P','','Piyush','','Goyal','Piyush03302009','swa#123456',5,'Parent','','','Male','piyushg@gmial.com','1970-05-06','Married','854/56, Lekhu Nagar','Tri Nagar','Delhi','Delhi',110035,'9857858785','','Graduate','','','','','','','0000-00-00','0000-00-00',0,'','','upload/upload_images/user_images/nouserphoto.png','SWA11LSPS34A',1,'2017-06-26','11:11:06','10001','Little Star Public School','2017-2018',213,0,'','',1,NULL),(113,'SWAU06170113','3548548','Sonal','','Gupta','sonal123','sonal123',3,'PGT','3','A','Female','sonal13g@gmail.com','0000-00-00','','WB- 784, West Radhey Pura, ','DELHI','East Delhi','Delhi',110034,'4584584585','','Graduate','','English','Not Applicable','Array','','','0000-00-00','0000-00-00',3,'','Hindi,English','upload/upload_images/user_images/SWAU06170113_t3.jpg','Sunita Parewa',1,'2017-06-26','11:28:31','SWA11LSPS34','LITTLE STAR PUBLIC SCHOOL','2017-2018',215,0,'','',1,NULL),(114,'SWAU06170114','65845','Krishnana','','Iyar','krish123','krish123',2,'Deputed Principal','','','Male','krishnaiyar@gmail.com','0000-00-00','','K-445, Piyush Nagar,','DELHI','West Delhi','Delhi',110034,'8547854854','','Graduate,MCA','','English','Not Applicable','Array','','','0000-00-00','0000-00-00',8,'','Hindi','upload/upload_images/user_images/SWAU06170114_img1.jpg','Sunita Parewa',1,'2017-06-26','11:31:47','SWA11LSPS34','LITTLE STAR PUBLIC SCHOOL','2017-2018',216,0,'','',1,NULL);
/*!40000 ALTER TABLE `mst_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_usertype`
--

DROP TABLE IF EXISTS `mst_usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_usertype` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(64) NOT NULL,
  `user_desc` varchar(150) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`user_type_id`),
  UNIQUE KEY `user_type` (`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_usertype`
--

LOCK TABLES `mst_usertype` WRITE;
/*!40000 ALTER TABLE `mst_usertype` DISABLE KEYS */;
INSERT INTO `mst_usertype` VALUES (1,'Administrator','Specially work for school admin',1),(2,'Principal','User as school principal',1),(3,'Teacher','User work as subject teacher or class teacher',1),(4,'Student','User as student',1),(5,'Parents','User as school principal',1),(6,'Guest','User as Guest User validate for demo only',1),(7,'Super Admin','User as Super Admin or Swa-Adhyayan',0),(8,'Academic Incharge','Academic Incharge',1),(9,'Marketing Head','Marketing Head',1);
/*!40000 ALTER TABLE `mst_usertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activity`
--

DROP TABLE IF EXISTS `tbl_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_activity` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(40) NOT NULL,
  `activity_type` varchar(20) NOT NULL,
  `board` varchar(40) NOT NULL,
  `ead_category` varchar(20) NOT NULL,
  `kuase_category` varchar(20) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `unit` int(6) NOT NULL,
  `chapter_no` int(8) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `sub_topic` varchar(50) NOT NULL,
  `term` int(2) NOT NULL,
  `question` varchar(500) NOT NULL,
  `marks` int(8) NOT NULL,
  `swf_path` varchar(150) NOT NULL,
  `thumbnail_path` varchar(100) NOT NULL,
  `img1_path` varchar(150) NOT NULL,
  `img1_name` varchar(40) NOT NULL,
  `img2_path` varchar(150) NOT NULL,
  `img2_name` varchar(40) NOT NULL,
  `img3_path` varchar(150) NOT NULL,
  `img3_name` varchar(40) NOT NULL,
  `img4_path` varchar(150) NOT NULL,
  `img4_name` varchar(40) NOT NULL,
  `img5_path` varchar(150) NOT NULL,
  `img5_name` varchar(40) NOT NULL,
  `img6_path` varchar(150) NOT NULL,
  `img6_name` varchar(40) NOT NULL,
  `exam_gen_date` date NOT NULL,
  `exam_status` int(2) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activity`
--

LOCK TABLES `tbl_activity` WRITE;
/*!40000 ALTER TABLE `tbl_activity` DISABLE KEYS */;
INSERT INTO `tbl_activity` VALUES (1,'dnd_10_16_5_SCI_0001','dnd','CBSE','Average','Understanding',5,'SCI',0,0,'','',1,'',4,'','','../upload/activity/images/dnd/5/Science/grapes.png','grapes','../upload/activity/images/dnd/5/Science/guava.png','guava','../upload/activity/images/dnd/5/Science/kivi.png','kivi','../upload/activity/images/dnd/5/Science/lady-fingers.png','lady-fingers','','','','','2016-10-12',0,1),(2,'mc_10_16___0002','mc','','','',0,'',0,0,'','',0,'',0,'','','../upload/activity/images/mc///grapes.png','grapes','../upload/activity/images/mc///guava.png','guava','../upload/activity/images/mc///kivi.png','kivi','../upload/activity/images/mc///lady-fingers.png','lady-fingers','','','','','2016-10-13',0,1),(3,'dnd_10_16___0003','dnd','','','',0,'',0,0,'','',0,'',0,'','','../upload/activity/images/dnd///apple.png','apple','../upload/activity/images/dnd///apricot.png','apricot','../upload/activity/images/dnd///banana.png','banana','../upload/activity/images/dnd///bringle.png','bringle','','','','','2016-10-17',0,1),(4,'dnd_10_16___0004','dnd','','','',0,'',0,0,'','',0,'',0,'','','../upload/activity/images/dnd///p2.jpg','p2','../upload/activity/images/dnd///p3.jpg','p3','../upload/activity/images/dnd///p4.jpg','p4','','','','','','','2016-10-19',0,1),(5,'dnd_10_16_5_SCI_0005','dnd','CBSE','Easy','Knowledge',5,'SCI',0,0,'','',1,'',5,'','','../upload/activity/images/dnd/5/Science/Google_Owner_Sergey_Brin_www.nowlix.com-1.jpg','Google_Owner_Sergey_Brin_www.nowlix.com-','../upload/activity/images/dnd/5/Science/img1.jpg','img1','../upload/activity/images/dnd/5/Science/s1.jpg','s1','../upload/activity/images/dnd/5/Science/s2.jpg','s2','','','','','2016-10-19',0,1),(6,'mc_10_16_4_SCI_0006','mc','CBSE','Easy','Knowledge',4,'SCI',0,0,'','',1,'',4,'','','../upload/activity/images/mc/4/Science/Google_Owner_Sergey_Brin_www.nowlix.com-1.jpg','Google_Owner_Sergey_Brin_www.nowlix.com-','../upload/activity/images/mc/4/Science/img1.jpg','img1','../upload/activity/images/mc/4/Science/s1.jpg','s1','../upload/activity/images/mc/4/Science/s2.jpg','s2','','','','','2016-10-20',0,1);
/*!40000 ALTER TABLE `tbl_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_assessment_generator`
--

DROP TABLE IF EXISTS `tbl_assessment_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_assessment_generator` (
  `assessment_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `assessment_name` varchar(35) CHARACTER SET utf8 NOT NULL,
  `question_id` int(11) NOT NULL,
  `class_id` int(6) NOT NULL,
  `section` varchar(5) NOT NULL,
  `term` int(2) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `time_for_each_question` int(1) NOT NULL,
  `no_of_attempt` int(1) NOT NULL,
  `no_of_questions` int(5) NOT NULL,
  `total_time` time NOT NULL,
  `board_id` int(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `school_id` varchar(35) CHARACTER SET utf8 NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `generated_by` varchar(25) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`assessment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_assessment_generator`
--

LOCK TABLES `tbl_assessment_generator` WRITE;
/*!40000 ALTER TABLE `tbl_assessment_generator` DISABLE KEYS */;
INSERT INTO `tbl_assessment_generator` VALUES (1,'Half-Yearly Exam',0,6,'A',1,'EN',0,1,10,'01:00:00',1,'2017-06-30','2017-07-01','6999','2017-2018','SWAU05170081','2017-06-30 10:31:34',0),(2,'Half-Yearly Exam',0,4,'A',1,'SCI',0,1,100,'02:00:00',1,'2017-07-01','2017-07-02','6999','2017-2018','SWAU05170081','2017-07-01 05:24:43',1),(3,'test',0,2,'A',1,'EVS',0,3,6,'03:00:00',1,'2017-07-01','2017-07-02','6999','2017-2018','SWAU05170081','2017-07-01 07:04:50',1),(4,'Half-Yearly Exam',0,4,'A',1,'',0,1,10,'01:00:00',1,'2017-07-01','2017-07-02','6999','2017-2018','SWAU05170081','2017-07-01 07:37:46',0),(5,'Half-Yearly Exam',0,4,'A',1,'SST',0,1,10,'01:00:00',1,'2017-07-01','2017-07-02','6999','2017-2018','SWAU05170081','2017-07-01 07:52:28',1),(6,'Half-Yearly Exam',0,2,'A',1,'EVS',1,1,5,'00:00:00',1,'2017-07-01','2017-07-02','6999','2017-2018','SWAU05170081','2017-07-01 07:52:56',1),(7,'Practice Paper 1',0,2,'A',1,'SST',1,1,3,'00:00:00',1,'2017-07-01','2017-07-01','6999','2017-2018','SWAU05170081','2017-07-01 08:19:12',1),(8,'Half-Yearly Exam',0,8,'A',1,'SCI',1,1,5,'00:00:00',1,'2017-07-01','2017-07-01','6999','2017-2018','SWAU05170081','2017-07-01 12:43:08',0),(9,'Half-Yearly Exam',0,8,'A',1,'SCI',1,1,5,'00:00:00',1,'2017-07-03','2017-07-03','6999','2017-2018','SWAU05170081','2017-07-03 05:16:49',0),(10,'Half-Yearly Exam',0,4,'A',1,'EN',0,1,10,'02:00:00',1,'2017-07-03','2017-07-04','6999','2017-2018','SWAU05170081','2017-07-03 05:40:25',1),(11,'Unit Test',0,4,'A',1,'EN',0,1,5,'02:00:00',1,'2017-07-03','2017-07-04','6999','2017-2018','SWAU05170081','2017-07-03 08:24:20',1),(12,'Half-Yearly Exam',0,6,'A',1,'SST',1,1,5,'00:00:00',1,'2017-07-03','2017-07-03','6999','2017-2018','SWAU05170081','2017-07-03 11:52:33',0),(13,'Test-1',0,1,'A',1,'EN',0,2,5,'01:00:00',1,'2017-07-04','2017-07-05','6999','2017-2018','SWAU05170081','2017-07-04 07:01:48',1),(14,'Half-Yearly Exam',0,3,'A',1,'EN',1,1,10,'00:00:00',1,'2017-07-04','2017-07-06','6999','2017-2018','SWAU05170094','2017-07-04 10:42:26',0),(15,'Final Exam',0,2,'A',2,'EN',1,1,3,'00:00:00',1,'2017-07-06','2017-07-07','6999','2017-2018','GBDIPS001','2017-07-04 20:20:47',0),(16,'Half-Yearly Exam',0,7,'A',1,'SST',1,1,5,'00:00:00',1,'2017-07-05','2017-07-05','6999','2017-2018','SWAU05170094','2017-07-05 06:10:31',0),(17,'testing',0,4,'A',1,'EN',0,3,10,'01:00:00',1,'2017-07-06','2017-07-07','6999','2017-2018','SWAU05170081','2017-07-06 06:48:59',1),(18,'Half-Yearly Exam',0,1,'A',1,'SCI',1,1,5,'00:00:00',1,'2017-07-06','2017-07-06','6999','2017-2018','SWAU05170081','2017-07-06 06:41:02',0),(19,'Half-Yearly Exam',0,1,'A',1,'EN',0,1,10,'01:00:00',1,'2017-07-06','2017-07-07','6999','2017-2018','SWAU05170081','2017-07-06 08:04:08',0),(20,'Half-Yearly Exam',0,1,'A',1,'EN',0,2,100,'01:00:00',1,'2017-07-06','2017-07-07','6999','2017-2018','SWAU05170081','2017-07-06 08:29:20',1);
/*!40000 ALTER TABLE `tbl_assessment_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_assessment_question`
--

DROP TABLE IF EXISTS `tbl_assessment_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_assessment_question` (
  `assement_question_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `assessment_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `marks` int(5) NOT NULL,
  `option_ids` varchar(50) NOT NULL COMMENT 'question selected option ids',
  `question_time` time NOT NULL,
  PRIMARY KEY (`assement_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_assessment_question`
--

LOCK TABLES `tbl_assessment_question` WRITE;
/*!40000 ALTER TABLE `tbl_assessment_question` DISABLE KEYS */;
INSERT INTO `tbl_assessment_question` VALUES (1,0,3845,81,'1,2,3,4,5,6,7,8,9,10','00:00:00'),(2,1,3684,10,'1,2,3,4,5,6,7,8,9,10','00:00:00'),(3,2,1991,6,'1,2,3,4,5,6','00:00:00'),(4,2,120,5,'1,2,3,4,5','00:00:00'),(5,2,331,6,'1,2,3,4,5,6','00:00:00'),(6,2,591,5,'1,2,3,4,5','00:00:00'),(7,2,123,5,'1,2,3,4,5','00:00:00'),(8,2,595,5,'1,2,3,4,5','00:00:00'),(9,2,592,3,'1,2','00:00:00'),(10,2,332,5,'1,2,3,4,5','00:00:00'),(11,2,334,5,'1,2,3,4,5','00:00:00'),(12,2,594,6,'1,2,3,4,5,6','00:00:00'),(13,3,1863,1,'1,2,3,4','00:00:00'),(14,3,1864,3,'1,2,3,4','00:00:00'),(15,3,1865,3,'1,2,3,4,5','00:00:00'),(16,3,42,1,'1,2,3','00:00:00'),(17,3,43,1,'1,2,3,4,5','00:00:00'),(18,3,44,1,'1,2','00:00:00'),(19,4,1407,1,'1,2,3,4','00:00:00'),(20,5,335,5,'1,2,3,4,5','00:00:00'),(21,5,342,5,'1,2,3,4,5','00:00:00'),(22,6,472,3,'1,2,3,4,5','00:00:00'),(23,5,345,5,'1,2,3,4,5','00:00:00'),(24,6,473,5,'1,2,3,4,5','00:00:00'),(25,5,350,4,'1,2,3,4','00:00:00'),(26,6,1918,5,'1,2,3,4,5','00:00:00'),(27,5,602,5,'1,2,3,4,5','00:00:00'),(28,6,1919,5,'1,2,3,4','00:00:00'),(29,6,1920,5,'1,2,3,4,5','00:00:00'),(30,5,347,4,'1,2,3,4','00:00:00'),(31,5,341,4,'1,2,3,4','00:00:00'),(32,5,338,7,'1,2,3,4,5','00:00:00'),(33,7,1936,4,'1,2,3,4','00:00:00'),(34,7,1937,4,'1,2,3,4','00:00:00'),(35,7,1938,4,'1,2,3,4,5,6','00:00:00'),(43,9,3542,3,'1','00:00:00'),(44,9,3550,2,'1','00:00:00'),(45,10,85,8,'1,2,3,4,5,6,7,8','00:00:00'),(46,10,90,4,'1,2,3,4','00:00:00'),(47,10,94,5,'1,2,3,4,5','00:00:00'),(50,11,1304,1,'1,2,3,4','00:00:00'),(51,11,1305,1,'1,2,3,4','00:00:00'),(52,11,1306,1,'1,2,3,4','00:00:00'),(53,11,1307,1,'1,2,3,4','00:00:00'),(54,11,1308,1,'1,2,3,4','00:00:00'),(56,13,152,4,'1,2,3,4','00:00:00'),(57,13,157,5,'1,2,3,4,5','00:00:00'),(58,13,683,1,'1,2,3,4','00:00:00'),(59,13,682,1,'1,2,3,4','00:00:00'),(60,13,693,1,'1,2,3,4','00:00:00'),(62,0,0,0,'','00:00:00'),(63,0,2951,4,'1,2,3,4','00:00:00'),(64,0,2951,3,'1,2,3,4','00:00:00'),(65,15,34,5,'1,2,3,4,5,6','00:00:00'),(66,15,853,4,'1,2,3,4','00:00:00'),(67,15,882,5,'1,2,3,4','00:00:00'),(69,0,3064,3,'1,2,3','00:00:00'),(70,17,87,6,'1,2,3,4,5,6','00:00:00'),(71,17,312,5,'1,2,3,4,5','00:00:00'),(72,17,1313,1,'1,2,3,4','00:00:00'),(73,17,1341,1,'1,2,3,4','00:00:00'),(74,17,559,5,'1,2,3,4,5','00:00:00'),(75,17,561,6,'1,2,3,4,5,6','00:00:00'),(76,17,314,7,'1,2,3,4,5,6,7','00:00:00'),(77,17,89,5,'1,2,3,4,5','00:00:00'),(78,17,93,10,'1,2,3,4,5','00:00:00'),(79,17,1305,1,'1,2,3,4','00:00:00'),(84,19,151,4,'1,2,3,4','00:00:00'),(85,19,152,4,'1,2,3,4','00:00:00'),(86,19,156,5,'1,2,3,4,5','00:00:00'),(87,19,1,4,'1,2,3,4','00:00:00'),(88,19,4,4,'1,2,3,4','00:00:00'),(89,19,6,4,'1,2,3,4','00:00:00'),(90,20,1,3,'1,2,3,4','00:00:00'),(91,20,2,5,'1,2,3,4,5','00:00:00'),(92,20,3,4,'1,2,3,4','00:00:00'),(93,20,4,4,'1,2,3,4','00:00:00'),(94,20,5,4,'1,2,3,4','00:00:00'),(95,20,151,4,'1,2,3,4','00:00:00'),(96,20,153,5,'1,2,3,4,5','00:00:00'),(97,20,154,5,'1,2,3,4,5','00:00:00'),(98,20,408,5,'1,2,3,4,5','00:00:00'),(99,20,411,6,'1,2,3','00:00:00'),(100,20,412,3,'1,2,3','00:00:00'),(101,20,413,10,'1,2,3,4,5,6,7,8,9,10','00:00:00'),(102,20,1845,8,'1,2,3,4,5,6,7,8','00:00:00'),(103,20,1844,8,'1,2,3,4,5,6,7,8','00:00:00'),(104,20,682,1,'1,2,3,4','00:00:00');
/*!40000 ALTER TABLE `tbl_assessment_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_assign_class`
--

DROP TABLE IF EXISTS `tbl_assign_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_assign_class` (
  `assign_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `guest_user_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_code` varchar(35) NOT NULL,
  `school_id` varchar(35) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `assign_status` varchar(1) DEFAULT 'Y',
  `is_classteacher` varchar(1) NOT NULL DEFAULT 'N',
  `edit_date` date NOT NULL,
  `edit_time` time NOT NULL,
  `edit_by` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`assign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_assign_class`
--

LOCK TABLES `tbl_assign_class` WRITE;
/*!40000 ALTER TABLE `tbl_assign_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_assign_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_assign_class_sub`
--

DROP TABLE IF EXISTS `tbl_assign_class_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_assign_class_sub` (
  `assign_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `teacher_code` varchar(35) NOT NULL,
  `user_reference_id` bigint(11) NOT NULL,
  `school_id` varchar(35) NOT NULL,
  `class_id` int(6) NOT NULL,
  `section` varchar(2) NOT NULL,
  `category` varchar(15) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `subject_name` varchar(35) NOT NULL,
  `class_teacher_status` varchar(3) NOT NULL,
  `subject_teacher_status` varchar(3) NOT NULL,
  `assign_date` date NOT NULL,
  `discontinue_date` date NOT NULL,
  `school_code` varchar(40) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `assigned_by_id` varchar(35) NOT NULL,
  `assigned_by_name` varchar(35) NOT NULL,
  `remark` varchar(150) NOT NULL,
  `active_state` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_assign_class_sub`
--

LOCK TABLES `tbl_assign_class_sub` WRITE;
/*!40000 ALTER TABLE `tbl_assign_class_sub` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_assign_class_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_assign_subject_to_class`
--

DROP TABLE IF EXISTS `tbl_assign_subject_to_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_assign_subject_to_class` (
  `assign_id` int(6) NOT NULL AUTO_INCREMENT,
  `class_id` int(6) NOT NULL,
  `subject_id` int(11) NOT NULL COMMENT 'Relate with id of mst_subject table',
  `subject_code` varchar(6) NOT NULL,
  `subject_name` varchar(35) NOT NULL,
  `school_code` varchar(35) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=667 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_assign_subject_to_class`
--

LOCK TABLES `tbl_assign_subject_to_class` WRITE;
/*!40000 ALTER TABLE `tbl_assign_subject_to_class` DISABLE KEYS */;
INSERT INTO `tbl_assign_subject_to_class` VALUES (1,5,1,'HN','Hindi','SWA04040001','','2017-2018'),(2,5,2,'EN','English','SWA04040001','','2017-2018'),(3,5,3,'MT','Mathematics','SWA04040001','','2017-2018'),(4,5,4,'SCI','Science','SWA04040001','','2017-2018'),(5,5,5,'EVS','Environmental Studies','SWA04040001','','2017-2018'),(6,5,1,'HN','Hindi','SWA26040004','','2017-2018'),(7,5,2,'EN','English','SWA26040004','','2017-2018'),(8,5,3,'MT','Mathematics','SWA26040004','','2017-2018'),(9,5,4,'SCI','Science','SWA26040004','','2017-2018'),(10,5,5,'EVS','Environmental Studies','SWA26040004','','2017-2018'),(11,5,6,'GK','General Knowledge','SWA26040004','','2017-2018'),(12,5,17,'SST','Social Studies','SWA26040004','','2017-2018'),(13,1,1,'HN','Hindi','SWA05050005','','2017-2018'),(14,1,2,'EN','English','SWA05050005','','2017-2018'),(15,1,3,'MT','Mathematics','SWA05050005','','2017-2018'),(16,1,4,'SCI','Science','SWA05050005','','2017-2018'),(17,1,5,'EVS','Environmental Studies','SWA05050005','','2017-2018'),(18,1,6,'GK','General Knowledge','SWA05050005','','2017-2018'),(19,1,17,'SST','Social Studies','SWA05050005','','2017-2018'),(20,2,1,'HN','Hindi','SWA05050005','','2017-2018'),(21,2,2,'EN','English','SWA05050005','','2017-2018'),(22,2,3,'MT','Mathematics','SWA05050005','','2017-2018'),(23,2,4,'SCI','Science','SWA05050005','','2017-2018'),(24,2,5,'EVS','Environmental Studies','SWA05050005','','2017-2018'),(25,2,6,'GK','General Knowledge','SWA05050005','','2017-2018'),(26,2,17,'SST','Social Studies','SWA05050005','','2017-2018'),(27,3,1,'HN','Hindi','SWA05050005','','2017-2018'),(28,3,2,'EN','English','SWA05050005','','2017-2018'),(29,3,3,'MT','Mathematics','SWA05050005','','2017-2018'),(30,3,4,'SCI','Science','SWA05050005','','2017-2018'),(31,3,5,'EVS','Environmental Studies','SWA05050005','','2017-2018'),(32,3,6,'GK','General Knowledge','SWA05050005','','2017-2018'),(33,3,17,'SST','Social Studies','SWA05050005','','2017-2018'),(34,4,1,'HN','Hindi','SWA05050005','','2017-2018'),(35,4,2,'EN','English','SWA05050005','','2017-2018'),(36,4,3,'MT','Mathematics','SWA05050005','','2017-2018'),(37,4,4,'SCI','Science','SWA05050005','','2017-2018'),(38,4,5,'EVS','Environmental Studies','SWA05050005','','2017-2018'),(39,4,6,'GK','General Knowledge','SWA05050005','','2017-2018'),(40,4,17,'SST','Social Studies','SWA05050005','','2017-2018'),(41,5,1,'HN','Hindi','SWA05050005','','2017-2018'),(42,5,2,'EN','English','SWA05050005','','2017-2018'),(43,5,3,'MT','Mathematics','SWA05050005','','2017-2018'),(44,5,4,'SCI','Science','SWA05050005','','2017-2018'),(45,5,5,'EVS','Environmental Studies','SWA05050005','','2017-2018'),(46,5,6,'GK','General Knowledge','SWA05050005','','2017-2018'),(47,5,17,'SST','Social Studies','SWA05050005','','2017-2018'),(48,6,1,'HN','Hindi','SWA05050005','','2017-2018'),(49,6,2,'EN','English','SWA05050005','','2017-2018'),(50,6,3,'MT','Mathematics','SWA05050005','','2017-2018'),(51,6,4,'SCI','Science','SWA05050005','','2017-2018'),(52,6,5,'EVS','Environmental Studies','SWA05050005','','2017-2018'),(53,6,6,'GK','General Knowledge','SWA05050005','','2017-2018'),(54,6,17,'SST','Social Studies','SWA05050005','','2017-2018'),(55,6,1,'HN','Hindi','SWA05050005','','2017-2018'),(56,6,2,'EN','English','SWA05050005','','2017-2018'),(57,6,3,'MT','Mathematics','SWA05050005','','2017-2018'),(58,6,4,'SCI','Science','SWA05050005','','2017-2018'),(59,6,5,'EVS','Environmental Studies','SWA05050005','','2017-2018'),(60,6,6,'GK','General Knowledge','SWA05050005','','2017-2018'),(61,6,17,'SST','Social Studies','SWA05050005','','2017-2018'),(62,6,1,'HN','Hindi','SWA05050005','','2017-2018'),(63,6,2,'EN','English','SWA05050005','','2017-2018'),(64,6,3,'MT','Mathematics','SWA05050005','','2017-2018'),(65,6,4,'SCI','Science','SWA05050005','','2017-2018'),(66,6,5,'EVS','Environmental Studies','SWA05050005','','2017-2018'),(67,6,6,'GK','General Knowledge','SWA05050005','','2017-2018'),(68,6,17,'SST','Social Studies','SWA05050005','','2017-2018'),(69,8,1,'HN','Hindi','SWA05050005','','2017-2018'),(70,8,2,'EN','English','SWA05050005','','2017-2018'),(71,8,3,'MT','Mathematics','SWA05050005','','2017-2018'),(72,8,4,'SCI','Science','SWA05050005','','2017-2018'),(73,8,17,'SST','Social Studies','SWA05050005','','2017-2018'),(74,8,1,'HN','Hindi','SWA05050005','','2017-2018'),(75,8,2,'EN','English','SWA05050005','','2017-2018'),(76,8,3,'MT','Mathematics','SWA05050005','','2017-2018'),(77,8,4,'SCI','Science','SWA05050005','','2017-2018'),(78,8,17,'SST','Social Studies','SWA05050005','','2017-2018'),(79,8,1,'HN','Hindi','SWA05050005','','2017-2018'),(80,8,2,'EN','English','SWA05050005','','2017-2018'),(81,8,3,'MT','Mathematics','SWA05050005','','2017-2018'),(82,8,4,'SCI','Science','SWA05050005','','2017-2018'),(83,8,17,'SST','Social Studies','SWA05050005','','2017-2018'),(84,8,1,'HN','Hindi','SWA05050005','','2017-2018'),(85,8,2,'EN','English','SWA05050005','','2017-2018'),(86,8,3,'MT','Mathematics','SWA05050005','','2017-2018'),(87,8,4,'SCI','Science','SWA05050005','','2017-2018'),(88,8,17,'SST','Social Studies','SWA05050005','','2017-2018'),(89,8,1,'HN','Hindi','SWA05050005','','2017-2018'),(90,8,2,'EN','English','SWA05050005','','2017-2018'),(91,8,3,'MT','Mathematics','SWA05050005','','2017-2018'),(92,8,4,'SCI','Science','SWA05050005','','2017-2018'),(93,8,17,'SST','Social Studies','SWA05050005','','2017-2018'),(94,8,1,'HN','Hindi','SWA05050005','','2017-2018'),(95,8,2,'EN','English','SWA05050005','','2017-2018'),(96,8,3,'MT','Mathematics','SWA05050005','','2017-2018'),(97,8,4,'SCI','Science','SWA05050005','','2017-2018'),(98,8,17,'SST','Social Studies','SWA05050005','','2017-2018'),(99,8,1,'HN','Hindi','SWA05050005','','2017-2018'),(100,8,2,'EN','English','SWA05050005','','2017-2018'),(101,8,3,'MT','Mathematics','SWA05050005','','2017-2018'),(102,8,4,'SCI','Science','SWA05050005','','2017-2018'),(103,8,17,'SST','Social Studies','SWA05050005','','2017-2018'),(104,3,2,'EN','English','SWA05050005','','2017-2018'),(105,3,3,'MT','Mathematics','SWA05050005','','2017-2018'),(106,3,4,'SCI','Science','SWA05050005','','2017-2018'),(107,3,5,'EVS','Environmental Studies','SWA05050005','','2017-2018'),(108,3,6,'GK','General Knowledge','SWA05050005','','2017-2018'),(109,3,17,'SST','Social Studies','SWA05050005','','2017-2018'),(123,3,1,'HN','Hindi','6999','','2017-2018'),(124,3,2,'EN','English','6999','','2017-2018'),(125,3,3,'MT','Mathematics','6999','','2017-2018'),(126,3,4,'SCI','Science','6999','','2017-2018'),(127,3,5,'EVS','Environmental Studies','6999','','2017-2018'),(128,3,6,'GK','General Knowledge','6999','','2017-2018'),(129,3,17,'SST','Social Studies','6999','','2017-2018'),(144,5,1,'HN','Hindi','6999','','2017-2018'),(145,5,2,'EN','English','6999','','2017-2018'),(146,5,3,'MT','Mathematics','6999','','2017-2018'),(147,5,4,'SCI','Science','6999','','2017-2018'),(148,5,5,'EVS','Environmental Studies','6999','','2017-2018'),(149,5,6,'GK','General Knowledge','6999','','2017-2018'),(150,5,17,'SST','Social Studies','6999','','2017-2018'),(151,3,1,'HN','Hindi','6999','','2017-2018'),(152,3,2,'EN','English','6999','','2017-2018'),(153,3,3,'MT','Mathematics','6999','','2017-2018'),(154,3,4,'SCI','Science','6999','','2017-2018'),(155,3,5,'EVS','Environmental Studies','6999','','2017-2018'),(156,3,17,'SST','Social Studies','6999','','2017-2018'),(157,3,3,'MT','Mathematics','','',''),(158,3,4,'SCI','Science','','',''),(159,3,6,'GK','General Knowledge','','',''),(160,3,17,'SST','Social Studies','','',''),(161,3,3,'MT','Mathematics','','',''),(162,3,4,'SCI','Science','','',''),(163,3,6,'GK','General Knowledge','','',''),(164,3,17,'SST','Social Studies','','',''),(165,3,3,'MT','Mathematics','','',''),(166,3,4,'SCI','Science','','',''),(167,3,6,'GK','General Knowledge','','',''),(168,3,17,'SST','Social Studies','','',''),(169,3,3,'MT','Mathematics','','',''),(170,3,4,'SCI','Science','','',''),(171,3,6,'GK','General Knowledge','','',''),(172,3,17,'SST','Social Studies','','',''),(173,3,3,'MT','Mathematics','','',''),(174,3,4,'SCI','Science','','',''),(175,3,5,'EVS','Environmental Studies','','',''),(176,3,6,'GK','General Knowledge','','',''),(177,3,17,'SST','Social Studies','','',''),(178,3,3,'MT','Mathematics','','',''),(179,3,4,'SCI','Science','','',''),(180,3,5,'EVS','Environmental Studies','','',''),(181,3,6,'GK','General Knowledge','','',''),(182,3,17,'SST','Social Studies','','',''),(183,3,3,'MT','Mathematics','','',''),(184,3,4,'SCI','Science','','',''),(185,3,5,'EVS','Environmental Studies','','',''),(186,3,6,'GK','General Knowledge','','',''),(187,3,17,'SST','Social Studies','','',''),(188,3,1,'HN','Hindi','','',''),(189,3,2,'EN','English','','',''),(190,3,3,'MT','Mathematics','','',''),(191,3,4,'SCI','Science','','',''),(192,3,5,'EVS','Environmental Studies','','',''),(193,3,6,'GK','General Knowledge','','',''),(194,3,17,'SST','Social Studies','','',''),(195,3,1,'HN','Hindi','','',''),(196,3,2,'EN','English','','',''),(197,3,3,'MT','Mathematics','','',''),(198,3,4,'SCI','Science','','',''),(199,3,5,'EVS','Environmental Studies','','',''),(200,3,6,'GK','General Knowledge','','',''),(201,3,17,'SST','Social Studies','','',''),(202,3,1,'HN','Hindi','','',''),(203,3,2,'EN','English','','',''),(204,3,3,'MT','Mathematics','','',''),(205,3,4,'SCI','Science','','',''),(206,3,5,'EVS','Environmental Studies','','',''),(207,3,6,'GK','General Knowledge','','',''),(208,3,17,'SST','Social Studies','','',''),(209,1,1,'HN','Hindi','','',''),(210,1,2,'EN','English','','',''),(211,1,3,'MT','Mathematics','','',''),(212,1,4,'SCI','Science','','',''),(213,1,5,'EVS','Environmental Studies','','',''),(214,1,6,'GK','General Knowledge','','',''),(215,1,17,'SST','Social Studies','','',''),(216,1,1,'HN','Hindi','','',''),(217,1,2,'EN','English','','',''),(218,1,3,'MT','Mathematics','','',''),(219,1,4,'SCI','Science','','',''),(220,1,5,'EVS','Environmental Studies','','',''),(221,1,6,'GK','General Knowledge','','',''),(222,1,17,'SST','Social Studies','','',''),(223,1,1,'HN','Hindi','','',''),(224,1,2,'EN','English','','',''),(225,1,3,'MT','Mathematics','','',''),(226,1,4,'SCI','Science','','',''),(227,1,5,'EVS','Environmental Studies','','',''),(228,1,6,'GK','General Knowledge','','',''),(229,1,17,'SST','Social Studies','','',''),(230,1,1,'HN','Hindi','','',''),(231,1,2,'EN','English','','',''),(232,1,3,'MT','Mathematics','','',''),(233,1,4,'SCI','Science','','',''),(234,1,5,'EVS','Environmental Studies','','',''),(235,1,6,'GK','General Knowledge','','',''),(236,1,17,'SST','Social Studies','','',''),(237,1,1,'HN','Hindi','','',''),(238,1,2,'EN','English','','',''),(239,1,3,'MT','Mathematics','','',''),(240,1,4,'SCI','Science','','',''),(241,1,5,'EVS','Environmental Studies','','',''),(242,1,6,'GK','General Knowledge','','',''),(243,1,17,'SST','Social Studies','','',''),(244,1,1,'HN','Hindi','','',''),(245,1,2,'EN','English','','',''),(246,1,3,'MT','Mathematics','','',''),(247,1,4,'SCI','Science','','',''),(248,1,5,'EVS','Environmental Studies','','',''),(249,1,6,'GK','General Knowledge','','',''),(250,1,17,'SST','Social Studies','','',''),(251,1,1,'HN','Hindi','','',''),(252,1,2,'EN','English','','',''),(253,1,3,'MT','Mathematics','','',''),(254,1,4,'SCI','Science','','',''),(255,1,5,'EVS','Environmental Studies','','',''),(256,1,6,'GK','General Knowledge','','',''),(257,1,17,'SST','Social Studies','','',''),(303,5,1,'HN','Hindi','6999','','2017-2018'),(304,5,2,'EN','English','6999','','2017-2018'),(305,5,3,'MT','Mathematics','6999','','2017-2018'),(306,5,6,'GK','General Knowledge','6999','','2017-2018'),(307,5,17,'SST','Social Studies','6999','','2017-2018'),(308,5,1,'HN','Hindi','6999','','2017-2018'),(309,5,2,'EN','English','6999','','2017-2018'),(310,5,3,'MT','Mathematics','6999','','2017-2018'),(311,5,6,'GK','General Knowledge','6999','','2017-2018'),(312,5,17,'SST','Social Studies','6999','','2017-2018'),(499,2,1,'HN','Hindi','6999','','2017-2018'),(500,2,2,'EN','English','6999','','2017-2018'),(501,2,3,'MT','Mathematics','6999','','2017-2018'),(502,2,4,'SCI','Science','6999','','2017-2018'),(503,2,5,'EVS','Environmental Studies','6999','','2017-2018'),(504,2,6,'GK','General Knowledge','6999','','2017-2018'),(505,2,17,'SST','Social Studies','6999','','2017-2018'),(548,7,1,'HN','Hindi','6999','','2017-2018'),(549,7,2,'EN','English','6999','','2017-2018'),(550,7,3,'MT','Mathematics','6999','','2017-2018'),(551,7,4,'SCI','Science','6999','','2017-2018'),(552,7,5,'EVS','Environmental Studies','6999','','2017-2018'),(553,7,6,'GK','General Knowledge','6999','','2017-2018'),(554,7,17,'SST','Social Studies','6999','','2017-2018'),(559,2,2,'EN','English','','',''),(586,6,2,'EN','English','6999','','2017-2018'),(587,6,5,'EVS','Environmental Studies','6999','','2017-2018'),(634,4,1,'HN','Hindi','6999','','2017-2018'),(635,4,2,'EN','English','6999','','2017-2018'),(636,4,3,'MT','Mathematics','6999','','2017-2018'),(637,4,4,'SCI','Science','6999','','2017-2018'),(638,4,5,'EVS','Environmental Studies','6999','','2017-2018'),(639,4,17,'SST','Social Studies','6999','','2017-2018'),(640,13,2,'EN','English','6999','','2017-2018'),(641,13,3,'MT','Mathematics','6999','','2017-2018'),(642,13,4,'SCI','Science','6999','','2017-2018'),(650,1,1,'HN','Hindi','6999','','2017-2018'),(651,1,2,'EN','English','6999','','2017-2018'),(652,1,3,'MT','Mathematics','6999','','2017-2018'),(653,1,4,'SCI','Science','6999','','2017-2018'),(654,1,5,'EVS','Environmental Studies','6999','','2017-2018'),(655,1,6,'GK','General Knowledge','6999','','2017-2018'),(656,1,17,'SST','Social Studies','6999','','2017-2018'),(662,8,1,'HN','Hindi','6999','','2017-2018'),(663,8,2,'EN','English','6999','','2017-2018'),(664,8,3,'MT','Mathematics','6999','','2017-2018'),(665,8,4,'SCI','Science','6999','','2017-2018'),(666,8,17,'SST','Social Studies','6999','','2017-2018');
/*!40000 ALTER TABLE `tbl_assign_subject_to_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_assign_teacher`
--

DROP TABLE IF EXISTS `tbl_assign_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_assign_teacher` (
  `assign_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `teacher_code` varchar(35) NOT NULL,
  `user_reference_id` bigint(11) NOT NULL,
  `school_id` varchar(35) NOT NULL,
  `class_id` int(6) NOT NULL,
  `section` varchar(2) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `subject_name` varchar(35) NOT NULL,
  `class_teacher_status` int(1) NOT NULL,
  `subject_teacher_status` varchar(1) NOT NULL,
  `assign_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `discontinue_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `school_code` varchar(40) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `assigned_by_id` varchar(35) NOT NULL,
  `assigned_by_name` varchar(35) NOT NULL,
  `remark` varchar(150) NOT NULL,
  `active_state` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_assign_teacher`
--

LOCK TABLES `tbl_assign_teacher` WRITE;
/*!40000 ALTER TABLE `tbl_assign_teacher` DISABLE KEYS */;
INSERT INTO `tbl_assign_teacher` VALUES (1,'SWAU05170094',182,'',5,'A','','',1,'0','2017-06-30 12:48:48','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(2,'SWAU05170094',182,'',5,'A','3','Mathematics',0,'1','2017-06-30 12:48:48','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(3,'SWAU05170094',182,'',5,'A','4','Science',0,'1','2017-06-30 12:48:48','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(4,'SWAU05170094',182,'',5,'A','2','English',0,'1','2017-06-30 12:48:48','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(5,'SWAU05170094',182,'',5,'A','17','Social Studies',0,'1','2017-06-30 12:48:48','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(6,'SWAU05170094',182,'',5,'A','5','Environment',0,'1','2017-06-30 12:48:48','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(7,'SWAU05170094',182,'',5,'A','1','Hindi',0,'1','2017-06-30 12:48:48','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(8,'SWAU05170094',182,'',3,'A','3','Mathematics',0,'1','2017-06-30 05:38:56','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(9,'SWAU05170094',182,'',3,'A','17','Social Studies',0,'1','2017-06-30 05:38:57','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(10,'SWAU05170094',182,'',3,'A','4','Science',0,'1','2017-06-30 05:38:59','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(11,'SWAU05170094',182,'',3,'A','2','English',0,'1','2017-06-30 05:39:05','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(12,'SWAU05170094',182,'',3,'A','2','English',0,'1','2017-06-30 05:39:08','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(13,'SWAU05170094',182,'',3,'A','5','Environment',0,'1','2017-06-30 05:39:16','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(14,'SWAU05170094',182,'',3,'A','1','Hindi',0,'1','2017-06-30 05:39:20','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(15,'SWAU05170092',179,'',1,'A','3','Mathematics',0,'1','2017-06-30 05:41:20','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','tet',1,0),(16,'SWAU05170092',179,'',1,'A','','',1,'0','2017-06-30 05:41:25','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(17,'SWAU05170081',160,'',1,'A','','',1,'0','2017-06-30 05:41:35','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(18,'SWAU05170081',160,'',1,'A','4','Science',0,'1','2017-06-30 05:41:41','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(19,'SWAU05170081',160,'',1,'A','2','English',0,'1','2017-06-30 05:41:45','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(20,'SWAU05170081',160,'',1,'A','17','Social Studies',0,'1','2017-06-30 05:41:47','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(21,'SWAU05170081',160,'',1,'A','6','General Knowledge',0,'1','2017-06-30 05:41:55','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(22,'SWAU05170081',160,'',1,'A','3','Mathematics',0,'1','2017-06-30 05:42:04','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(23,'SWAU05170081',160,'',1,'A','5','Environment',0,'1','2017-06-30 05:42:06','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(24,'SWAU05170081',160,'',2,'A','4','Science',0,'1','2017-06-30 05:42:20','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(25,'SWAU05170081',160,'',2,'A','5','Environment',0,'1','2017-06-30 05:42:21','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(26,'SWAU05170081',160,'',2,'A','1','Hindi',0,'1','2017-06-30 05:42:23','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(27,'SWAU05170081',160,'',2,'A','17','Social Studies',0,'1','2017-06-30 05:42:28','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(28,'SWAU05170081',160,'',2,'A','3','Mathematics',0,'1','2017-06-30 05:42:29','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(29,'SWAU05170081',160,'',2,'A','2','English',0,'1','2017-06-30 05:42:30','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(30,'SWAU05170081',160,'',4,'A','3','Mathematics',0,'1','2017-06-30 05:43:20','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(31,'SWAU05170081',160,'',4,'A','1','Hindi',0,'1','2017-06-30 05:43:23','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(32,'SWAU05170081',160,'',4,'A','2','English',0,'1','2017-06-30 05:43:29','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(33,'SWAU05170081',160,'',4,'A','5','Environment',0,'1','2017-06-30 05:43:30','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(34,'SWAU05170081',160,'',4,'A','4','Science',0,'1','2017-06-30 05:43:31','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(35,'SWAU05170081',160,'',4,'A','6','General Knowledge',0,'1','2017-06-30 05:43:42','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','test',1,0),(36,'SWAU05170081',160,'',4,'A','17','Social Studies',0,'1','2017-06-30 05:44:05','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(37,'SWAU05170081',160,'',6,'A','2','English',0,'1','2017-06-30 05:44:28','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(38,'SWAU05170081',160,'',6,'A','17','Social Studies',0,'1','2017-06-30 05:44:30','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(39,'SWAU05170081',160,'',6,'A','3','Mathematics',0,'1','2017-06-30 05:44:38','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(40,'SWAU05170081',160,'',6,'A','1','Hindi',0,'1','2017-06-30 05:44:41','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(41,'SWAU05170081',160,'',6,'A','4','Science',0,'1','2017-06-30 05:44:43','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(42,'SWAU05170094',182,'',7,'A','2','English',0,'1','2017-06-30 05:46:46','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(43,'SWAU05170094',182,'',7,'A','17','Social Studies',0,'1','2017-06-30 05:46:48','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(44,'SWAU05170094',182,'',7,'A','4','Science',0,'1','2017-06-30 05:46:50','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(45,'SWAU05170094',182,'',7,'A','3','Mathematics',0,'1','2017-06-30 05:46:50','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(46,'SWAU05170094',182,'',7,'A','1','Hindi',0,'1','2017-06-30 05:46:54','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(47,'SWAU05170081',160,'',6,'A','5','Environmental Studies',0,'1','2017-06-30 10:12:42','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(48,'SWAU05170081',160,'',8,'A','','',1,'0','2017-06-30 11:37:38','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(49,'SWAU05170081',160,'',8,'A','1','Hindi',0,'1','2017-06-30 11:37:40','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(50,'SWAU05170081',160,'',8,'A','2','English',0,'1','2017-06-30 11:37:41','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(51,'SWAU05170081',160,'',8,'A','17','Social Studies',0,'1','2017-06-30 11:37:43','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(52,'SWAU05170081',160,'',8,'A','3','Mathematics',0,'1','2017-06-30 11:37:48','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(53,'SWAU05170081',160,'',8,'A','4','Science',0,'1','2017-06-30 11:37:50','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(54,'SWAU05170081',160,'',8,'A','4','Science',0,'1','2017-06-30 11:37:55','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(55,'SWAU05170081',160,'',7,'A','5','Environmental Studies',0,'1','2017-06-30 11:38:05','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(56,'SWAU05170094',182,'',5,'A','1','Hindi',0,'1','2017-06-30 12:49:04','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(57,'SWAU05170094',182,'',5,'A','3','Mathematics',0,'1','2017-06-30 12:49:06','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(58,'SWAU05170094',182,'',5,'A','4','Science',0,'1','2017-06-30 12:49:12','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(59,'SWAU05170094',182,'',5,'A','2','English',0,'1','2017-06-30 12:49:15','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(60,'SWAU05170094',182,'',5,'A','17','Social Studies',0,'1','2017-06-30 12:49:18','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(61,'SWAU05170094',182,'',5,'A','4','Science',0,'1','2017-06-30 12:49:21','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(62,'SWAU05170094',182,'',5,'A','17','Social Studies',0,'1','2017-06-30 12:49:32','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(63,'SWAU05170094',182,'',5,'A','2','English',0,'1','2017-06-30 12:49:33','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(64,'SWAU05170094',182,'',5,'A','5','Environmental Studies',0,'1','2017-06-30 12:49:35','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1),(65,'SWAU05170094',182,'',5,'A','','',1,'0','2017-06-30 12:50:25','0000-00-00 00:00:00','6999','DE INDIAN PUBLIC SCHOOL','2017-2018','GBDIPS001','Rajiv Gupta','',1,1);
/*!40000 ALTER TABLE `tbl_assign_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_attempt_assessment`
--

DROP TABLE IF EXISTS `tbl_attempt_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attempt_assessment` (
  `attempt_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assessment_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `class_id` int(6) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `answer_id` int(5) NOT NULL,
  `answer_text` varchar(300) NOT NULL,
  `user_ans_text` varchar(150) NOT NULL,
  `marks` int(5) NOT NULL COMMENT 'per_question_mark',
  `obtained_marks` int(3) NOT NULL,
  `percentage` float NOT NULL,
  `CorrectWrong` int(1) NOT NULL,
  `time_taken` time NOT NULL,
  `user_reference_id` varchar(35) NOT NULL,
  `school_code` varchar(35) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `attempt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`attempt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attempt_assessment`
--

LOCK TABLES `tbl_attempt_assessment` WRITE;
/*!40000 ALTER TABLE `tbl_attempt_assessment` DISABLE KEYS */;
INSERT INTO `tbl_attempt_assessment` VALUES (1,2,120,4,'SCI',0,'synthetic threads,Covered,switched off,Careful,crowd','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:45','140','6999','2017-2018','2017-07-01 05:37:55',1),(2,2,123,4,'SCI',0,'natural,Synthetic,Tailor,Naphthalene,flax','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:45','140','6999','2017-2018','2017-07-01 05:37:57',1),(3,2,331,4,'SCI',0,'Muscular energy, Wind energy, Chemical energy, Wheel and axle, Lever, Pulley','Null,Null,Null,Null,Null,Null',6,0,0,-1,'01:54:45','140','6999','2017-2018','2017-07-01 05:37:59',1),(4,2,332,4,'SCI',0,'Moon, Planet, Star, Solar System, Galaxy','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:45','140','6999','2017-2018','2017-07-01 05:38:06',1),(5,2,334,4,'SCI',0,'Chlorophyll, Carbon dioxide, Oxygen, Glucose, Stomata','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:45','140','6999','2017-2018','2017-07-01 05:38:08',1),(6,2,591,4,'SCI',0,'omnivores,amphibians,aquatic , gills or lungs,hibernation,terrestrial','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:45','140','6999','2017-2018','2017-07-01 05:38:09',1),(7,2,595,4,'SCI',0,'teeth,canines,milk teeth,neck,dentist','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:45','140','6999','2017-2018','2017-07-01 05:38:09',1),(8,2,1991,4,'SCI',0,'True,True,False,True,False,True','Null,Null,Null,Null,Null,Null',6,0,0,-1,'01:54:45','140','6999','2017-2018','2017-07-01 05:38:10',1),(9,2,592,4,'SCI',0,'amphibian,zebra','amphibian,zebra',3,3,100,1,'01:54:45','140','6999','2017-2018','2017-07-01 05:38:11',1),(10,2,594,4,'SCI',0,'carbohydrates,Proteins,fats,Vitamins,digestion,eight','Null,Null,Null,Null,Null,Null',6,0,0,-1,'01:54:45','140','6999','2017-2018','2017-07-01 05:38:12',1),(11,2,120,4,'SCI',0,'synthetic threads,Covered,switched off,Careful,crowd','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:17',1),(12,2,123,4,'SCI',0,'natural,Synthetic,Tailor,Naphthalene,flax','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:21',1),(13,2,331,4,'SCI',0,'Muscular energy, Wind energy, Chemical energy, Wheel and axle, Lever, Pulley','Null,Null,Null,Null,Null,Null',6,0,0,-1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:23',1),(14,2,332,4,'SCI',0,'Moon, Planet, Star, Solar System, Galaxy','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:27',1),(15,2,334,4,'SCI',0,'Chlorophyll, Carbon dioxide, Oxygen, Glucose, Stomata','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:30',1),(16,2,591,4,'SCI',0,'omnivores,amphibians,aquatic , gills or lungs,hibernation,terrestrial','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:32',1),(17,2,1991,4,'SCI',0,'True,True,False,True,False,True','Null,Null,Null,Null,Null,Null',6,0,0,-1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:33',1),(18,2,592,4,'SCI',0,'amphibian,zebra','amphibian,zebra',3,3,100,1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:40',1),(19,2,594,4,'SCI',0,'carbohydrates,Proteins,fats,Vitamins,digestion,eight','Null,Null,Null,Null,Null,Null',6,0,0,-1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:45',1),(20,2,595,4,'SCI',0,'teeth,canines,milk teeth,neck,dentist','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:42','140','6999','2017-2018','2017-07-01 05:38:50',1),(21,2,120,4,'SCI',0,'synthetic threads,Covered,switched off,Careful,crowd','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:40','140','6999','2017-2018','2017-07-01 05:38:55',1),(22,2,123,4,'SCI',0,'natural,Synthetic,Tailor,Naphthalene,flax','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:40','140','6999','2017-2018','2017-07-01 05:38:55',1),(23,2,331,4,'SCI',0,'Muscular energy, Wind energy, Chemical energy, Wheel and axle, Lever, Pulley','Null,Null,Null,Null,Null,Null',6,0,0,-1,'01:54:40','140','6999','2017-2018','2017-07-01 05:38:57',1),(24,2,332,4,'SCI',0,'Moon, Planet, Star, Solar System, Galaxy','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:40','140','6999','2017-2018','2017-07-01 05:38:57',1),(25,2,334,4,'SCI',0,'Chlorophyll, Carbon dioxide, Oxygen, Glucose, Stomata','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:40','140','6999','2017-2018','2017-07-01 05:38:57',1),(26,2,591,4,'SCI',0,'omnivores,amphibians,aquatic , gills or lungs,hibernation,terrestrial','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:40','140','6999','2017-2018','2017-07-01 05:38:57',1),(27,2,1991,4,'SCI',0,'True,True,False,True,False,True','Null,Null,Null,Null,Null,Null',6,0,0,-1,'01:54:40','140','6999','2017-2018','2017-07-01 05:38:58',1),(28,2,592,4,'SCI',0,'amphibian,zebra','amphibian,zebra',3,3,100,1,'01:54:40','140','6999','2017-2018','2017-07-01 05:38:59',1),(29,2,594,4,'SCI',0,'carbohydrates,Proteins,fats,Vitamins,digestion,eight','Null,Null,Null,Null,Null,Null',6,0,0,-1,'01:54:40','140','6999','2017-2018','2017-07-01 05:39:00',1),(30,2,595,4,'SCI',0,'teeth,canines,milk teeth,neck,dentist','Null,Null,Null,Null,Null',5,0,0,-1,'01:54:40','140','6999','2017-2018','2017-07-01 05:39:00',1),(31,5,342,4,'SST',0,'Telephone, mass, Postal, Fortnightly, The Times of India','',5,0,0,-1,'00:59:13','140','6999','2017-2018','2017-07-01 08:04:29',1),(32,5,345,4,'SST',0,'Oasis,  Aravalli,  Thorny,  Indira Gandhi,           Banjaras','',5,0,0,-1,'00:59:13','140','6999','2017-2018','2017-07-01 08:04:30',1),(33,5,350,4,'SST',0,'Evergreen,  deciduous, exhaustible,  Mangrove','',4,0,0,-1,'00:59:13','140','6999','2017-2018','2017-07-01 08:04:34',1),(34,5,602,4,'SST',0,'Capital,  29,  India,   Lakshadweep,  Mysore','',5,0,0,-1,'00:59:13','140','6999','2017-2018','2017-07-01 08:04:46',1),(35,5,335,4,'SST',0,'Bhilai,Ahmedabad,Gurgaon,jute and automobile,electronics','Bhilai,jute and automobile,Ahmedabad,Gurgaon,electronics',5,2,40,0,'00:59:13','140','6999','2017-2018','2017-07-01 08:04:57',1),(36,7,1936,2,'SST',0,'False,True,True,False','true,true,true,true',4,0,0,0,'00:00:00','92','6999','2017-2018','2017-07-01 08:21:05',1),(37,7,1937,2,'SST',0,'True,True,False,False','true,false,true,true',4,4,100,0,'00:00:00','92','6999','2017-2018','2017-07-01 08:21:05',1),(38,7,1938,2,'SST',0,'No,Yes,Yes,Yes,Yes,No','true,false,true,false,true,false',4,0,0,0,'00:00:00','92','6999','2017-2018','2017-07-01 08:21:08',1),(39,10,85,4,'EN',0,'invite,were,own,was,have,has learnt,sings,is looking','Null,Null,Null,Null,Null,Null,Null,Null',8,0,0,-1,'01:59:47','122','6999','2017-2018','2017-07-03 05:51:34',1),(40,10,90,4,'EN',0,'Some,a few,much,a little','Null,Null,Null,Null',4,0,0,-1,'01:59:47','122','6999','2017-2018','2017-07-03 05:51:34',1),(41,10,94,4,'EN',0,'was crying,were distributing,threw,were arranging,travelled','Null,Null,Null,Null,Null',5,0,0,-1,'01:59:47','122','6999','2017-2018','2017-07-03 05:51:34',1),(42,11,1304,4,'EN',1,'beside','ï¿½bï¿½eï¿½sï¿½iï¿½dï¿½e',1,0,0,0,'01:59:21','122','6999','2017-2018','2017-07-03 08:36:16',1),(43,11,1305,4,'EN',4,'I live near the school.','I live near the school.',1,1,100,1,'01:59:21','122','6999','2017-2018','2017-07-03 08:36:19',1),(44,11,1306,4,'EN',3,'We can see wild animals near the zoo.','We can see wild animals near the zoo.',1,1,100,1,'01:59:21','122','6999','2017-2018','2017-07-03 08:36:20',1),(45,11,1307,4,'EN',1,'or','ï¿½oï¿½r',1,0,0,0,'01:59:21','122','6999','2017-2018','2017-07-03 08:36:21',1),(46,11,1308,4,'EN',1,'I have a sister but I dont have a brother.','ï¿½Iï¿½ ï¿½hï¿½aï¿½vï¿½eï¿½ ï¿½aï¿½ ï¿½sï¿½iï¿½sï¿½tï¿½eï¿½rï¿½ ï¿½yï¿½eï¿½tï¿½ ï¿½Iï¿½ ï¿½dï¿½oï¿½nï¿½tï¿½ ï¿½hï¿½aï¿½vï¿½eï¿½ ï¿½aï¿½ ï¿½bï¿½rï¿½oï¿',1,0,0,0,'01:59:21','122','6999','2017-2018','2017-07-03 08:36:22',1),(47,13,152,1,'EN',0,'in,under,over,on','in,under,over,on',4,4,100,1,'00:57:39','188','6999','2017-2018','2017-07-04 07:08:31',1),(48,13,157,1,'EN',0,'interesting,smart,tasty,large,crowded','interesting,smart,tasty,large,crowded',5,5,100,1,'00:57:39','188','6999','2017-2018','2017-07-04 07:08:32',1),(49,13,682,1,'EN',4,'and','None of these',1,0,0,0,'00:57:39','188','6999','2017-2018','2017-07-04 07:08:36',1),(50,13,683,1,'EN',4,'Do you want tea or coffee?','Do you want coffees and tea?',1,1,100,0,'00:57:39','188','6999','2017-2018','2017-07-04 07:08:37',1),(51,13,693,1,'EN',4,'Fly','Fly',1,1,100,1,'00:57:39','188','6999','2017-2018','2017-07-04 07:08:38',1),(52,17,87,4,'EN',0,'was discovered,were sealed,were made,was elected,can be borrowed,is celebrated','was discovered,were sealed,were made,was elected,can be borrowed,is celebrated',6,6,100,1,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:22',1),(53,17,89,4,'EN',0,'gang,heap,herd,jury,orchard','gang,heap,herd,jury,orchard',5,5,100,1,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:24',1),(54,17,93,4,'EN',0,'a little,a few,a little,A few,a little','a little,a few,a little,A few,a little',10,10,100,1,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:24',1),(55,17,312,4,'EN',0,'Noun, Adjective, Verb, Adverb, Pronoun','Null,Null,Null,Null,Null',5,0,0,-1,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:25',1),(56,17,314,4,'EN',0,'should,will,can,am,was,may,have','should,will,can,am,was,may,have',7,7,100,1,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:26',1),(57,17,559,4,'EN',0,'but,and,So,and,as','and,and,and,and,mad',5,2,40,0,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:27',1),(58,17,561,4,'EN',0,'have,havenâ€™t,have,has,Is,is','Null,Null,Null,Null,Null,Null',6,0,0,-1,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:28',1),(59,17,1305,4,'EN',4,'I live near the school.','I live near the school.',1,1,100,1,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:29',1),(60,17,1313,4,'EN',2,'Impersonal','Impersonal',1,1,100,1,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:30',1),(61,17,1341,4,'EN',4,'takes','Will take',1,0,0,0,'00:42:51','122','6999','2017-2018','2017-07-06 07:13:31',1),(62,20,2,1,'EN',0,'swimming, driving, running, playing, eating','',5,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:37',1),(63,20,3,1,'EN',0,'This is???that is,This is???that is,These are???those are,These are???those are','',4,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:37',1),(64,20,4,1,'EN',0,'animals, dogs, cat???rabbit, animals','',4,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:39',1),(65,20,5,1,'EN',0,'a???The,an???The,a???The,A???The','',4,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:39',1),(66,20,151,1,'EN',0,'on, under, in, over','',4,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:40',1),(67,20,153,1,'EN',0,'in, on, under, over,','',5,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:40',1),(68,20,154,1,'EN',0,'Dress, Eyes, Bed, Teddy, Daddy','',5,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:40',1),(69,20,408,1,'EN',0,'c???o, a, o???o, r???w, r???s???s','',5,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:40',1),(70,20,411,1,'EN',0,'reading, wearing, drinking','',6,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:40',1),(71,20,412,1,'EN',0,'the, an, a','',3,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:40',1),(72,20,413,1,'EN',0,'She, She, They, them, They, It,,,,','',10,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:41',1),(73,20,682,1,'EN',0,'and,,,','',1,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:42',1),(74,20,1844,1,'EN',0,'I, O, S, W,,,,','',8,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:42',1),(75,20,1845,1,'EN',0,'Rub, Play, Take, Cry, Write,,,','',8,0,0,-1,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:43',1),(76,20,1,1,'EN',0,'on,over,under,in','Null,over,under,under',3,2,50,0,'00:59:42','82','6999','2017-2018','2017-07-06 09:29:43',1),(77,20,1,1,'EN',0,'on,over,under,in','on,over,under,on',3,2,75,0,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:02',1),(78,20,2,1,'EN',0,'swimming,driving,running,playing,eating','swimming,driving,running,playing,eating',5,5,100,1,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:03',1),(79,20,3,1,'EN',0,'This is,that is,This is,that is,These are,those are,These are,those are','This is,that is,That is,this is,These are,those are,These are,those are',4,3,75,0,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:04',1),(80,20,4,1,'EN',0,'animals,dogs,cat,rabbit,animals','Null',4,0,0,-1,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:05',1),(81,20,5,1,'EN',0,'a,The,an,The,a,The,A,The','a,An,a,The,a,A,A,An',4,2,50,0,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:06',1),(82,20,151,1,'EN',0,'on,under,in,over','Null,Null,Null,Null',4,0,0,-1,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:06',1),(83,20,153,1,'EN',0,'in, on, under, over','Null,Null,Null,Null',5,0,0,-1,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:08',1),(84,20,154,1,'EN',0,'Dress, Eyes, Bed, Teddy, Daddy','Null,Null,Null,Null,Null',5,0,0,-1,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:09',1),(85,20,408,1,'EN',0,'c,o,a,o,o,r,w,r,s,s','Null,Null,Null,Null,Null,Null,Null,Null,Null,Null',5,0,0,-1,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:09',1),(86,20,411,1,'EN',0,'reading,wearing,drinking','reading,Null,drinking',6,4,67,0,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:10',1),(87,20,412,1,'EN',0,'the,an,a','Null,Null,Null',3,0,0,-1,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:10',1),(88,20,413,1,'EN',0,'She,She,They,them,They,It','Null,Null,Null,Null,Null,Null',10,0,0,-1,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:12',1),(89,20,682,1,'EN',4,'and','None of these',1,0,0,0,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:13',1),(90,20,1844,1,'EN',0,'I,O,S,W','correct,correct,correct,correct,correct,correct,correct',8,0,0,0,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:13',1),(91,20,1845,1,'EN',0,'Rub,Play,Take,Cry,Write','correct,correct',8,0,0,0,'00:33:12','94','6999','2017-2018','2017-07-07 05:51:14',1);
/*!40000 ALTER TABLE `tbl_attempt_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_attempt_mock_assessment`
--

DROP TABLE IF EXISTS `tbl_attempt_mock_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attempt_mock_assessment` (
  `attempt_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `assessment_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `class_id` int(6) NOT NULL,
  `subject_id` varchar(8) CHARACTER SET utf8 NOT NULL,
  `answer_id` int(5) NOT NULL,
  `answer_text` varchar(300) CHARACTER SET utf8 NOT NULL,
  `user_ans_text` varchar(150) CHARACTER SET utf8 NOT NULL,
  `marks` int(5) NOT NULL COMMENT 'per_question_mark',
  `obtained_marks` int(3) NOT NULL,
  `percentage` float NOT NULL,
  `CorrectWrong` int(1) NOT NULL,
  `time_taken` time NOT NULL,
  `user_reference_id` varchar(35) CHARACTER SET utf8 NOT NULL,
  `school_code` varchar(35) CHARACTER SET utf8 NOT NULL,
  `academic_year` varchar(15) CHARACTER SET utf8 NOT NULL,
  `attempt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`attempt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attempt_mock_assessment`
--

LOCK TABLES `tbl_attempt_mock_assessment` WRITE;
/*!40000 ALTER TABLE `tbl_attempt_mock_assessment` DISABLE KEYS */;
INSERT INTO `tbl_attempt_mock_assessment` VALUES (1,3,599,4,'SST',0,'Wheat,Kharif,Wheat,Rubber,India','Null,Null,Null,Null,Null',0,0,0,-1,'00:00:00','140','6999','2017-2018','2017-07-01 07:32:17',1),(2,3,1467,4,'SST',0,'Wheat','',0,0,0,-1,'00:00:00','140','6999','2017-2018','2017-07-01 07:32:20',1),(3,3,1468,4,'SST',0,'Coffee','',0,0,0,-1,'00:00:00','140','6999','2017-2018','2017-07-01 07:32:27',1),(4,3,1469,4,'SST',0,'Rice','',0,0,0,-1,'00:00:00','140','6999','2017-2018','2017-07-01 07:32:30',1),(5,3,1470,4,'SST',0,'Jute','',0,0,0,-1,'00:00:00','140','6999','2017-2018','2017-07-01 07:32:34',1),(6,3,1993,4,'SST',0,'True,True,False,True,True','Null,Null,Null,Null,Null',0,0,0,-1,'00:00:00','140','6999','2017-2018','2017-07-01 07:32:35',1),(7,5,55,2,'SST',0,'east,south,north,west','east,Null,Null,Null',0,0,0,0,'00:00:00','92','6999','2017-2018','2017-07-01 07:58:56',1),(8,5,997,2,'SST',1,'Kerala','ï¿½Pï¿½uï¿½nï¿½jï¿½aï¿½b',0,0,0,0,'00:00:00','92','6999','2017-2018','2017-07-01 07:58:58',1),(9,5,999,2,'SST',3,'West','North',0,0,0,0,'00:00:00','92','6999','2017-2018','2017-07-01 07:58:59',1),(10,1,3363,6,'SCI',0,'atmosphere,water vapour,compressed air,wind,water,breeze,windmills,force of gravity','compressed air,atmosphere,water,windmills,breeze,force of gravity,wind,Null',0,0,0,0,'00:00:00','120','6999','2017-2018','2017-07-03 05:35:05',1),(11,1,3364,6,'SCI',0,'True,False,True,True,False,True','Null,Null,Null,Null,Null,Null',0,0,0,-1,'00:00:00','120','6999','2017-2018','2017-07-03 05:35:07',1),(12,1,3365,6,'SCI',0,'No,Yes,Yes','Null,Null,Null',0,0,0,-1,'00:00:00','120','6999','2017-2018','2017-07-03 05:35:14',1),(13,1,3366,6,'SCI',0,'Water,Anemometer','Null,Null',0,0,0,-1,'00:00:00','120','6999','2017-2018','2017-07-03 05:35:17',1),(14,13,599,4,'SST',0,'Wheat,Kharif,Wheat,Rubber,India','Null,Null,Null,Null,Null',0,0,0,-1,'00:00:00','122','6999','2017-2018','2017-07-03 08:54:09',1),(15,13,1467,4,'SST',4,'Wheat','Wheat',0,0,0,1,'00:00:00','122','6999','2017-2018','2017-07-03 08:54:09',1),(16,13,1468,4,'SST',2,'Coffee','Cotton',0,0,0,0,'00:00:00','122','6999','2017-2018','2017-07-03 08:54:09',1),(17,13,1469,4,'SST',3,'Rice','Gram',0,0,0,0,'00:00:00','122','6999','2017-2018','2017-07-03 08:54:09',1),(18,13,1470,4,'SST',2,'Jute','Jute',0,0,0,1,'00:00:00','122','6999','2017-2018','2017-07-03 08:54:09',1),(19,13,1993,4,'SST',0,'True,True,False,True,True','true,true,false,false,true',0,0,0,0,'00:00:00','122','6999','2017-2018','2017-07-03 08:54:09',1);
/*!40000 ALTER TABLE `tbl_attempt_mock_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_chat_communication`
--

DROP TABLE IF EXISTS `tbl_chat_communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_chat_communication` (
  `chat_id` bigint(15) NOT NULL AUTO_INCREMENT,
  `sender_user_id` varchar(50) NOT NULL,
  `posting_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_contents` text NOT NULL,
  `post_img` varchar(150) NOT NULL,
  `reciever_user_id` int(11) NOT NULL,
  `visiting_time` datetime NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_chat_communication`
--

LOCK TABLES `tbl_chat_communication` WRITE;
/*!40000 ALTER TABLE `tbl_chat_communication` DISABLE KEYS */;
INSERT INTO `tbl_chat_communication` VALUES (1,'160','2017-06-30 10:38:22','hi neha madam','',182,'0000-00-00 00:00:00',0),(2,'182','2017-06-30 10:44:09','hi mam\r\nhow r u doing?','',160,'0000-00-00 00:00:00',0),(3,'182','2017-06-30 10:44:26','hi mam\r\nhow r u doing?','',160,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `tbl_chat_communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_chat_request`
--

DROP TABLE IF EXISTS `tbl_chat_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_chat_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_school_code` varchar(20) NOT NULL,
  `sender_user_id` int(11) NOT NULL COMMENT 'user_referance_id',
  `sender_user_type_id` int(2) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reciever_school_code` varchar(20) NOT NULL,
  `reciever_user_id` int(11) NOT NULL,
  `reciever_usertype_id` int(2) NOT NULL,
  `reciever_user_chat_id` varchar(50) NOT NULL,
  `accept_date` datetime NOT NULL,
  `request_status` int(2) NOT NULL COMMENT '1=approved, 2= unapproved',
  `block_status` int(2) NOT NULL COMMENT '0= userBlock,1=user Accept',
  `status` int(2) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_chat_request`
--

LOCK TABLES `tbl_chat_request` WRITE;
/*!40000 ALTER TABLE `tbl_chat_request` DISABLE KEYS */;
INSERT INTO `tbl_chat_request` VALUES (1,'SWA05050005',2,1,'2017-05-05 10:09:35','SWA05050005',3,3,'','2017-05-05 15:39:35',1,1,1),(2,'6999',191,2,'2017-06-09 07:44:56','6999',179,3,'','2017-06-09 13:14:56',1,1,1),(3,'6999',160,3,'2017-06-13 11:21:02','6999',182,3,'','2017-06-13 16:51:02',1,1,1),(4,'6999',160,3,'2017-06-30 10:36:42','6999',33,5,'','0000-00-00 00:00:00',2,1,1),(5,'6999',160,3,'2017-06-30 10:36:42','6999',35,5,'','0000-00-00 00:00:00',2,1,1),(6,'6999',160,3,'2017-06-30 10:36:46','6999',37,5,'','0000-00-00 00:00:00',2,1,1),(7,'6999',160,3,'2017-06-30 10:37:05','6999',39,5,'','0000-00-00 00:00:00',2,1,1),(8,'6999',160,3,'2017-07-03 09:04:32','6999',179,3,'','0000-00-00 00:00:00',2,1,1);
/*!40000 ALTER TABLE `tbl_chat_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_class_section`
--

DROP TABLE IF EXISTS `tbl_class_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_class_section` (
  `class_section_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(5) NOT NULL,
  `section` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `academic_year` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `school_code` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `affiliation_code` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `added_by` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `user_reference_id` bigint(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`class_section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_class_section`
--

LOCK TABLES `tbl_class_section` WRITE;
/*!40000 ALTER TABLE `tbl_class_section` DISABLE KEYS */;
INSERT INTO `tbl_class_section` VALUES (108,8,'A','2017-2018','SWA26040004','1234','Rajiv Gupta',1,'2017-04-25 18:30:00',1),(107,7,'A','2017-2018','SWA26040004','1234','Rajiv Gupta',1,'2017-04-25 18:30:00',1),(106,6,'A','2017-2018','SWA26040004','1234','Rajiv Gupta',1,'2017-04-25 18:30:00',1),(105,5,'A','2017-2018','SWA26040004','1234','Rajiv Gupta',1,'2017-04-25 18:30:00',1),(104,4,'A','2017-2018','SWA26040004','1234','Rajiv Gupta',1,'2017-04-25 18:30:00',1),(103,3,'A','2017-2018','SWA26040004','1234','Rajiv Gupta',1,'2017-04-25 18:30:00',1),(102,2,'A','2017-2018','SWA26040004','1234','Rajiv Gupta',1,'2017-04-25 18:30:00',1),(101,1,'A','2017-2018','SWA26040004','1234','Rajiv Gupta',1,'2017-04-25 18:30:00',1),(100,8,'A','2017-18','SWA25040003','12345','Rajiv Gupta',1,'2017-04-24 18:30:00',1),(99,7,'A','2017-18','SWA25040003','12345','Rajiv Gupta',1,'2017-04-24 18:30:00',1),(98,6,'A','2017-18','SWA25040003','12345','Rajiv Gupta',1,'2017-04-24 18:30:00',1),(97,5,'A','2017-18','SWA25040003','12345','Rajiv Gupta',1,'2017-04-24 18:30:00',1),(96,4,'A','2017-18','SWA25040003','12345','Rajiv Gupta',1,'2017-04-24 18:30:00',1),(95,3,'A','2017-18','SWA25040003','12345','Rajiv Gupta',1,'2017-04-24 18:30:00',1),(94,2,'A','2017-18','SWA25040003','12345','Rajiv Gupta',1,'2017-04-24 18:30:00',1),(93,1,'A','2017-18','SWA25040003','12345','Rajiv Gupta',1,'2017-04-24 18:30:00',1),(91,6,'A','2017-18','SWA04040001','6999','',0,'2017-04-25 07:11:54',0),(90,7,'A','2017-18','SWA04040001','6999','',0,'2017-04-25 07:11:48',0),(89,8,'A','2017-18','SWA04040001','6999','',0,'2017-04-25 07:12:06',0),(92,1,'A','2017-18','SWA04040001','6999','',0,'2017-04-25 07:12:12',0),(88,5,'A','2017-18','SWA22040002','9000','Rajiv Gupta',1,'2017-04-21 18:30:00',1),(87,4,'A','2017-18','SWA22040002','9000','Rajiv Gupta',1,'2017-04-21 18:30:00',1),(86,3,'A','2017-18','SWA22040002','9000','Rajiv Gupta',1,'2017-04-21 18:30:00',1),(85,2,'A','2017-18','SWA22040002','9000','Rajiv Gupta',1,'2017-04-21 18:30:00',1),(68,2,'A','2017-2018','SWA04040001','6999','',0,'2017-04-22 12:15:14',0),(80,3,'A','2017-2018','SWA04040001','6999','Rajiv Gupta',276,'2017-04-22 12:15:22',1),(81,4,'A','2017-2018','SWA04040001','6999','Rajiv Gupta',276,'2017-04-22 12:15:26',1),(82,5,'A','2017-2018','SWA04040001','6999','Rajiv Gupta',276,'2017-04-22 12:15:29',1),(84,1,'A','2017-18','SWA22040002','9000','Rajiv Gupta',1,'2017-04-21 18:30:00',1),(114,2,'A','2017-2018','SWA05050005','4567','Rajiv Gupta',1,'2017-05-04 18:30:00',1),(115,3,'A','2017-2018','SWA05050005','4567','Rajiv Gupta',1,'2017-05-04 18:30:00',1),(116,4,'A','2017-2018','SWA05050005','4567','Rajiv Gupta',1,'2017-05-04 18:30:00',1),(117,5,'A','2017-2018','SWA05050005','4567','Rajiv Gupta',1,'2017-05-04 18:30:00',1),(118,6,'A','2017-2018','SWA05050005','4567','Rajiv Gupta',1,'2017-05-04 18:30:00',1),(119,7,'A','2017-2018','SWA05050005','4567','Rajiv Gupta',1,'2017-05-04 18:30:00',1),(120,8,'A','2017-2018','SWA05050005','4567','Rajiv Gupta',1,'2017-05-04 18:30:00',1),(161,3,'A','2017-2018','6999','','',0,'2017-07-06 05:40:22',0),(130,1,'A','2017-2018','6999','','',0,'2017-05-16 05:56:37',0),(131,2,'A','2017-2018','6999','','',0,'2017-05-16 05:56:41',0),(133,4,'A','2017-2018','6999','','',0,'2017-05-16 05:56:50',0),(134,5,'A','2017-2018','6999','','',0,'2017-05-16 05:56:55',0),(135,6,'A','2017-2018','6999','','',0,'2017-05-16 05:57:00',0),(136,7,'A','2017-2018','6999','','',0,'2017-05-16 05:57:03',0),(137,1,'A','2017-2018','SWA11DIPS85','123456','Rajiv Gupta',151,'2017-05-22 20:00:00',1),(138,2,'A','2017-2018','SWA11DIPS85','123456','Rajiv Gupta',151,'2017-05-22 20:00:00',1),(139,3,'A','2017-2018','SWA11DIPS85','123456','Rajiv Gupta',151,'2017-05-22 20:00:00',1),(140,4,'A','2017-2018','SWA11DIPS85','123456','Rajiv Gupta',151,'2017-05-22 20:00:00',1),(141,5,'A','2017-2018','SWA11DIPS85','123456','Rajiv Gupta',151,'2017-05-22 20:00:00',1),(142,6,'A','2017-2018','SWA11DIPS85','123456','Rajiv Gupta',151,'2017-05-22 20:00:00',1),(143,7,'A','2017-2018','SWA11DIPS85','123456','Rajiv Gupta',151,'2017-05-22 20:00:00',1),(144,8,'A','2017-2018','SWA11DIPS85','123456','Rajiv Gupta',151,'2017-05-22 20:00:00',1),(152,1,'A','2017-2018','SWA11LSPS34','10001','Rajiv Gupta',196,'2017-06-23 20:00:00',1),(153,2,'A','2017-2018','SWA11LSPS34','10001','Rajiv Gupta',196,'2017-06-23 20:00:00',1),(154,3,'A','2017-2018','SWA11LSPS34','10001','Rajiv Gupta',196,'2017-06-23 20:00:00',1),(155,4,'A','2017-2018','SWA11LSPS34','10001','Rajiv Gupta',196,'2017-06-23 20:00:00',1),(156,5,'A','2017-2018','SWA11LSPS34','10001','Rajiv Gupta',196,'2017-06-23 20:00:00',1),(157,6,'A','2017-2018','SWA11LSPS34','10001','Rajiv Gupta',196,'2017-06-23 20:00:00',1),(158,7,'A','2017-2018','SWA11LSPS34','10001','Rajiv Gupta',196,'2017-06-23 20:00:00',1),(159,8,'A','2017-2018','SWA11LSPS34','10001','Rajiv Gupta',196,'2017-06-23 20:00:00',1);
/*!40000 ALTER TABLE `tbl_class_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_famarks`
--

DROP TABLE IF EXISTS `tbl_famarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_famarks` (
  `fa_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(11) NOT NULL,
  `registration_no` varchar(40) NOT NULL,
  `class_id` int(3) NOT NULL,
  `section` varchar(3) NOT NULL,
  `subject_id` int(2) NOT NULL,
  `date_of_exam` date NOT NULL,
  `term` int(2) NOT NULL,
  `ead_id` varchar(400) NOT NULL,
  `mi_id` varchar(400) NOT NULL,
  `kuase_id` int(3) NOT NULL,
  `indicator_id` int(3) NOT NULL,
  `total_marks` int(3) NOT NULL,
  `obtained_marks` int(3) NOT NULL,
  `percentage` float NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `marks_entry_type` varchar(10) NOT NULL DEFAULT 'Auto',
  `assessment_name` varchar(70) NOT NULL,
  `assessment_id` varchar(50) NOT NULL,
  `school_code` varchar(35) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `user_reference_id` varchar(20) NOT NULL,
  `add_by_user` bigint(11) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`fa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_famarks`
--

LOCK TABLES `tbl_famarks` WRITE;
/*!40000 ALTER TABLE `tbl_famarks` DISABLE KEYS */;
INSERT INTO `tbl_famarks` VALUES (1,70,'SWAS05170070',4,'A',4,'2017-07-01',1,' 120|1|-1|0, 123|1|-1|0, 331|2|-1|0, 332|2|-1|0, 334|2|-1|0, 591|1|-1|0, 595|1|-1|0, 1991|2|-1|0, 592|2|1|100, 594|1|-1|0',' 120|3|-1|0, 123|7|-1|0, 331|4|-1|0, 332|3|-1|0, 334|7|-1|0, 591|7|-1|0, 595|7|-1|0, 1991|7|-1|0, 592|3|1|100, 594|7|-1|0',0,0,51,3,5.88,'','Auto','Half-Yearly Exam','2','6999','2017-2018','140',140,1),(2,70,'SWAS05170070',4,'A',4,'2017-07-01',1,' 120|1|-1|0, 123|1|-1|0, 331|2|-1|0, 332|2|-1|0, 334|2|-1|0, 591|1|-1|0, 1991|2|-1|0, 592|2|1|100, 594|1|-1|0, 595|1|-1|0',' 120|3|-1|0, 123|7|-1|0, 331|4|-1|0, 332|3|-1|0, 334|7|-1|0, 591|7|-1|0, 1991|7|-1|0, 592|3|1|100, 594|7|-1|0, 595|7|-1|0',0,0,51,3,5.88,'','Auto','Half-Yearly Exam','2','6999','2017-2018','140',140,1),(3,70,'SWAS05170070',4,'A',4,'2017-07-01',1,' 120|1|-1|0, 123|1|-1|0, 331|2|-1|0, 332|2|-1|0, 334|2|-1|0, 591|1|-1|0, 1991|2|-1|0, 592|2|1|100, 594|1|-1|0, 595|1|-1|0',' 120|3|-1|0, 123|7|-1|0, 331|4|-1|0, 332|3|-1|0, 334|7|-1|0, 591|7|-1|0, 1991|7|-1|0, 592|3|1|100, 594|7|-1|0, 595|7|-1|0',0,0,51,3,5.88,'','Auto','Half-Yearly Exam','2','6999','2017-2018','140',140,1),(4,70,'SWAS05170070',4,'A',17,'2017-07-01',1,' 342||-1|0, 345||-1|0, 350||-1|0, 602||-1|0, 335|1|0|40',' 342||-1|0, 345||-1|0, 350||-1|0, 602||-1|0, 335|7|0|40',0,0,24,2,8.33,'','Auto','Half-Yearly Exam','5','6999','2017-2018','140',140,1),(5,46,'SWAS05170046',2,'A',17,'2017-07-01',1,' 1936|1|0|0, 1937|2|0|100, 1938|1|0|0',' 1936|7|0|0, 1937|7|0|100, 1938|4|0|0',0,0,12,4,33.33,'','Auto','Practice Paper 1','7','6999','2017-2018','92',92,1),(6,61,'SWAS05170061',4,'A',2,'2017-07-03',1,' 85|2|-1|0, 90|2|-1|0, 94|2|-1|0',' 85|3|-1|0, 90|6|-1|0, 94|3|-1|0',0,0,17,0,0,'','Auto','Half-Yearly Exam','10','6999','2017-2018','122',122,1),(7,61,'SWAS05170061',4,'A',2,'2017-07-03',1,' 1304|2|0|0, 1305|2|1|100, 1306|3|1|100, 1307|1|0|0, 1308|3|0|0',' 1304|6|0|0, 1305|3|1|100, 1306|3|1|100, 1307|6|0|0, 1308|3|0|0',0,0,5,2,40,'','Auto','Unit Test','11','6999','2017-2018','122',122,1),(8,91,'SWAS05170091',1,'A',2,'2017-07-04',1,' 152|2|1|100, 157|2|1|100, 682|2|0|0, 683|3|0|100, 693|3|1|100',' 152|4|1|100, 157|3|1|100, 682|6|0|0, 683|6|0|100, 693|3|1|100',0,0,12,11,91.67,'','Auto','Test-1','13','6999','2017-2018','188',188,1),(9,61,'SWAS05170061',4,'A',2,'2017-07-06',1,' 87|2|1|100, 89|2|1|100, 93|2|1|100, 312|2|-1|0, 314|2|1|100, 559|2|0|40, 561|2|-1|0, 1305|2|1|100, 1313|3|1|100, 1341|1|0|0',' 87|3|1|100, 89|3|1|100, 93|6|1|100, 312|3|-1|0, 314|6|1|100, 559|6|0|40, 561|6|-1|0, 1305|3|1|100, 1313|6|1|100, 1341|6|0|0',0,0,47,32,68.09,'','Auto','testing','17','6999','2017-2018','122',122,1),(10,41,'SWAS05170041',1,'A',2,'2017-07-06',1,' 2||-1|0, 3||-1|0, 4||-1|0, 5||-1|0, 151||-1|0, 153||-1|0, 154||-1|0, 408||-1|0, 411||-1|0, 412||-1|0, 413||-1|0, 682||-1|0, 1844||-1|0, 1845||-1|0, 1|2|0|50',' 2||-1|0, 3||-1|0, 4||-1|0, 5||-1|0, 151||-1|0, 153||-1|0, 154||-1|0, 408||-1|0, 411||-1|0, 412||-1|0, 413||-1|0, 682||-1|0, 1844||-1|0, 1845||-1|0, 1|4|0|50',0,0,75,2,2,'','Auto','Half-Yearly Exam','20','6999','2017-2018','82',82,1),(11,47,'SWAS05170047',1,'A',2,'2017-07-07',1,' 1|2|0|75, 2|1|1|100, 3|1|0|75, 4|2|-1|0, 5|2|0|50, 151|1|-1|0, 153|3|-1|0, 154|1|-1|0, 408|2|-1|0, 411|3|0|67, 412|2|-1|0, 413|3|-1|0, 682|2|0|0, 1844|1|0|0, 1845|2|0|0',' 1|4|0|75, 2|4|1|100, 3|4|0|75, 4|6|-1|0, 5|6|0|50, 151|4|-1|0, 153|6|-1|0, 154|4|-1|0, 408|6|-1|0, 411|6|0|67, 412|6|-1|0, 413|6|-1|0, 682|6|0|0, 1844|3|0|0, 1845|6|0|0',0,0,75,16,21.67,'','Auto','Half-Yearly Exam','20','6999','2017-2018','94',94,1);
/*!40000 ALTER TABLE `tbl_famarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mock_assessment`
--

DROP TABLE IF EXISTS `tbl_mock_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mock_assessment` (
  `assessment_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `assessment_name` varchar(35) CHARACTER SET utf8 NOT NULL,
  `question_id` int(11) NOT NULL,
  `class_id` int(6) NOT NULL,
  `section` varchar(5) NOT NULL,
  `term` int(2) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `chapter_ids` varchar(50) NOT NULL,
  `no_of_attempt` int(1) NOT NULL,
  `no_of_questions` int(5) NOT NULL,
  `total_time` time NOT NULL,
  `board_id` int(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `school_id` varchar(35) CHARACTER SET utf8 NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `generated_by` varchar(25) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0',
  `attempt_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`assessment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mock_assessment`
--

LOCK TABLES `tbl_mock_assessment` WRITE;
/*!40000 ALTER TABLE `tbl_mock_assessment` DISABLE KEYS */;
INSERT INTO `tbl_mock_assessment` VALUES (1,' air',0,6,'A',0,'SCI','15',0,0,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-06-30 07:25:16',0,0),(2,' colonial',0,8,'A',0,'SST','10',0,5,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-07-01 07:24:16',0,0),(3,' Agriculture',0,4,'A',0,'SST','10',0,10,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-07-01 07:29:50',1,0),(4,' air',0,2,'A',0,'SCI','9',0,5,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-07-01 07:38:04',0,0),(5,' Pre Mid Test 1',0,2,'A',0,'SST','12',0,3,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-07-01 07:54:29',1,0),(6,' tes',0,5,'A',0,'EN','12,4',0,5,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170094','2017-07-02 08:29:29',0,0),(7,'Environment',0,2,'A',0,'EVS','3',0,5,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-07-03 05:23:05',1,0),(8,' english',0,4,'A',0,'EN','14',0,5,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-07-03 05:26:46',1,0),(9,'testing_Sience',0,5,'A',0,'EVS','22',0,10,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170094','2017-07-03 05:32:31',1,0),(12,'Mock Test-1',0,4,'A',0,'EN','14',0,5,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-07-03 08:30:11',1,0),(13,' Mock Test',0,4,'A',0,'SST','10',0,0,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-07-03 08:52:46',1,0),(14,' Mock Test',0,1,'A',0,'EN','3,11',0,5,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170081','2017-07-04 07:04:44',1,0),(15,' Anything',0,7,'A',0,'EN','4',0,20,'00:00:00',1,'1970-01-01','1970-01-01','6999','2017-2018','SWAU05170094','2017-07-05 10:11:43',0,0);
/*!40000 ALTER TABLE `tbl_mock_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mock_assessment_question`
--

DROP TABLE IF EXISTS `tbl_mock_assessment_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mock_assessment_question` (
  `assement_question_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assessment_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `marks` int(5) NOT NULL,
  `option_ids` varchar(50) NOT NULL COMMENT 'question selected option ids',
  `question_time` time NOT NULL,
  PRIMARY KEY (`assement_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mock_assessment_question`
--

LOCK TABLES `tbl_mock_assessment_question` WRITE;
/*!40000 ALTER TABLE `tbl_mock_assessment_question` DISABLE KEYS */;
INSERT INTO `tbl_mock_assessment_question` VALUES (1,1,3363,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(2,1,3364,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(3,1,3365,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(4,1,3366,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(5,2,3127,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(6,2,3124,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(7,2,3126,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(8,2,3125,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(9,2,3123,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(10,3,599,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(11,3,1470,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(12,3,1467,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(13,3,1993,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(14,3,1469,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(15,3,1468,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(16,4,986,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(17,4,987,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(18,4,988,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(19,5,999,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(20,5,55,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(21,5,997,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(22,6,1571,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(23,6,1570,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(24,6,611,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(25,6,1587,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(26,6,605,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(27,7,920,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(28,7,918,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(29,7,220,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(30,7,919,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(31,8,1316,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(32,8,1318,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(33,8,1317,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(34,8,87,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(35,9,1643,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(36,9,364,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(37,9,1642,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(38,9,1641,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(39,9,365,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(40,9,2023,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(47,12,1316,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(48,12,1318,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(49,12,1317,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(50,12,87,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(51,13,599,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(52,13,1470,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(53,13,1467,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(54,13,1993,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(55,13,1469,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(56,13,1468,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(57,14,152,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(58,14,2,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(59,14,697,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(60,14,685,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(61,14,411,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(62,15,3765,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(63,15,3767,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(64,15,3766,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(65,15,3762,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(66,15,3763,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(67,15,3764,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00'),(68,15,3761,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15\n\n','00:00:00');
/*!40000 ALTER TABLE `tbl_mock_assessment_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notes`
--

DROP TABLE IF EXISTS `tbl_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notes` (
  `n_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `descirption` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `user_reference_id` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `slug_url` varchar(50) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notes`
--

LOCK TABLES `tbl_notes` WRITE;
/*!40000 ALTER TABLE `tbl_notes` DISABLE KEYS */;
INSERT INTO `tbl_notes` VALUES (4,'grhdgjijngrtuig','Swa',160,'2017-07-05 06:50:48','',1);
/*!40000 ALTER TABLE `tbl_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pdf_video_swf`
--

DROP TABLE IF EXISTS `tbl_pdf_video_swf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pdf_video_swf` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `data_type_code` varchar(30) NOT NULL,
  `document_type` varchar(20) NOT NULL,
  `class_name` int(2) NOT NULL,
  `subject_id` varchar(6) NOT NULL,
  `board_name` varchar(15) NOT NULL,
  `document_title` varchar(100) NOT NULL,
  `date_of_upload` date NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `file_type` varchar(15) NOT NULL,
  `file_size` bigint(10) NOT NULL,
  `school_code` varchar(40) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `upload_by_user` varchar(20) NOT NULL,
  `upload_by_user_type` int(2) NOT NULL,
  `EAD_type` varchar(20) NOT NULL,
  `MI_type` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_type_code` (`data_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pdf_video_swf`
--

LOCK TABLES `tbl_pdf_video_swf` WRITE;
/*!40000 ALTER TABLE `tbl_pdf_video_swf` DISABLE KEYS */;
INSERT INTO `tbl_pdf_video_swf` VALUES (1,'pdf11_38_37','PDF',4,'SCI','CBSE','Science Tutorials PDF','2017-06-22','upload/learning_content/food_palette.pdf','pdf',85139,'6999','2017-2018','Rajiv Gupta',1,'NA','NA',1);
/*!40000 ALTER TABLE `tbl_pdf_video_swf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sept_activity`
--

DROP TABLE IF EXISTS `tbl_sept_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sept_activity` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `mst_id` int(11) NOT NULL,
  `question_sequence` int(5) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `answer_text` varchar(50) NOT NULL,
  `answer_result` int(11) NOT NULL COMMENT 'fail=0, success=1',
  `student_id` bigint(11) NOT NULL,
  `student_enroll` varchar(40) NOT NULL,
  `student_name` varchar(35) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `school_code` varchar(20) NOT NULL,
  `class_id` int(3) NOT NULL,
  `section` varchar(3) NOT NULL,
  `right_ans_id` varchar(10) NOT NULL,
  `right_ans_text` varchar(80) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `attempt_date` date NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `status` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sept_activity`
--

LOCK TABLES `tbl_sept_activity` WRITE;
/*!40000 ALTER TABLE `tbl_sept_activity` DISABLE KEYS */;
INSERT INTO `tbl_sept_activity` VALUES (1,46,1,'3','Sun',1,80,'1536274765768','Madhvi Kapahi','DE INDIAN PUBLIC SCHOOL','6999',3,'A','3','Sun','10:44:43','10:44:53','2017-07-03','2017-2018',1),(2,47,2,'3','Rainy, Winter, Summer',1,80,'1536274765768','Madhvi Kapahi','DE INDIAN PUBLIC SCHOOL','6999',3,'A','3','Rainy, Winter, Summer','10:44:54','10:45:00','2017-07-03','2017-2018',1),(3,48,3,'1','Right Matching',1,80,'1536274765768','Madhvi Kapahi','DE INDIAN PUBLIC SCHOOL','6999',3,'A','1','Monday—75 mm\nTuesday—66 mm\nWednesday—69 mm','10:45:04','10:45:16','2017-07-03','2017-2018',1),(4,49,4,'0','Wrong Matching',0,80,'1536274765768','Madhvi Kapahi','DE INDIAN PUBLIC SCHOOL','6999',3,'A','1','CUBE,\nSPHERE,\nCUBOID,\nCYLINDER','10:45:19','10:45:34','2017-07-03','2017-2018',1),(5,50,5,'2','कोई गलती होने पर',1,80,'1536274765768','Madhvi Kapahi','DE INDIAN PUBLIC SCHOOL','6999',3,'A','2','कोई गलती होने पर','10:45:37','10:45:43','2017-07-03','2017-2018',1),(6,51,6,'1','GIRAFFE',1,80,'1536274765768','Madhvi Kapahi','DE INDIAN PUBLIC SCHOOL','6999',3,'A','1','GIRAFFE','10:45:46','10:45:59','2017-07-03','2017-2018',1),(7,52,7,'0','चाँद, सुंदर',0,80,'1536274765768','Madhvi Kapahi','DE INDIAN PUBLIC SCHOOL','6999',3,'A','1','चाँद, सुंदर','10:46:03','10:46:11','2017-07-03','2017-2018',1),(8,53,8,'2','Path Image 2',1,80,'1536274765768','Madhvi Kapahi','DE INDIAN PUBLIC SCHOOL','6999',3,'A','2','Path Image 2','10:46:14','10:46:21','2017-07-03','2017-2018',1),(9,54,9,'1','Right Matching',1,80,'1536274765768','Madhvi Kapahi','DE INDIAN PUBLIC SCHOOL','6999',3,'A','1','MUD, WOOD, STONE','10:46:23','10:46:41','2017-07-03','2017-2018',1),(10,64,1,'3','बचपन',1,60,'317','Samarth Kumar','De Indian Public  School','6999',6,'A','3','बचपन','11:00:29','11:00:34','2017-07-03','2017-2018',1),(11,65,2,'1','HEART',1,60,'317','Samarth Kumar','De Indian Public  School','6999',6,'A','1','HEART','11:00:37','11:00:46','2017-07-03','2017-2018',1),(12,66,3,'0','Wrong Matching',0,60,'317','Samarth Kumar','De Indian Public  School','6999',6,'A','1','','11:00:48','11:01:38','2017-07-03','2017-2018',1),(13,67,4,'0','Wrong matching',0,60,'317','Samarth Kumar','De Indian Public  School','6999',6,'A','1','iv,i,ii,v,iii','11:01:39','11:01:57','2017-07-03','2017-2018',1),(14,68,5,'2','Father’s Love ',1,60,'317','Samarth Kumar','De Indian Public  School','6999',6,'A','2','Father\'s Love','11:01:58','11:02:06','2017-07-03','2017-2018',1),(15,69,6,'2','17',0,60,'317','Samarth Kumar','De Indian Public  School','6999',6,'A','4','19','11:02:09','11:02:17','2017-07-03','2017-2018',1),(16,70,7,'0','Show here a picture of Giraffe., Show here a pictu',0,60,'317','Samarth Kumar','De Indian Public  School','6999',6,'A','1','1,4','11:02:17','11:02:27','2017-07-03','2017-2018',1),(17,71,8,'0','en-0, ize-0, fly-0, ate-0',0,60,'317','Samarth Kumar','De Indian Public  School','6999',6,'A','1','Quicken, Fasten\nModernize, Magnetize\nBeautify, Diverse\nActivate, Liquidate','11:02:27','11:02:39','2017-07-03','2017-2018',1),(18,72,9,'3','The program will be over soon.',0,60,'317','Samarth Kumar','De Indian Public  School','6999',6,'A','2','The man should leave the radio on.','11:02:39','11:03:19','2017-07-03','2017-2018',1),(19,55,1,'4','Ladies',1,61,'318','Hitanshu Jain','De Indian Public  School','6999',4,'A','4','Ladies','11:19:24','11:19:29','2017-07-03','2017-2018',1),(20,56,2,'1','गन्दा, ',1,61,'318','Hitanshu Jain','De Indian Public  School','6999',4,'A','1','रात, साफ़','11:19:30','11:19:37','2017-07-03','2017-2018',1),(21,57,3,'0','Wrong Matching',0,61,'318','Hitanshu Jain','De Indian Public  School','6999',4,'A','1','2','11:19:39','11:19:58','2017-07-03','2017-2018',1),(22,58,4,'0','Plants-1, Animals-2',0,61,'318','Hitanshu Jain','De Indian Public  School','6999',4,'A','1','ANIMALS : BUTTER, MEAT & HONEY,                                                 ','11:20:00','11:20:18','2017-07-03','2017-2018',1),(23,59,5,'3','बढ़ती',1,61,'318','Hitanshu Jain','De Indian Public  School','6999',4,'A','3','बढ़ती','11:20:20','11:20:24','2017-07-03','2017-2018',1),(24,60,6,'0','Wrong Matching',0,61,'318','Hitanshu Jain','De Indian Public  School','6999',4,'A','1','4,6,5','11:20:25','11:20:30','2017-07-03','2017-2018',1),(25,61,7,'0','Wrong Matching',0,61,'318','Hitanshu Jain','De Indian Public  School','6999',4,'A','1','er, our, er','11:20:32','11:20:36','2017-07-03','2017-2018',1),(26,62,8,'0','Wrong way to walk',0,61,'318','Hitanshu Jain','De Indian Public  School','6999',4,'A','1','','11:20:38','11:20:46','2017-07-03','2017-2018',1),(27,63,9,'1','Right Answer',1,61,'318','Hitanshu Jain','De Indian Public  School','6999',4,'A','1','SNAIL','11:20:48','11:20:59','2017-07-03','2017-2018',1),(28,37,1,'4','Cat',1,76,'256486632','Ritul Acharya','DE INDIAN PUBLIC SCHOOL','6999',1,'B','4','Cat','13:30:08','13:30:45','2017-07-03','2017-2018',1),(29,38,2,'3','R',1,76,'256486632','Ritul Acharya','DE INDIAN PUBLIC SCHOOL','6999',1,'B','3','R','13:30:47','13:30:52','2017-07-03','2017-2018',1),(30,39,3,'0','Wrong Matching',0,76,'256486632','Ritul Acharya','DE INDIAN PUBLIC SCHOOL','6999',1,'B','1','','13:30:53','13:30:58','2017-07-03','2017-2018',1),(31,40,4,'0','Wrong matching',0,76,'256486632','Ritul Acharya','DE INDIAN PUBLIC SCHOOL','6999',1,'B','1','','13:32:24','13:32:31','2017-07-03','2017-2018',1),(32,41,5,'2','47',0,76,'256486632','Ritul Acharya','DE INDIAN PUBLIC SCHOOL','6999',1,'B','1','The correct answer is \'A picture of a sitting in the corner of the room.','13:32:31','13:32:39','2017-07-03','2017-2018',1),(33,42,6,'2','2 Cakes, 3 Caps',1,76,'256486632','Ritul Acharya','DE INDIAN PUBLIC SCHOOL','6999',1,'B','2','2 Cakes, 3 Caps','13:32:44','13:32:54','2017-07-03','2017-2018',1),(34,43,7,'2','River, Sun',1,76,'256486632','Ritul Acharya','DE INDIAN PUBLIC SCHOOL','6999',1,'B','2','River, Sun','13:32:58','13:33:05','2017-07-03','2017-2018',1),(35,44,8,'0','Wrong Matching',0,76,'256486632','Ritul Acharya','DE INDIAN PUBLIC SCHOOL','6999',1,'B','1','23-Twenty-three\n47-Forty-seven\n34-Thirty-four\n18-Eighteen','13:33:08','13:33:17','2017-07-03','2017-2018',1),(36,45,9,'3','Sun flower',1,76,'256486632','Ritul Acharya','DE INDIAN PUBLIC SCHOOL','6999',1,'B','3','Picture of Sunflower','13:33:19','13:33:29','2017-07-03','2017-2018',1),(37,55,1,'4','Ladies',1,101,'1027','Manisha Dutta','Little Star Public School','SWA11LSPS34',4,'A','4','Ladies','14:03:02','14:03:06','2017-07-03','2017-2018',1),(38,56,2,'1','गन्दा, ',1,101,'1027','Manisha Dutta','Little Star Public School','SWA11LSPS34',4,'A','1','रात, साफ़','14:03:07','14:03:12','2017-07-03','2017-2018',1),(39,57,3,'0','Wrong Matching',0,101,'1027','Manisha Dutta','Little Star Public School','SWA11LSPS34',4,'A','1','2','14:03:14','14:03:20','2017-07-03','2017-2018',1),(40,58,4,'0','Plants-0, Animals-0',0,101,'1027','Manisha Dutta','Little Star Public School','SWA11LSPS34',4,'A','1','ANIMALS : BUTTER, MEAT & HONEY,                                                 ','14:03:22','14:03:25','2017-07-03','2017-2018',1),(41,59,5,'3','बढ़ती',1,101,'1027','Manisha Dutta','Little Star Public School','SWA11LSPS34',4,'A','3','बढ़ती','14:03:26','14:03:29','2017-07-03','2017-2018',1),(42,60,6,'0','Wrong Matching',0,101,'1027','Manisha Dutta','Little Star Public School','SWA11LSPS34',4,'A','1','4,6,5','14:03:33','14:03:36','2017-07-03','2017-2018',1),(43,61,7,'0','Wrong Matching',0,101,'1027','Manisha Dutta','Little Star Public School','SWA11LSPS34',4,'A','1','er, our, er','14:03:42','14:03:45','2017-07-03','2017-2018',1),(44,62,8,'0','Wrong way to walk',0,101,'1027','Manisha Dutta','Little Star Public School','SWA11LSPS34',4,'A','1','','14:03:46','14:03:49','2017-07-03','2017-2018',1),(45,63,9,'0','Wrong Answer',0,101,'1027','Manisha Dutta','Little Star Public School','SWA11LSPS34',4,'A','1','SNAIL','14:03:55','14:03:58','2017-07-03','2017-2018',1),(46,28,1,'','',0,8,'507','Advik Jain','De Indian Public  School','6999',13,'A','2','Blue','14:28:29','14:28:31','2017-07-03','2017-2018',1),(47,29,2,'0','Images: ',0,8,'507','Advik Jain','De Indian Public  School','6999',13,'A','1','Sun, Clouds','14:28:32','14:28:34','2017-07-03','2017-2018',1),(48,30,3,'0','Wrong Matching',0,8,'507','Advik Jain','De Indian Public  School','6999',13,'A','2','a ladder in slanting position','14:28:34','14:28:36','2017-07-03','2017-2018',1),(49,31,4,'0','Wrong matching',0,8,'507','Advik Jain','De Indian Public  School','6999',13,'A','1','','14:28:37','14:28:39','2017-07-03','2017-2018',1),(50,32,5,'','',0,8,'507','Advik Jain','De Indian Public  School','6999',13,'A','1','One','14:28:39','14:28:41','2017-07-03','2017-2018',1),(51,33,6,'0','undefined',0,8,'507','Advik Jain','De Indian Public  School','6999',13,'A','1','Lion, Zebra, Giraffe','14:28:42','14:28:43','2017-07-03','2017-2018',1),(52,34,7,'','',0,8,'507','Advik Jain','De Indian Public  School','6999',13,'A','3','A picture of triangular sandwich','14:28:44','14:28:45','2017-07-03','2017-2018',1),(53,35,8,'0','Wrong matching',0,8,'507','Advik Jain','De Indian Public  School','6999',13,'A','1','1-2, 2-3, 3-1','14:28:46','14:28:47','2017-07-03','2017-2018',1),(54,36,9,'','',0,8,'507','Advik Jain','De Indian Public  School','6999',13,'A','2','Sound of roaring of lion','14:28:48','14:28:50','2017-07-03','2017-2018',1),(55,37,1,'4','Cat',1,91,'7685','Rishu Sharma','DE INDIAN PUBLIC SCHOOL','6999',1,'A','4','Cat','10:43:08','10:43:58','2017-07-04','2017-2018',1),(56,38,2,'3','R',1,91,'7685','Rishu Sharma','DE INDIAN PUBLIC SCHOOL','6999',1,'A','3','R','10:44:00','10:44:18','2017-07-04','2017-2018',1),(57,39,3,'1','Right Matching',1,91,'7685','Rishu Sharma','DE INDIAN PUBLIC SCHOOL','6999',1,'A','1','','10:44:24','10:45:02','2017-07-04','2017-2018',1),(58,40,4,'0','Wrong matching',0,91,'7685','Rishu Sharma','DE INDIAN PUBLIC SCHOOL','6999',1,'A','1','','10:45:04','10:45:32','2017-07-04','2017-2018',1),(59,41,5,'3','34',0,91,'7685','Rishu Sharma','DE INDIAN PUBLIC SCHOOL','6999',1,'A','1','The correct answer is \'A picture of a sitting in the corner of the room.','10:45:33','10:45:51','2017-07-04','2017-2018',1),(60,42,6,'2','2 Cakes, 3 Caps',1,91,'7685','Rishu Sharma','DE INDIAN PUBLIC SCHOOL','6999',1,'A','2','2 Cakes, 3 Caps','10:45:53','10:46:06','2017-07-04','2017-2018',1),(61,43,7,'2','River, Sun',1,91,'7685','Rishu Sharma','DE INDIAN PUBLIC SCHOOL','6999',1,'A','2','River, Sun','10:46:12','10:47:53','2017-07-04','2017-2018',1),(62,44,8,'1','Right Matching',1,91,'7685','Rishu Sharma','DE INDIAN PUBLIC SCHOOL','6999',1,'A','1','23-Twenty-three\n47-Forty-seven\n34-Thirty-four\n18-Eighteen','10:47:56','10:48:18','2017-07-04','2017-2018',1),(63,45,9,'3','Sun flower',1,91,'7685','Rishu Sharma','DE INDIAN PUBLIC SCHOOL','6999',1,'A','3','Picture of Sunflower','10:48:19','10:48:56','2017-07-04','2017-2018',1),(64,37,1,'','',0,52,'540','Aanya Mehta','De Indian Public  School','6999',1,'A','4','Cat','11:04:52','11:06:16','2017-07-05','2017-2018',1),(65,38,2,'','',0,52,'540','Aanya Mehta','De Indian Public  School','6999',1,'A','3','R','11:06:19','11:06:22','2017-07-05','2017-2018',1),(66,39,3,'0','Wrong Matching',0,52,'540','Aanya Mehta','De Indian Public  School','6999',1,'A','1','','11:06:30','11:06:38','2017-07-05','2017-2018',1),(67,40,4,'0','Wrong matching',0,52,'540','Aanya Mehta','De Indian Public  School','6999',1,'A','1','','11:06:41','11:07:00','2017-07-05','2017-2018',1),(68,41,5,'3','34',0,52,'540','Aanya Mehta','De Indian Public  School','6999',1,'A','1','The correct answer is \'A picture of a sitting in the corner of the room.','11:07:01','11:08:42','2017-07-05','2017-2018',1),(69,42,6,'2','2 Cakes, 3 Caps',1,52,'540','Aanya Mehta','De Indian Public  School','6999',1,'A','2','2 Cakes, 3 Caps','11:08:46','11:08:52','2017-07-05','2017-2018',1),(70,43,7,'2','River, Sun',1,52,'540','Aanya Mehta','De Indian Public  School','6999',1,'A','2','River, Sun','11:08:55','11:09:09','2017-07-05','2017-2018',1),(71,44,8,'1','Right Matching',1,52,'540','Aanya Mehta','De Indian Public  School','6999',1,'A','1','23-Twenty-three\n47-Forty-seven\n34-Thirty-four\n18-Eighteen','11:09:12','11:10:04','2017-07-05','2017-2018',1),(72,45,9,'3','Sun flower',1,52,'540','Aanya Mehta','De Indian Public  School','6999',1,'A','3','Picture of Sunflower','11:10:08','11:10:44','2017-07-05','2017-2018',1),(73,37,1,'4','Cat',1,41,'430','Aarav Jain','De Indian Public  School','6999',1,'A','4','Cat','10:30:41','10:30:55','2017-07-07','2017-2018',1),(74,38,2,'3','R',1,41,'430','Aarav Jain','De Indian Public  School','6999',1,'A','3','R','10:30:57','10:31:04','2017-07-07','2017-2018',1),(75,39,3,'1','Right Matching',1,41,'430','Aarav Jain','De Indian Public  School','6999',1,'A','1','','10:31:12','10:31:31','2017-07-07','2017-2018',1),(76,40,4,'1','Right matching',1,41,'430','Aarav Jain','De Indian Public  School','6999',1,'A','1','','10:31:34','10:32:35','2017-07-07','2017-2018',1),(77,41,5,'3','34',0,41,'430','Aarav Jain','De Indian Public  School','6999',1,'A','1','The correct answer is \'A picture of a sitting in the corner of the room.','10:32:36','10:32:47','2017-07-07','2017-2018',1),(78,42,6,'2','2 Cakes, 3 Caps',1,41,'430','Aarav Jain','De Indian Public  School','6999',1,'A','2','2 Cakes, 3 Caps','10:32:49','10:33:01','2017-07-07','2017-2018',1),(79,43,7,'2','River, Sun',1,41,'430','Aarav Jain','De Indian Public  School','6999',1,'A','2','River, Sun','10:33:02','10:33:14','2017-07-07','2017-2018',1),(80,44,8,'1','Right Matching',1,41,'430','Aarav Jain','De Indian Public  School','6999',1,'A','1','23-Twenty-three\n47-Forty-seven\n34-Thirty-four\n18-Eighteen','10:33:15','10:33:34','2017-07-07','2017-2018',1),(81,45,9,'3','Sun flower',1,41,'430','Aarav Jain','De Indian Public  School','6999',1,'A','3','Picture of Sunflower','10:33:34','10:33:43','2017-07-07','2017-2018',1),(82,37,1,'','',0,47,'455','Rayyaan Sadiq','De Indian Public  School','6999',1,'A','4','Cat','10:50:53','10:50:57','2017-07-07','2017-2018',1),(83,38,2,'3','R',1,47,'455','Rayyaan Sadiq','De Indian Public  School','6999',1,'A','3','R','10:50:58','10:51:05','2017-07-07','2017-2018',1),(84,39,3,'0','Wrong Matching',0,47,'455','Rayyaan Sadiq','De Indian Public  School','6999',1,'A','1','','10:51:05','10:51:10','2017-07-07','2017-2018',1),(85,40,4,'1','Right matching',1,47,'455','Rayyaan Sadiq','De Indian Public  School','6999',1,'A','1','','10:51:10','10:51:27','2017-07-07','2017-2018',1),(86,41,5,'','',0,47,'455','Rayyaan Sadiq','De Indian Public  School','6999',1,'A','1','The correct answer is \'A picture of a sitting in the corner of the room.','10:51:28','10:51:35','2017-07-07','2017-2018',1),(87,42,6,'2','2 Cakes, 3 Caps',1,47,'455','Rayyaan Sadiq','De Indian Public  School','6999',1,'A','2','2 Cakes, 3 Caps','10:51:36','10:51:41','2017-07-07','2017-2018',1),(88,43,7,'','',0,47,'455','Rayyaan Sadiq','De Indian Public  School','6999',1,'A','2','River, Sun','10:51:42','10:51:45','2017-07-07','2017-2018',1),(89,44,8,'1','Right Matching',1,47,'455','Rayyaan Sadiq','De Indian Public  School','6999',1,'A','1','23-Twenty-three\n47-Forty-seven\n34-Thirty-four\n18-Eighteen','10:51:47','10:52:02','2017-07-07','2017-2018',1),(90,45,9,'3','Sun flower',1,47,'455','Rayyaan Sadiq','De Indian Public  School','6999',1,'A','3','Picture of Sunflower','10:52:04','10:52:09','2017-07-07','2017-2018',1),(91,37,1,'if any','if any',0,87,'SWAS05170087','ArushiGupta','DE INDIAN PUBLIC SCHOOL','SWA11DIPS85',0,'A','4','Cat','22:20:00','23:20:00','2017-07-11','2017-2018',1),(92,38,1,'if any','if any',0,87,'SWAS05170087','ArushiGupta','DE INDIAN PUBLIC SCHOOL','SWA11DIPS85',0,'A','3','R','22:20:00','23:20:00','2017-07-11','2017-2018',1),(93,39,1,'if any','if any',1,87,'SWAS05170087','ArushiGupta','DE INDIAN PUBLIC SCHOOL','SWA11DIPS85',0,'A','1','','22:20:00','23:20:00','2017-07-11','2017-2018',1),(94,40,1,'if any','if any',1,87,'SWAS05170087','ArushiGupta','DE INDIAN PUBLIC SCHOOL','SWA11DIPS85',0,'A','1','','22:20:00','23:20:00','2017-07-11','2017-2018',1),(95,41,1,'if any','if any',1,87,'SWAS05170087','ArushiGupta','DE INDIAN PUBLIC SCHOOL','SWA11DIPS85',0,'A','1','The correct answer is \'A picture of a sitting in the corner of the room.','22:20:00','23:20:00','2017-07-11','2017-2018',1),(96,42,1,'if any','if any',0,87,'SWAS05170087','ArushiGupta','DE INDIAN PUBLIC SCHOOL','SWA11DIPS85',0,'A','2','2 Cakes, 3 Caps','22:20:00','23:20:00','2017-07-11','2017-2018',1),(97,43,1,'if any','if any',0,87,'SWAS05170087','ArushiGupta','DE INDIAN PUBLIC SCHOOL','SWA11DIPS85',0,'A','2','River, Sun','22:20:00','23:20:00','2017-07-11','2017-2018',1),(98,44,1,'if any','if any',1,87,'SWAS05170087','ArushiGupta','DE INDIAN PUBLIC SCHOOL','SWA11DIPS85',0,'A','1','23-Twenty-three\n47-Forty-seven\n34-Thirty-four\n18-Eighteen','22:20:00','23:20:00','2017-07-11','2017-2018',1),(99,45,1,'if any','if any',0,87,'SWAS05170087','ArushiGupta','DE INDIAN PUBLIC SCHOOL','SWA11DIPS85',0,'A','3','Picture of Sunflower','22:20:00','23:20:00','2017-07-11','2017-2018',1);
/*!40000 ALTER TABLE `tbl_sept_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_share_data`
--

DROP TABLE IF EXISTS `tbl_share_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_share_data` (
  `share_data_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_reference_id` bigint(11) NOT NULL,
  `image_path` varchar(500) NOT NULL,
  `image_type` varchar(50) NOT NULL,
  `video_path` varchar(500) NOT NULL,
  `video_type` varchar(50) NOT NULL,
  `audio_path` varchar(500) NOT NULL,
  `audio_type` varchar(255) NOT NULL,
  `sharing_content` longtext NOT NULL,
  `assessment_id` bigint(11) NOT NULL,
  `share_data_title` varchar(100) NOT NULL,
  `assessment_file_path` varchar(500) NOT NULL,
  `share_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `article_status` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`share_data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_share_data`
--

LOCK TABLES `tbl_share_data` WRITE;
/*!40000 ALTER TABLE `tbl_share_data` DISABLE KEYS */;
INSERT INTO `tbl_share_data` VALUES (1,182,'','','','','','','<p style=\"margin-bottom: 1.5em; padding: 0px; border: 0px; font-size: 12.0012px; font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; vertical-align: baseline; line-height: 1.3em; color: rgb(51, 51, 51); background-color: rgb(23, 41, 61);\">otential for kitchen management, dependent upon restaurant experience. Applicants must be able to work weekday evenings and weekends. Pay scale is hourly (based on experience) plus shared house tips.</p><p style=\"margin-bottom: 1.5em; padding: 0px; border: 0px; font-size: 12.0012px; font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; vertical-align: baseline; line-height: 1.3em; color: rgb(51, 51, 51); background-color: rgb(23, 41, 61);\">Passion for literature and farm-to-table cuisine a plus! Book Passage CafÃ© and Wine Bar offers opportunities for creativity and growth, making it a great place for up-and-coming hospitality interns to start building a resume. We are searching for an organized, detail-oriented team player with experience in both back and front of house roles. Light cleaning, food preparation, and cuisine creation are all integral duties in the position. Please include resume and cover letter when responding to this listing. EOE.</p><p style=\"margin-bottom: 1.5em; padding: 0px; border: 0px; font-size: 12.0012px; font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; vertical-align: baseline; line-height: 1.3em; color: rgb(51, 51, 51); background-color: rgb(23, 41, 61);\"><strong>Baristas</strong><br>Book Passage in Corte Madera is seeking applicants for front of house and barista positions in our cafÃ©. Applicants must be able to work a flexible schedule, including weekday mornings, weekday evenings, and weekends. Pay is hourly (based on experience) plus tips. Passion for literature and farm-to-table cuisine a plus. Book Passage cafÃ© is a great place for hospitality interns to start getting experience. Potential for back and front of house cross training. Please include resume and cover letter. EOE.</p><p style=\"margin-bottom: 1.5em; padding: 0px; border: 0px; font-size: 12.0012px; font-family: &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; vertical-align: baseline; line-height: 1.3em; color: rgb(51, 51, 51); background-color: rgb(23, 41, 61);\">Please include resume and cover lett</p>',0,'Articles','','2017-07-06 17:21:14','0000-00-00','0000-00-00',3,0),(2,160,'','','','','','','Please be there on Monday for the meeting.',0,'To all Teachers','','2017-07-03 10:30:52','2017-07-03','0000-00-00',0,1),(3,160,'uploaded_data/share/images/160-1499072606-1.jpg','','','','','','',0,'','','2017-07-03 10:33:26','2017-07-03','0000-00-00',0,1),(4,160,'uploaded_data/share/images/160-1499153009-1.jpg','','','','','','',0,'Colours','','2017-07-04 08:53:29','2017-07-04','0000-00-00',0,1),(5,160,'','','','','','','<h1 style=\"text-align: center; \">Swa-Adhyayan</h1><h1 style=\"text-align: center; \"><br></h1>',0,'Articles','','2017-07-04 07:43:25','0000-00-00','0000-00-00',1,1);
/*!40000 ALTER TABLE `tbl_share_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_share_group`
--

DROP TABLE IF EXISTS `tbl_share_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_share_group` (
  `group_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `group_code` varchar(40) NOT NULL,
  `group_type_id` int(11) NOT NULL,
  `group_type_name` varchar(25) NOT NULL,
  `group_name` varchar(25) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `create_group_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `group_member_id` varchar(500) NOT NULL,
  `sub_group_id` varchar(150) NOT NULL,
  `group_img` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `group_code` (`group_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_share_group`
--

LOCK TABLES `tbl_share_group` WRITE;
/*!40000 ALTER TABLE `tbl_share_group` DISABLE KEYS */;
INSERT INTO `tbl_share_group` VALUES (2,'182-6999-1498804705',2,'Private Groups','Funny Friends','182','2017-06-30 06:42:40','160,179','','uploaded_data/share/group-profile-img/1498804705-funny friends.jpg',1),(3,'182-6999-1498819838',2,'Private Groups','Yahoo','182','2017-06-30 10:50:38','','','uploaded_data/share/group-profile-img/1498819838-yahoo.jpg',1),(4,'160-6999-1499238526',2,'Private Group','Peace','160','2017-07-05 07:08:46','','','uploaded_data/share/group-profile-img/nouserphoto.png',1);
/*!40000 ALTER TABLE `tbl_share_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_share_view`
--

DROP TABLE IF EXISTS `tbl_share_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_share_view` (
  `share_view_id` bigint(15) NOT NULL AUTO_INCREMENT,
  `share_mst_id` bigint(15) NOT NULL,
  `visitors_id` int(11) NOT NULL,
  `group_type_id` int(11) NOT NULL COMMENT '1=public, 2=School, 3=Class, 4=others, 6=specificUser',
  `group_type_name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'public- schoolcode- classes- other code',
  `user_reference_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL COMMENT 'Like = principal, teacher, parents',
  PRIMARY KEY (`share_view_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_share_view`
--

LOCK TABLES `tbl_share_view` WRITE;
/*!40000 ALTER TABLE `tbl_share_view` DISABLE KEYS */;
INSERT INTO `tbl_share_view` VALUES (1,2,0,1,'Public',160,3),(2,3,0,1,'Public',160,3),(3,4,0,1,'Public',160,3);
/*!40000 ALTER TABLE `tbl_share_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_student_2017_18`
--

DROP TABLE IF EXISTS `tbl_student_2017_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_student_2017_18` (
  `student_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(40) NOT NULL,
  `admission_no` varchar(40) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_type_id` int(3) NOT NULL DEFAULT '4',
  `gender` varchar(13) NOT NULL,
  `class_id` int(3) NOT NULL,
  `class_name` varchar(15) NOT NULL,
  `section` varchar(3) NOT NULL,
  `board_name` varchar(35) NOT NULL,
  `board_id` int(4) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `student_mst_id` bigint(11) NOT NULL,
  `school_code` varchar(40) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `academic_year` varchar(15) NOT NULL,
  `student_photo` varchar(150) NOT NULL,
  `edit_date` date NOT NULL,
  `edit_time` varchar(15) NOT NULL,
  `edit_user` varchar(35) NOT NULL,
  `edit_user_type` int(3) NOT NULL,
  `user_reference_id` bigint(11) NOT NULL,
  `parent_reference_id` bigint(11) NOT NULL,
  `parent_code` varchar(40) NOT NULL,
  `connection_code` varchar(35) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `registration_no` (`registration_no`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student_2017_18`
--

LOCK TABLES `tbl_student_2017_18` WRITE;
/*!40000 ALTER TABLE `tbl_student_2017_18` DISABLE KEYS */;
INSERT INTO `tbl_student_2017_18` VALUES (1,'SWAS05170001','477','Nimisha','Bajaj','Nimisha2@gbdips.com','2011-12-22','nimisha22122011','22122011',4,'Female',14,'14','A','CBSE',1,'9810464251',1,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:02','SWA482P',1,2,1,'SWA477P','',1),(2,'SWAS05170002','480','Mohit','Batra','Mohit3@gbdips.com','2011-04-23','mohit23042011','23042011',4,'Male',14,'14','A','CBSE',1,'9717937632',2,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:02','SWA482P',1,4,3,'SWA480P','',1),(3,'SWAS05170003','482','Ansh','Gupta','Ansh4@gbdips.com','2011-05-25','ansh25052011','25052011',4,'Male',14,'14','A','CBSE',1,'9899290789',3,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:02','SWA482P',1,6,5,'SWA482P','',1),(4,'SWAS05170004','483','Neha','Marwari','Neha5@gbdips.com','2011-03-11','neha11032011','11032011',4,'Female',14,'14','A','CBSE',1,'9990582122',4,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:02','SWA482P',1,8,7,'SWA483P','',1),(5,'SWAS05170005','485','Mishika','Mahajan','Mishika6@gbdips.com','2011-05-29','mishika29052011','29052011',4,'Female',14,'14','A','CBSE',1,'9891909261',5,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:03','SWA482P',1,10,9,'SWA485P','',1),(6,'SWAS05170006','498','Lavanya','Arora','Lavanya7@gbdips.com','2011-09-16','lavanya16092011','16092011',4,'Female',14,'14','A','CBSE',1,'9210558587',6,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:03','SWA482P',1,12,11,'SWA498P','',1),(7,'SWAS05170007','505','Jia','Swamy','Jia8@gbdips.com','2012-01-18','jia18012012','18012012',4,'Female',13,'13','A','CBSE',1,'8588858029',7,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:03','SWA482P',1,14,13,'SWA505P','',1),(8,'SWAS05170008','507','Advik','Jain','Advik9@gbdips.com','2012-02-28','advik28022012','28022012',4,'Male',13,'13','A','CBSE',1,'9891261433',8,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:04','SWA482P',1,16,15,'SWA507P','',1),(9,'SWAS05170009','515','Mayank','Prasad','Mayank10@gbdips.com','2011-09-17','mayank17092011','17092011',4,'Male',14,'14','A','CBSE',1,'8860490571',9,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:04','SWA482P',1,18,17,'SWA515P','',1),(10,'SWAS05170010','522','Vidyut','Kalra','Vidyut11@gbdips.com','2012-03-27','vidyut27032012','27032012',4,'Male',13,'13','A','CBSE',1,'9811406435',10,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:04','SWA482P',1,20,19,'SWA522P','',1),(11,'SWAS05170011','525','Cherish','Takkar','Cherish12@gbdips.com','2012-02-02','cherish02022012','02022012',4,'Male',13,'13','A','CBSE',1,'9350756920',11,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:04','SWA482P',1,22,21,'SWA525P','',1),(12,'SWAS05170012','530','Manan','Hooda','Manan13@gbdips.com','2012-01-13','manan13012012','13012012',4,'Male',13,'13','A','CBSE',1,'9990644521',12,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:05','SWA482P',1,24,23,'SWA530P','',1),(13,'SWAS05170013','536','Yug','Sareen','Yug14@gbdips.com','2011-02-11','yug11022011','11022011',4,'Male',14,'14','A','CBSE',1,'7065536000',13,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:05','SWA482P',1,26,25,'SWA536P','',1),(14,'SWAS05170014','559','Aviral','Shrivastava','Aviral15@gbdips.com','2012-05-24','aviral24052012','24052012',4,'Female',13,'13','A','CBSE',1,'9891678068',14,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:05','SWA482P',1,28,27,'SWA559P','',1),(15,'SWAS05170015','583','Parth','Pandey','Parth16@gbdips.com','2011-07-11','parth11072011','11072011',4,'Male',14,'14','A','CBSE',1,'9953478048',15,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:05','SWA482P',1,30,29,'SWA583P','',1),(16,'SWAS05170016','608','Vani','Aggarwal','Vani17@gbdips.com','2012-07-02','vani02072012','02072012',4,'Female',13,'13','A','CBSE',1,'9899984461',16,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,32,31,'SWA608P','',1),(17,'SWAS05170017','616','Bhavaani','Siya','Bhavaani18@gbdips.com','2011-04-11','bhavaani11042011','11042011',4,'Female',14,'14','A','CBSE',1,'9035099909',17,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,34,33,'SWA616P','',1),(18,'SWAS05170018','478','Jaynt','Sharma','Jaynt19@gbdips.com','2011-11-29','jaynt29112011','29112011',4,'Male',14,'14','A','CBSE',1,'9811118762',18,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,36,35,'SWA478P','',1),(19,'SWAS05170019','484','Lakshita','Sharma','Lakshita20@gbdips.com','2011-06-27','lakshita27062011','27062011',4,'Female',14,'14','A','CBSE',1,'9910392202',19,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,38,37,'SWA484P','',1),(20,'SWAS05170020','491','Saatwan','Kumar','Saatwan21@gbdips.com','2011-07-16','saatwan16072011','16072011',4,'Male',14,'14','A','CBSE',1,'9811036711',20,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:06','SWA482P',1,40,39,'SWA491P','',1),(21,'SWAS05170021','496','Angel','Sharma','Angel22@gbdips.com','2011-11-21','angel21112011','21112011',4,'Male',14,'14','A','CBSE',1,'9999419811',21,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,42,41,'SWA496P','',1),(22,'SWAS05170022','497','Samarth','Mishra','Samarth23@gbdips.com','2012-01-27','samarth27012012','27012012',4,'Male',13,'13','A','CBSE',1,'9999774105',22,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,44,43,'SWA497P','',1),(23,'SWAS05170023','499','Saisha','Chatwal','Saisha24@gbdips.com','2011-01-13','saisha13012011','13012011',4,'Female',14,'14','A','CBSE',1,'9310363100',23,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,46,45,'SWA499P','',1),(24,'SWAS05170024','501','Ayaan','Jindal','Ayaan25@gbdips.com','2011-04-28','ayaan28042011','28042011',4,'Male',14,'14','A','CBSE',1,'9311242233',24,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,48,47,'SWA501P','',1),(25,'SWAS05170025','504','Kashvi','Bhatia','Kashvi26@gbdips.com','2011-10-15','kashvi15102011','15102011',4,'Female',14,'14','A','CBSE',1,'9811937132',25,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,50,49,'SWA504P','',1),(26,'SWAS05170026','506','Mayra','Kwatra','Mayra27@gbdips.com','2012-01-24','mayra24012012','24012012',4,'Female',13,'13','A','CBSE',1,'9891357317',26,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:07','SWA482P',1,52,51,'SWA506P','',1),(27,'SWAS05170027','510','Shivaansh','Anand','Shivaansh28@gbdips.com','2012-02-20','shivaansh20022012','20022012',4,'Male',13,'13','A','CBSE',1,'9873702292',27,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,54,53,'SWA510P','',1),(28,'SWAS05170028','513','Abhinav','Sharma','Abhinav29@gbdips.com','2011-07-19','abhinav19072011','19072011',4,'Male',14,'14','A','CBSE',1,'9953058716',28,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,56,55,'SWA513P','',1),(29,'SWAS05170029','521','Deetya','Aggarwal','Deetya30@gbdips.com','2012-01-27','deetya27012012','27012012',4,'Female',13,'13','A','CBSE',1,'9999880770',29,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,58,57,'SWA521P','',1),(30,'SWAS05170030','534','Shaurya','Shukla','Shaurya31@gbdips.com','2011-08-11','shaurya11082011','11082011',4,'Male',14,'14','A','CBSE',1,'9868333448',30,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,60,59,'SWA534P','',1),(31,'SWAS05170031','571','Shourya','Sharma','Shourya32@gbdips.com','2011-07-19','shourya19072011','19072011',4,'Male',14,'14','A','CBSE',1,'9891533023',31,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,62,61,'SWA571P','',1),(32,'SWAS05170032','579','Samridhi','Pathania','Samridhi33@gbdips.com','2012-02-02','samridhi02022012','02022012',4,'Female',13,'13','A','CBSE',1,'9013925332',32,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:08','SWA482P',1,64,63,'SWA579P','',1),(33,'SWAS05170033','622','Arnav','Arora','Arnav34@gbdips.com','2012-03-29','arnav29032012','29032012',4,'Male',13,'13','A','CBSE',1,'7503866997',33,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,66,65,'SWA622P','',1),(34,'SWAS05170034','641','Anjalika','Saini','Anjalika35@gbdips.com','2011-01-15','anjalika15012011','15012011',4,'Female',14,'14','A','CBSE',1,'9953465299',34,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,68,67,'SWA641P','',1),(35,'SWAS05170035','417','Gaurmita','Sharma','Gaurmita36@gbdips.com','2010-08-27','gaurmita27082010','27082010',4,'Female',1,'1','A','CBSE',1,'7291821181',35,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,70,69,'SWA417P','',1),(36,'SWAS05170036','418','Abhay','Chauhan','Abhay37@gbdips.com','2011-10-04','abhay04102011','04102011',4,'Male',14,'14','A','CBSE',1,'9811073403',36,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,72,71,'SWA418P','',1),(37,'SWAS05170037','420','Aarav','Bisht','Aarav38@gbdips.com','2010-08-12','aarav12082010','12082010',4,'Male',1,'1','A','CBSE',1,'9899676866',37,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:09','SWA482P',1,74,73,'SWA420P','',1),(38,'SWAS05170038','423','Sidhant','Baldewa','Sidhant39@gbdips.com','2010-10-10','sidhant10102010','10102010',4,'Male',1,'1','A','CBSE',1,'9811020811',38,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,76,75,'SWA423P','',1),(39,'SWAS05170039','426','Atharv','Sharma','Atharv40@gbdips.com','2010-07-05','atharv05072010','05072010',4,'Male',1,'1','A','CBSE',1,'9311500700',39,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,78,77,'SWA426P','',1),(40,'SWAS05170040','429','Arshjyot','Gill','Arshjyot41@gbdips.com','2010-03-08','arshjyot08032010','08032010',4,'Male',1,'1','A','CBSE',1,'9810289657',40,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,80,79,'SWA429P','',1),(41,'SWAS05170041','430','Aarav','Jain','Aarav42@gbdips.com','2010-07-17','aarav17072010','17072010',4,'Male',1,'1','A','CBSE',1,'9811169787',41,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,82,81,'SWA430P','',1),(42,'SWAS05170042','436','Nihaal','Chopra','Nihaal43@gbdips.com','2010-11-05','nihaal05112010','05112010',4,'Male',1,'1','A','CBSE',1,'9811196978',42,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:10','SWA482P',1,84,83,'SWA436P','',1),(43,'SWAS05170043','440','Yashika','Chhajer','Yashika44@gbdips.com','2010-12-11','yashika11122010','11122010',4,'Female',1,'1','A','CBSE',1,'9013549981',43,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,86,85,'SWA440P','',1),(44,'SWAS05170044','443','Ridhima','Malyan','Ridhima45@gbdips.com','2011-02-22','ridhima22022011','22022011',4,'Female',2,'2','A','CBSE',1,'8860556656',44,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,88,87,'SWA443P','',1),(45,'SWAS05170045','445','Krishna','Kumar','Krishna46@gbdips.com','2010-04-28','krishna28042010','28042010',4,'Female',1,'1','A','CBSE',1,'9999119469',45,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,90,89,'SWA445P','',1),(46,'SWAS05170046','449','Pragyan','Rishi','Pragyan47@gbdips.com','2011-04-03','pragyan03042011','03042011',4,'Male',2,'2','A','CBSE',1,'9910747788',46,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,92,91,'SWA449P','',1),(47,'SWAS05170047','455','Rayyaan','Sadiq','Rayyaan48@gbdips.com','2010-10-20','rayyaan20102010','20102010',4,'Male',1,'1','A','CBSE',1,'9873195327',47,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,94,93,'SWA455P','',1),(48,'SWAS05170048','465','Viraj','Vohra','Viraj49@gbdips.com','2010-10-08','viraj08102010','08102010',4,'Male',1,'1','A','CBSE',1,'8558990357',48,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:11','SWA482P',1,96,95,'SWA465P','',1),(49,'SWAS05170049','466','Ahana','Arora','Ahana50@gbdips.com','2011-02-22','ahana22022011','22022011',4,'Female',2,'2','A','CBSE',1,'9810735354',49,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,98,97,'SWA466P','',1),(50,'SWAS05170050','468','Madhav','Walia','Madhav51@gbdips.com','2010-07-20','madhav20072010','20072010',4,'Male',1,'1','A','CBSE',1,'9873032009',50,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,100,99,'SWA468P','',1),(51,'SWAS05170051','533','Janeesha','Gandhi','Janeesha52@gbdips.com','2011-02-28','janeesha28022011','28022011',4,'Female',2,'2','A','CBSE',1,'9873423637',51,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,102,101,'SWA533P','',1),(52,'SWAS05170052','540','Aanya','Mehta','Aanya53@gbdips.com','2010-09-08','aanya08092010','08092010',4,'Female',1,'1','A','CBSE',1,'9811275866',52,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,104,103,'SWA540P','',1),(53,'SWAS05170053','570','Rajveer','Kumar','Rajveer54@gbdips.com','2011-01-26','rajveer26012011','26012011',4,'Male',2,'2','A','CBSE',1,'9810449598',53,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,106,105,'SWA570P','',1),(54,'SWAS05170054','586','Ranya','Anand','Ranya55@gbdips.com','2010-07-25','ranya25072010','25072010',4,'Female',1,'1','A','CBSE',1,'9582170151',54,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:12','SWA482P',1,108,107,'SWA586P','',1),(55,'SWAS05170055','384','Bhuvi','Gupta','Bhuvi56@gbdips.com','2010-01-14','bhuvi14012010','14012010',4,'Female',1,'1','A','CBSE',1,'9711725524',55,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,110,109,'SWA384P','',1),(56,'SWAS05170056','388','Gauransh','Chopra','Gauransh57@gbdips.com','2009-10-14','gauransh14102009','14102009',4,'Male',3,'3','A','CBSE',1,'9811196979',56,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,112,111,'SWA388P','',1),(57,'SWAS05170057','537','Ather','Rahman','Ather58@gbdips.com','2009-10-20','ather20102009','20102009',4,'Male',3,'3','A','CBSE',1,'9540736526',57,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,114,113,'SWA537P','',1),(58,'SWAS05170058','588','Yana','Chadha','Yana59@gbdips.com','2009-08-29','yana29082009','29082009',4,'Female',3,'3','A','CBSE',1,'9582358811',58,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,116,115,'SWA588P','',1),(59,'SWAS05170059','316','Siddhant','Chauhan','Siddhant60@gbdips.com','2009-03-24','siddhant24032009','24032009',4,'Male',3,'3','A','CBSE',1,'9811073403',59,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,118,117,'SWA316P','',1),(60,'SWAS05170060','317','Samarth','Kumar','Samarth61@gbdips.com','2008-01-06','samarth06012008','06012008',4,'Male',4,'4','A','CBSE',1,'8745851533',60,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:13','SWA482P',1,120,119,'SWA317P','',1),(61,'SWAS05170061','318','Hitanshu','Jain','Hitanshu62@gbdips.com','2008-10-22','hitanshu22102008','22102008',4,'Male',4,'4','A','CBSE',1,'9811596038',61,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,122,121,'SWA318P','',1),(62,'SWAS05170062','323','Sanskriti','Chauhan','Sanskriti63@gbdips.com','2008-12-26','sanskriti26122008','26122008',4,'Female',4,'4','A','CBSE',1,'9711519050',62,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,124,123,'SWA323P','',1),(63,'SWAS05170063','329','Anurag','Pandey','Anurag64@gbdips.com','2008-05-15','anurag15052008','15052008',4,'Male',4,'4','A','CBSE',1,'9810204312',63,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,126,125,'SWA329P','',1),(64,'SWAS05170064','343','Aditie','Jain','Aditie65@gbdips.com','2008-08-24','aditie24082008','24082008',4,'Female',4,'4','A','CBSE',1,'9871033666',64,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,128,127,'SWA343P','',1),(65,'SWAS05170065','344','Ishika','Bansal','Ishika66@gbdips.com','2009-03-30','ishika30032009','30032009',4,'Female',3,'3','A','CBSE',1,'9582239606',65,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:14','SWA482P',1,130,129,'SWA344P','',1),(66,'SWAS05170066','346','Kanav','Rathore','Kanav67@gbdips.com','2008-10-06','kanav06102008','06102008',4,'Male',4,'4','A','CBSE',1,'9582379700',66,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,132,131,'SWA346P','',1),(67,'SWAS05170067','349','Tiya','Kadam','Tiya68@gbdips.com','2008-08-25','tiya25082008','25082008',4,'Female',4,'4','A','CBSE',1,'9811437868',67,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,134,133,'SWA349P','',1),(68,'SWAS05170068','350','Yanya','Garg','Yanya69@gbdips.com','2008-05-11','yanya11052008','11052008',4,'Female',4,'4','A','CBSE',1,'9873400872',68,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,136,135,'SWA350P','',1),(69,'SWAS05170069','359','Pratham','Kapoor','Pratham70@gbdips.com','2009-02-13','pratham13022009','13022009',4,'Male',3,'3','A','CBSE',1,'9999962235',69,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,138,137,'SWA359P','',1),(70,'SWAS05170070','607','Raghav','Gupta','Raghav71@gbdips.com','2008-04-12','raghav12042008','12042008',4,'Male',4,'4','A','CBSE',1,'9999940610',70,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,140,139,'SWA607P','',1),(71,'SWAS05170071','248','Abhinav','Rana','Abhinav72@gbdips.com','2007-05-09','abhinav09052007','09052007',4,'Male',5,'5','A','CBSE',1,'9891042516',71,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:15','SWA482P',1,142,141,'SWA248P','',1),(72,'SWAS05170072','262','Rehaan','Chopra','Rehaan73@gbdips.com','2007-08-15','rehaan15082007','15082007',4,'Male',5,'5','A','CBSE',1,'9811196978',72,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:16','SWA482P',1,144,143,'SWA262P','',1),(73,'SWAS05170073','285','Shaurya','Sharma','Shaurya74@gbdips.com','2007-10-16','shaurya16102007','16102007',4,'Male',5,'5','A','CBSE',1,'9810966718',73,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:16','SWA482P',1,146,145,'SWA285P','',1),(74,'SWAS05170074','296','Yug','Sharma','Yug75@gbdips.com','2007-10-16','yug16102007','16102007',4,'Male',5,'5','A','CBSE',1,'9899309859',74,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:16','SWA482P',1,148,147,'SWA296P','',1),(75,'SWAS05170075','585','Atishay','Jain','Atishay76@gbdips.com','2007-04-05','atishay05042007','05042007',4,'Female',5,'5','A','CBSE',1,'9350043605',75,'6999','De Indian Public  School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-05-15','17:48:16','SWA482P',1,150,149,'SWA585P','',1),(76,'SWAS05170076','256486632','Ritul','Acharya','pawan01@gmail.com','2012-05-16','ritul16052012','16052012',4,'Male',1,'1','B','CBSE',1,'9876543210',76,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/256486632_indian-schoolboy (1).jpg','2017-05-16','04:06:06pm','Rajiv Gupta',1,153,152,'SWAS05170076P','',1),(77,'SWAS05170077','45245','Sandeep','Kuar','sanjay@gmail.com','2005-05-05','sandeep05052005','05052005',4,'Male',5,'5','A','CBSE',1,'8547854855',77,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-18','12:05:05pm','Rajiv Gupta',1,155,154,'SWAS05170077P','',1),(78,'SWAS05170078','3224','Madhur','Gupta','mail.madhurg@gmail.com','2008-10-01','madhur01102008','01102008',4,'Male',4,'4','A','CBSE',1,'9821121662',78,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-19','12:22:22pm','Rajiv Gupta',1,157,156,'SWAS05170078P','',1),(79,'SWAS05170079','980','Ghazalah','Khan','tweetytweety526@gmail.com','0000-00-00','ghazalah','',4,'Female',5,'5','A','CBSE',1,'8586916696',79,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/980_banner.png','2017-05-19','06:08:08pm','Rajiv Gupta',1,159,158,'SWAS05170079P','',1),(80,'SWAS05170080','1536274765768','Madhvi','Kapahi','sugandh@swaadhyayan.com','2009-09-09','madhvi09092009','09092009',4,'Female',3,'3','A','CBSE',1,'9876435677',80,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/1536274765768_s1.jpg','2017-05-22','02:53:53pm','Rajiv Gupta',1,162,161,'SWAS05170080P','',1),(81,'SWAS05170081','001','Simran','Jain','amit@gmail.com','2014-04-01','simran01042014','01042014',4,'Female',13,'13','A','CBSE',1,'9896574514',81,'SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:24:24pm','Rajni Khosla',1,166,165,'SWAS05170081P','',1),(82,'SWAS05170082','0006','Nisha','Sharma','ash@gmail.com','2014-03-04','nisha04032014','04032014',4,'Female',14,'14','A','CBSE',1,'9865897595',82,'SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:56:56pm','Rajni Khosla',1,168,167,'SWAS05170082P','',1),(83,'SWAS05170083','0055','Aarav','Jain','amit01@gmail.com','2014-02-09','aarav09022014','09022014',4,'Male',1,'1','A','CBSE',1,'9868957779',83,'SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:36:36pm','Rajni Khosla',1,170,169,'SWAS05170083P','',1),(84,'SWAS05170084','0022','Shruti','Sharma','vik@gmail.com','2014-04-01','shruti01042014','01042014',4,'Female',2,'2','A','CBSE',1,'8596895555',84,'SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:24:24pm','Rajni Khosla',1,172,171,'SWAS05170084P','',1),(85,'SWAS05170085','0033','Tiya','Seth','rakss@gmail.com','2014-03-12','tiya12032014','12032014',4,'Female',3,'3','A','CBSE',1,'9865896789',85,'SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:13:13pm','Rajni Khosla',1,174,173,'SWAS05170085P','',1),(86,'SWAS05170086','0088','Riya','Kapoor','akk01@gmail.com','2014-03-14','riya14032014','14032014',4,'Female',4,'4','A','CBSE',1,'9818568799',86,'SWA11DS85','DUMMY SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:13:13pm','Rajni Khosla',1,176,175,'SWAS05170086P','',1),(87,'SWAS05170087','123456','Arushi','Gupta','dikistation@gmail.com','2012-09-11','arushi11092012','11092012',4,'Male',1,'1','A','CBSE',1,'9876543210',87,'SWA11DIPS85','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','12:10:10pm','Seema Awasthi',1,178,177,'SWAS05170087P','',1),(88,'SWAS05170088','374546','Vivek','Panwar','sugandh@swaadhyayan.com','2014-04-01','vivek01042014','01042014',4,'Male',4,'4','A','CBSE',1,'3454678676',88,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-23','05:54:54pm','Rajiv Gupta',1,181,180,'SWAS05170088P','',1),(89,'SWAS05170089','55678','Raj','Sharma','rohan@gmail. com','2010-10-10','raj10102010','10102010',4,'Male',5,'5','A','CBSE',1,'9876543219',89,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-29','12:06:06pm','Rajiv Gupta',1,184,183,'SWAS05170089P','',1),(90,'SWAS05170090','4556687','Ansh','Sharma','rohit@gmail. com','2012-12-12','ansh12122012','12122012',4,'Male',4,'4','A','CBSE',1,'9876543256',90,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-29','01:25:25pm','Rajiv Gupta',1,186,185,'SWAS05170090P','',1),(91,'SWAS05170091','7685','Rishu','Sharma','ram34@gmail. com','2011-11-11','rishu11112011','11112011',4,'Female',1,'1','A','CBSE',1,'5545674334',91,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','plugins/images/users/nouserphoto.png','2017-05-29','01:55:55pm','Rajiv Gupta',1,188,187,'SWAS05170091P','',1),(92,'SWAS05170092','2154','Kanika','Jain','yashpr2001@gmail.com','2004-03-12','kanika12032014','12032014',4,'Female',8,'8','A','CBSE',1,'9658548548',92,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/2154_s7.jpg','2017-05-30','04:43:43pm','Rajiv Gupta',1,190,189,'SWAS05170092P','',1),(93,'SWAS06170093','126457658','Adhyayan','Gupta','sugandh@swaadhyayan.com','2008-03-03','adhyayan03032008','03032008',4,'Male',5,'5','A','CBSE',1,'7654568765',93,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/126457658_s2.jpg','2017-06-08','04:57:57pm','Rajiv Gupta',1,193,192,'SWAS06170093P','',1),(94,'SWAS06170094','78548','Raj','Verma','fd.yash@gmail.com','2004-04-04','raj04042004','04042004',4,'Male',6,'6','A','CBSE',1,'6854854854',94,'6999','DE INDIAN PUBLIC SCHOOL','2017-2018','upload/upload_images/user_images/78548_s5.jpg','2017-06-15','10:46:46am','Rajiv Gupta',1,195,194,'SWAS06170094P','',1),(95,'SWAS06170095','1021','Kritika','Chand','vipinc@gmial.com','2008-08-29','kritika29082008','29082008',4,'Female',3,'3','A','CBSE',1,'9584854854',95,'SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:06','SWA11LSPS34A',1,200,199,'SWA1021P','',1),(96,'SWAS06170096','1022','Khushal','Yadav','santoshy@gmial.com','2007-03-24','khushal24032007','24032007',4,'Male',3,'3','A','CBSE',1,'6584584585',96,'SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:06','SWA11LSPS34A',1,202,201,'SWA1022P','',1),(97,'SWAS06170097','1023','Neeraj','Sharma','akhileshs1@gmial.com','2009-03-24','neeraj24032009','24032009',4,'Male',3,'3','A','CBSE',1,'6854854855',97,'SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:06','SWA11LSPS34A',1,204,203,'SWA1023P','',1),(98,'SWAS06170101','1027','Manisha','Dutta','arjund@gmial.com','2008-08-24','manisha24082008','24082008',4,'Male',4,'4','A','CBSE',1,'9685968555',101,'SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:06','SWA11LSPS34A',1,212,211,'SWA1027P','',1),(99,'SWAS06170102','1028','Shivani','Goyal','piyushg@gmial.com','2009-03-30','shivani30032009','30032009',4,'Female',3,'3','A','CBSE',1,'9857858785',102,'SWA11LSPS34','Little Star Public School','2017-2018','upload/upload_images/user_images/nouserphoto.png','2017-06-26','11:11:07','SWA11LSPS34A',1,214,213,'SWA1028P','',1);
/*!40000 ALTER TABLE `tbl_student_2017_18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_student_attendance`
--

DROP TABLE IF EXISTS `tbl_student_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_student_attendance` (
  `attendance_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(40) NOT NULL,
  `admission_no` varchar(40) NOT NULL,
  `class_name` int(2) NOT NULL,
  `section` varchar(2) NOT NULL,
  `attendance` varchar(3) NOT NULL,
  `doa` date NOT NULL,
  `school_code` varchar(40) NOT NULL,
  `marked_by` varchar(25) NOT NULL,
  `marked_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student_attendance`
--

LOCK TABLES `tbl_student_attendance` WRITE;
/*!40000 ALTER TABLE `tbl_student_attendance` DISABLE KEYS */;
INSERT INTO `tbl_student_attendance` VALUES (1,'SWAS05170046','449',2,'A','P','2017-06-23','6999','Rajiv Gupta','2017-06-23 09:32:02',1),(2,'SWAS05170049','466',2,'A','P','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:16',1),(3,'SWAS05170051','533',2,'A','L','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:16',1),(4,'SWAS05170053','570',2,'A','A','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:16',1),(5,'SWAS05170072','262',5,'A','P','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:52',1),(6,'SWAS05170073','285',5,'A','P','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:52',1),(7,'SWAS05170074','296',5,'A','P','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:52',1),(8,'SWAS05170075','585',5,'A','P','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:52',1),(9,'SWAS05170077','45245',5,'A','P','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:52',1),(10,'SWAS05170079','980',5,'A','P','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:52',1),(11,'SWAS05170089','55678',5,'A','A','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:52',1),(12,'SWAS06170093','126457658',5,'A','L','2017-06-23','6999','Rajiv Gupta','2017-06-23 13:42:52',1),(13,'SWAS05170037','420',1,'A','A','2017-06-29','6999','Rajiv Gupta','2017-06-29 08:24:49',1),(14,'SWAS05170038','423',1,'A','L','2017-06-29','6999','Rajiv Gupta','2017-06-29 08:24:49',1),(15,'SWAS05170039','426',1,'A','P','2017-06-29','6999','Rajiv Gupta','2017-06-29 08:24:49',1);
/*!40000 ALTER TABLE `tbl_student_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sub_indicator`
--

DROP TABLE IF EXISTS `tbl_sub_indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sub_indicator` (
  `sub_indicator_id` int(3) NOT NULL AUTO_INCREMENT,
  `mst_indicator_id` int(3) NOT NULL,
  `sub_indicator_name` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`sub_indicator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sub_indicator`
--

LOCK TABLES `tbl_sub_indicator` WRITE;
/*!40000 ALTER TABLE `tbl_sub_indicator` DISABLE KEYS */;
INSERT INTO `tbl_sub_indicator` VALUES (1,1,'Thinking Skill',1),(2,1,'Social Skill',1),(3,1,'Emotional Skill',1),(4,2,'Teachers',1),(5,2,'School Mates',1),(6,2,'School Programmes and Enviroments',1);
/*!40000 ALTER TABLE `tbl_sub_indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_survey`
--

DROP TABLE IF EXISTS `tbl_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_survey` (
  `survey_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `survey_code` varchar(35) NOT NULL,
  `school_name` varchar(150) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `contact_person` varchar(40) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `user_type_id` int(3) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`survey_id`),
  UNIQUE KEY `survey_code` (`survey_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_survey`
--

LOCK TABLES `tbl_survey` WRITE;
/*!40000 ALTER TABLE `tbl_survey` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_survey_qa_no`
--

DROP TABLE IF EXISTS `tbl_survey_qa_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_survey_qa_no` (
  `survey_qid` bigint(11) NOT NULL AUTO_INCREMENT,
  `survey_qcode` varchar(35) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `survey_code` varchar(35) NOT NULL,
  `question1` varchar(200) NOT NULL,
  `question2` varchar(8) NOT NULL,
  `question3` varchar(200) NOT NULL,
  `question4` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`survey_qid`),
  UNIQUE KEY `survey_qcode` (`survey_qcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_survey_qa_no`
--

LOCK TABLES `tbl_survey_qa_no` WRITE;
/*!40000 ALTER TABLE `tbl_survey_qa_no` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_survey_qa_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_survey_qa_yes`
--

DROP TABLE IF EXISTS `tbl_survey_qa_yes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_survey_qa_yes` (
  `survey_qid` bigint(11) NOT NULL AUTO_INCREMENT,
  `survey_qcode` varchar(35) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `survey_code` varchar(35) NOT NULL,
  `service_provider` varchar(100) NOT NULL,
  `since` int(6) NOT NULL,
  `total_year` int(4) NOT NULL,
  `class_from` varchar(6) NOT NULL,
  `class_to` varchar(6) NOT NULL,
  `question2` varchar(5) NOT NULL,
  `question3` varchar(5) NOT NULL,
  `question4` varchar(15) DEFAULT NULL,
  `question5` varchar(15) DEFAULT NULL,
  `question6` varchar(15) DEFAULT NULL,
  `question7` varchar(150) NOT NULL,
  `question8` varchar(5) NOT NULL,
  `question9` varchar(5) NOT NULL,
  `question10` varchar(150) NOT NULL,
  `question11` varchar(25) NOT NULL,
  `question12` varchar(15) NOT NULL,
  `question13` varchar(150) NOT NULL,
  `question14` varchar(15) NOT NULL,
  `question15` varchar(15) NOT NULL,
  `question16` varchar(15) NOT NULL,
  `question17` varchar(150) NOT NULL,
  `question18` varchar(150) NOT NULL,
  `question19` varchar(15) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`survey_qid`),
  UNIQUE KEY `survey_qcode` (`survey_qcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_survey_qa_yes`
--

LOCK TABLES `tbl_survey_qa_yes` WRITE;
/*!40000 ALTER TABLE `tbl_survey_qa_yes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_survey_qa_yes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_swf_question`
--

DROP TABLE IF EXISTS `tbl_swf_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_swf_question` (
  `swf_qid` bigint(11) NOT NULL AUTO_INCREMENT,
  `swf_qcode` varchar(40) NOT NULL,
  `class_id` int(5) NOT NULL,
  `subject_id` varchar(8) NOT NULL,
  `chapter_no` int(5) NOT NULL,
  `topic` varchar(40) NOT NULL,
  `swf_question` varchar(500) NOT NULL,
  `swf_question_type` varchar(60) NOT NULL,
  `term` int(2) NOT NULL,
  `marks` int(5) NOT NULL,
  `swf_path` varchar(255) NOT NULL,
  `ead_category` varchar(25) NOT NULL,
  `kause_category` varchar(25) NOT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`swf_qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_swf_question`
--

LOCK TABLES `tbl_swf_question` WRITE;
/*!40000 ALTER TABLE `tbl_swf_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_swf_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `e_mail` varchar(60) NOT NULL,
  `user_type` int(3) NOT NULL,
  `user_type_desc` varchar(15) NOT NULL,
  `school_code` varchar(40) NOT NULL,
  `created_date` date NOT NULL,
  `last_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_status` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'Pankaj12222011','swa#123456','Nimisha2@gbdips.com',6,'Parent','6999','2017-05-24','2017-05-24 09:58:21','Active'),(2,'nimisha22122011','22122011','Nimisha2@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:01','Active'),(3,'Amit04232011','swa#123456','Mohit3@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:02','Active'),(4,'mohit23042011','23042011','Mohit3@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:02','Active'),(5,'Sachin05252011','swa#123456','Ansh4@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:02','Active'),(6,'ansh25052011','25052011','Ansh4@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:02','Active'),(7,'Samer03112011','swa#123456','Neha5@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:02','Active'),(8,'neha11032011','11032011','Neha5@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:02','Active'),(9,'Ashish05292011','swa#123456','Mishika6@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:02','Active'),(10,'mishika29052011','29052011','Mishika6@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:03','Active'),(11,'Neeraj09162011','swa#123456','Lavanya7@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:03','Active'),(12,'lavanya16092011','16092011','Lavanya7@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:03','Active'),(13,'Joy01182012','swa#123456','Jia8@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:03','Active'),(14,'jia18012012','18012012','Jia8@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:03','Active'),(15,'Nitin02282012','swa#123456','Advik9@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:03','Active'),(16,'advik28022012','28022012','Advik9@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:04','Active'),(17,'Ishwari09172011','swa#123456','Mayank10@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:04','Active'),(18,'mayank17092011','17092011','Mayank10@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:04','Active'),(19,'Ritesh03272012','swa#123456','Vidyut11@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:04','Active'),(20,'vidyut27032012','27032012','Vidyut11@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:04','Active'),(21,'Mukesh02022012','swa#123456','Cherish12@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:04','Active'),(22,'cherish02022012','02022012','Cherish12@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:04','Active'),(23,'Ashish01132012','swa#123456','Manan13@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:04','Active'),(24,'manan13012012','13012012','Manan13@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:04','Active'),(25,'Raveen02112011','swa#123456','Yug14@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:05','Active'),(26,'yug11022011','11022011','Yug14@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:05','Active'),(27,'Deepesh05242012','swa#123456','Aviral15@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:05','Active'),(28,'aviral24052012','24052012','Aviral15@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:05','Active'),(29,'Nikhilesh07112011','swa#123456','Parth16@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:05','Active'),(30,'parth11072011','11072011','Parth16@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:05','Active'),(31,'Nikhil07022012','swa#123456','Vani17@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:06','Active'),(32,'vani02072012','02072012','Vani17@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:06','Active'),(33,'Satyakam04112011','swa#123456','Bhavaani18@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:06','Active'),(34,'bhavaani11042011','11042011','Bhavaani18@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:06','Active'),(35,'Shashank11292011','swa#123456','Jaynt19@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:06','Active'),(36,'jaynt29112011','29112011','Jaynt19@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:06','Active'),(37,'Mahesh06272011','swa#123456','Lakshita20@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:06','Active'),(38,'lakshita27062011','27062011','Lakshita20@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:06','Active'),(39,'Nitin07162011','swa#123456','Saatwan21@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:06','Active'),(40,'saatwan16072011','16072011','Saatwan21@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:06','Active'),(41,'Rajeev11212011','swa#123456','Angel22@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:06','Active'),(42,'angel21112011','21112011','Angel22@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:07','Active'),(43,'Rahul01272012','swa#123456','Samarth23@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:07','Active'),(44,'samarth27012012','27012012','Samarth23@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:07','Active'),(45,'Naveen01132011','swa#123456','Saisha24@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:07','Active'),(46,'saisha13012011','13012011','Saisha24@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:07','Active'),(47,'Ram04282011','swa#123456','Ayaan25@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:07','Active'),(48,'ayaan28042011','28042011','Ayaan25@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:07','Active'),(49,'Vikas10152011','swa#123456','Kashvi26@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:07','Active'),(50,'kashvi15102011','15102011','Kashvi26@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:07','Active'),(51,'Manoj01242012','swa#123456','Mayra27@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:07','Active'),(52,'mayra24012012','24012012','Mayra27@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:07','Active'),(53,'Neeraj02202012','swa#123456','Shivaansh28@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:07','Active'),(54,'shivaansh20022012','20022012','Shivaansh28@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:08','Active'),(55,'Varun07192011','swa#123456','Abhinav29@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:08','Active'),(56,'abhinav19072011','19072011','Abhinav29@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:08','Active'),(57,'Bharat01272012','swa#123456','Deetya30@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:08','Active'),(58,'deetya27012012','27012012','Deetya30@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:08','Active'),(59,'Anirudh08112011','swa#123456','Shaurya31@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:08','Active'),(60,'shaurya11082011','11082011','Shaurya31@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:08','Active'),(61,'Pawan07192011','swa#123456','Shourya32@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:08','Active'),(62,'shourya19072011','19072011','Shourya32@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:08','Active'),(63,'Gurdev02022012','swa#123456','Samridhi33@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:08','Active'),(64,'samridhi02022012','02022012','Samridhi33@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:08','Active'),(65,'Jaspal03292012','swa#123456','Arnav34@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:09','Active'),(66,'arnav29032012','29032012','Arnav34@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:09','Active'),(67,'Amit01152011','swa#123456','Anjalika35@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:09','Active'),(68,'anjalika15012011','15012011','Anjalika35@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:09','Active'),(69,'Gaurav08272010','swa#123456','Gaurmita36@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:09','Active'),(70,'gaurmita27082010','27082010','Gaurmita36@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:09','Active'),(71,'Gajender10042011','swa#123456','Abhay37@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:09','Active'),(72,'abhay04102011','04102011','Abhay37@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:09','Active'),(73,'Vijay08122010','swa#123456','Aarav38@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:09','Active'),(74,'aarav12082010','12082010','Aarav38@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:09','Active'),(75,'Vinod10102010','swa#123456','Sidhant39@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:09','Active'),(76,'sidhant10102010','10102010','Sidhant39@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:09','Active'),(77,'Manish07052010','swa#123456','Atharv40@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:10','Active'),(78,'atharv05072010','05072010','Atharv40@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:10','Active'),(79,'Sukhvinder03082010','swa#123456','Arshjyot41@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:10','Active'),(80,'arshjyot08032010','08032010','Arshjyot41@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:10','Active'),(81,'Amit07172010','swa#123456','Aarav42@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:10','Active'),(82,'aarav17072010','17072010','Aarav42@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:10','Active'),(83,'Sachin11052010','swa#123456','Nihaal43@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:10','Active'),(84,'nihaal05112010','05112010','Nihaal43@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:10','Active'),(85,'Hulash12112010','swa#123456','Yashika44@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:11','Active'),(86,'yashika11122010','11122010','Yashika44@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:11','Active'),(87,'Tarun02222011','swa#123456','Ridhima45@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:11','Active'),(88,'ridhima22022011','22022011','Ridhima45@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:11','Active'),(89,'Ashu04282010','swa#123456','Krishna46@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:11','Active'),(90,'krishna28042010','28042010','Krishna46@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:11','Active'),(91,'Neelish04032011','swa#123456','Pragyan47@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:11','Active'),(92,'pragyan03042011','03042011','Pragyan47@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:11','Active'),(93,'Mohd10202010','swa#123456','Rayyaan48@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:11','Active'),(94,'rayyaan20102010','20102010','Rayyaan48@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:11','Active'),(95,'Vikas10082010','swa#123456','Viraj49@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:11','Active'),(96,'viraj08102010','08102010','Viraj49@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:11','Active'),(97,'Gaurav02222011','swa#123456','Ahana50@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:11','Active'),(98,'ahana22022011','22022011','Ahana50@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:12','Active'),(99,'Anand07202010','swa#123456','Madhav51@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:12','Active'),(100,'madhav20072010','20072010','Madhav51@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:12','Active'),(101,'Rohit02282011','swa#123456','Janeesha52@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:12','Active'),(102,'janeesha28022011','28022011','Janeesha52@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:12','Active'),(103,'Parag09082010','swa#123456','Aanya53@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:12','Active'),(104,'aanya08092010','08092010','Aanya53@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:12','Active'),(105,'Diwakar01262011','swa#123456','Rajveer54@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:12','Active'),(106,'rajveer26012011','26012011','Rajveer54@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:12','Active'),(107,'Kapil07252010','swa#123456','Ranya55@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:12','Active'),(108,'ranya25072010','25072010','Ranya55@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:12','Active'),(109,'Parveen01142010','swa#123456','Bhuvi56@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:12','Active'),(110,'bhuvi14012010','14012010','Bhuvi56@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:13','Active'),(111,'Sandeep10142009','swa#123456','Gauransh57@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:13','Active'),(112,'gauransh14102009','14102009','Gauransh57@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:13','Active'),(113,'Abdur10202009','swa#123456','Ather58@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:13','Active'),(114,'ather20102009','20102009','Ather58@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:13','Active'),(115,'Unknown08292009','swa#123456','Yana59@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:13','Active'),(116,'yana29082009','29082009','Yana59@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:13','Active'),(117,'Gajender03242009','swa#123456','Siddhant60@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:13','Active'),(118,'siddhant24032009','24032009','Siddhant60@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:13','Active'),(119,'Sunil01062008','swa#123456','Samarth61@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:13','Active'),(120,'samarth06012008','06012008','Samarth61@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:13','Active'),(121,'Naveen10222008','swa#123456','Hitanshu62@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:14','Active'),(122,'hitanshu22102008','22102008','Hitanshu62@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:14','Active'),(123,'Virender12262008','swa#123456','Sanskriti63@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:14','Active'),(124,'sanskriti26122008','26122008','Sanskriti63@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:14','Active'),(125,'Akhilesh05152008','swa#123456','Anurag64@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:14','Active'),(126,'anurag15052008','15052008','Anurag64@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:14','Active'),(127,'Manoj08242008','swa#123456','Aditie65@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:14','Active'),(128,'aditie24082008','24082008','Aditie65@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:14','Active'),(129,'Kamal03302009','swa#123456','Ishika66@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:14','Active'),(130,'ishika30032009','30032009','Ishika66@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:14','Active'),(131,'Deepak10062008','swa#123456','Kanav67@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:14','Active'),(132,'kanav06102008','06102008','Kanav67@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:15','Active'),(133,'Yachin08252008','swa#123456','Tiya68@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:15','Active'),(134,'tiya25082008','25082008','Tiya68@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:15','Active'),(135,'Charat05112008','swa#123456','Yanya69@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:15','Active'),(136,'yanya11052008','11052008','Yanya69@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:15','Active'),(137,'Ujwal02132009','swa#123456','Pratham70@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:15','Active'),(138,'pratham13022009','13022009','Pratham70@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:15','Active'),(139,'Shyam04122008','swa#123456','Raghav71@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:15','Active'),(140,'raghav12042008','12042008','Raghav71@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:15','Active'),(141,'Abhilash05092007','swa#123456','Abhinav72@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:15','Active'),(142,'abhinav09052007','09052007','Abhinav72@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:15','Active'),(143,'Sachin08152007','swa#123456','Rehaan73@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:15','Active'),(144,'rehaan15082007','15082007','Rehaan73@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:15','Active'),(145,'Rajiv10162007','swa#123456','Shaurya74@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:16','Active'),(146,'shaurya16102007','16102007','Shaurya74@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:16','Active'),(147,'Mahendra10162007','swa#123456','Yug75@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:16','Active'),(148,'yug16102007','16102007','Yug75@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:16','Active'),(149,'Anurag04052007','swa#123456','Atishay76@gbdips.com',5,'Parent','6999','2017-05-15','2017-05-15 12:18:16','Active'),(150,'atishay05042007','05042007','Atishay76@gbdips.com',4,'Student','6999','2017-05-15','2017-05-15 12:18:16','Active'),(151,'admin','admin#98765','gbdips@gmail.com',1,'Administrator','6999','2017-05-15','2017-05-18 09:52:12','Active'),(152,'pawan05162012','pawan#123','pawan01@gmail.com',5,'Parent','6999','2017-05-16','2017-05-15 18:30:00','Active'),(153,'ritul16052012','16052012','pawan01@gmail.com',4,'Student','6999','2017-05-16','2017-05-15 18:30:00','Active'),(154,'sanjay05052005','sanjay#123','sanjay@gmail.com',5,'Parent','6999','2017-05-18','2017-05-17 20:00:00','Active'),(155,'sandeep05052005','05052005','sanjay@gmail.com',4,'Student','6999','2017-05-18','2017-05-17 20:00:00','Active'),(156,'i10012008','i#123','mail.madhurg@gmail.com',5,'Parent','6999','2017-05-19','2017-05-18 20:00:00','Active'),(157,'madhur01102008','01102008','mail.madhurg@gmail.com',4,'Student','6999','2017-05-19','2017-05-18 20:00:00','Active'),(158,'shamim','shamim#123','tweetytweety526@gmail.com',5,'Parent','6999','2017-05-19','2017-05-18 20:00:00','Active'),(159,'ghazalah','','tweetytweety526@gmail.com',4,'Student','6999','2017-05-19','2017-05-18 20:00:00','Active'),(160,'sugandh','sugandh','sugandh@swaadhyayan.com',3,'Teacher','6999','2017-05-22','2017-05-21 20:00:00','Active'),(161,'suresh09092009','suresh#123','sugandh@swaadhyayan.com',5,'Parent','6999','2017-05-22','2017-05-21 20:00:00','Active'),(162,'madhvi09092009','09092009','sugandh@swaadhyayan.com',4,'Student','6999','2017-05-22','2017-05-21 20:00:00','Active'),(163,'admin123456','access#123','info@dipsrohini.in',1,'Administrator','SWA11DIPS85','2017-05-23','2017-05-22 20:00:00','Active'),(164,'admin0888','access#123','dum@gmail.com',1,'Administrator','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(165,'amit04012014','amit#123','amit@gmail.com',5,'Parent','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(166,'simran01042014','01042014','amit@gmail.com',4,'Student','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(167,'ashwani03042014','ashwani#123','ash@gmail.com',5,'Parent','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(168,'nisha04032014','04032014','ash@gmail.com',4,'Student','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(169,'amit02092014','amit#123','amit01@gmail.com',5,'Parent','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(170,'aarav09022014','09022014','amit01@gmail.com',4,'Student','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(171,'vikas04012014','vikas#123','vik@gmail.com',5,'Parent','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(172,'shruti01042014','01042014','vik@gmail.com',4,'Student','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(173,'rakesh03122014','rakesh#123','rakss@gmail.com',5,'Parent','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(174,'tiya12032014','12032014','rakss@gmail.com',4,'Student','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(175,'akshit03142014','akshit#123','akk01@gmail.com',5,'Parent','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(176,'riya14032014','14032014','akk01@gmail.com',4,'Student','SWA11DS85','2017-05-23','2017-05-22 20:00:00','Active'),(177,'rajesh09112012','rajesh#123','dikistation@gmail.com',5,'Parent','SWA11DIPS85','2017-05-23','2017-05-22 20:00:00','Active'),(178,'arushi11092012','11092012','dikistation@gmail.com',4,'Student','SWA11DIPS85','2017-05-23','2017-05-22 20:00:00','Active'),(179,'rupali','rupali','premlata@swaadhyayan.cm',3,'Teacher','6999','2017-05-23','2017-05-22 20:00:00','Active'),(180,'sgdhsfhj04012014','sgdhsfhj#123','sugandh@swaadhyayan.com',5,'Parent','6999','2017-05-23','2017-05-22 20:00:00','Active'),(181,'vivek01042014','01042014','sugandh@swaadhyayan.com',4,'Student','6999','2017-05-23','2017-05-22 20:00:00','Active'),(182,'neha','neha','rishu@swaadhyayan.com',3,'Teacher','6999','2017-05-25','2017-05-24 20:00:00','Active'),(183,'rohan10102010','rohan#123','rohan@gmail. com',5,'Parent','6999','2017-05-29','2017-05-28 20:00:00','Active'),(184,'raj10102010','10102010','rohan@gmail. com',4,'Student','6999','2017-05-29','2017-05-28 20:00:00','Active'),(185,'rohit12122012','rohit#123','rohit@gmail. com',5,'Parent','6999','2017-05-29','2017-05-28 20:00:00','Active'),(186,'ansh12122012','12122012','rohit@gmail. com',4,'Student','6999','2017-05-29','2017-05-28 20:00:00','Active'),(187,'ram11112011','ram#123','ram34@gmail. com',5,'Parent','6999','2017-05-29','2017-05-28 20:00:00','Active'),(188,'rishu11112011','11112011','ram34@gmail. com',4,'Student','6999','2017-05-29','2017-05-28 20:00:00','Active'),(189,'kapil03122014','kapil#123','yashpr2001@gmail.com',5,'Parent','6999','2017-05-30','2017-05-29 20:00:00','Active'),(190,'kanika12032014','12032014','yashpr2001@gmail.com',4,'Student','6999','2017-05-30','2017-05-29 20:00:00','Active'),(191,'madhur','madhur@123','madhur@swaadhyayan.com',2,'Principal','6999','2017-06-06','2017-06-05 20:00:00','Active'),(192,'rajeev03032008','rajeev#123','sugandh@swaadhyayan.com',5,'Parent','6999','2017-06-08','2017-06-07 20:00:00','Active'),(193,'adhyayan03032008','03032008','sugandh@swaadhyayan.com',4,'Student','6999','2017-06-08','2017-06-07 20:00:00','Active'),(194,'kamal04042004','kamal#123','fd.yash@gmail.com',5,'Parent','6999','2017-06-15','2017-06-14 20:00:00','Active'),(195,'raj04042004','04042004','fd.yash@gmail.com',4,'Student','6999','2017-06-15','2017-06-14 20:00:00','Active'),(196,'swaadmin','swaadmin','director@swaadhyayan.com',8,'Academic Inchar','6999','2017-06-24','2017-06-23 20:00:00','Active'),(197,'admin10001','access#123','littlestar1001@gmail.com',1,'Administrator','SWA11LSPS34','2017-06-24','2017-06-23 20:00:00','Active'),(198,'sumitsharma','sumitsharma','sumit@swaadhyayan.com',9,'Academic Inchar','6999','2017-06-24','2017-06-24 12:29:56','Active'),(199,'Vipin08292008','swa#123456','vipinc@gmial.com',5,'Parent','10001','2017-06-26','2017-06-26 05:41:06','Active'),(200,'kritika29082008','29082008','vipinc@gmial.com',4,'Student','10001','2017-06-26','2017-06-26 05:41:06','Active'),(201,'Santosh03242007','swa#123456','santoshy@gmial.com',5,'Parent','SWA11LSPS34','2017-06-26','2017-06-26 06:32:55','Active'),(202,'khushal24032007','24032007','santoshy@gmial.com',4,'Student','SWA11LSPS34','2017-06-26','2017-06-26 06:32:59','Active'),(203,'Akhilesh03242009','swa#123456','akhileshs1@gmial.com',5,'Parent','SWA11LSPS34','2017-06-26','2017-06-26 06:33:04','Active'),(204,'neeraj24032009','24032009','akhileshs1@gmial.com',4,'Student','SWA11LSPS34','2017-06-26','2017-06-26 06:33:10','Active'),(205,'Chandan10222008','swa#123456','chandanroy@gmial.com',5,'Parent','SWA11LSPS34','2017-06-26','2017-06-26 06:33:15','Active'),(207,'Manish12262008','swa#123456','manishp@gmial.com',5,'Parent','SWA11LSPS34','2017-06-26','2017-06-26 06:33:21','Active'),(209,'Krishna05152008','swa#123456','krishnakm@gmial.com',5,'Parent','SWA11LSPS34','2017-06-26','2017-06-26 06:33:28','Active'),(211,'Arjun08242008','swa#123456','arjund@gmial.com',5,'Parent','SWA11LSPS34','2017-06-26','2017-06-26 06:33:33','Active'),(212,'manisha24082008','24082008','arjund@gmial.com',4,'Student','SWA11LSPS34','2017-06-26','2017-06-26 06:33:37','Active'),(213,'Piyush03302009','swa#123456','piyushg@gmial.com',5,'Parent','SWA11LSPS34','2017-06-26','2017-06-26 06:33:44','Active'),(214,'shivani30032009','30032009','piyushg@gmial.com',4,'Student','SWA11LSPS34','2017-06-26','2017-06-26 06:33:49','Active'),(215,'sonal123','sonal123','sonal13g@gmail.com',3,'Teacher','SWA11LSPS34','2017-06-26','2017-06-25 20:00:00','Active'),(216,'krish123','krish123','krishnaiyar@gmail.com',2,'Principal','SWA11LSPS34','2017-06-26','2017-06-25 20:00:00','Active');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_visitor`
--

DROP TABLE IF EXISTS `tbl_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_visitor` (
  `visitor_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_reference_id` bigint(11) NOT NULL,
  `user_type` int(3) NOT NULL,
  `share_data_id` int(11) NOT NULL,
  `visitor_comment` varchar(500) NOT NULL,
  `img_path` varchar(50) NOT NULL,
  `like_option` int(3) NOT NULL,
  `share_data_forward` varchar(100) NOT NULL,
  `visitor_action` int(2) NOT NULL,
  `view_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_view` bigint(11) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_visitor`
--

LOCK TABLES `tbl_visitor` WRITE;
/*!40000 ALTER TABLE `tbl_visitor` DISABLE KEYS */;
INSERT INTO `tbl_visitor` VALUES (1,160,3,2,'ok mam','',0,'',0,'2017-07-02 20:00:00',1,1),(2,160,3,4,'nice colours','',0,'',0,'2017-07-03 20:00:00',1,1),(3,160,3,4,'nice colours','',0,'',0,'2017-07-03 20:00:00',1,1);
/*!40000 ALTER TABLE `tbl_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_sept_status`
--

DROP TABLE IF EXISTS `usr_sept_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usr_sept_status` (
  `student_id` int(11) NOT NULL,
  `sept_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_sept_status`
--

LOCK TABLES `usr_sept_status` WRITE;
/*!40000 ALTER TABLE `usr_sept_status` DISABLE KEYS */;
INSERT INTO `usr_sept_status` VALUES (87,'COMPLETED','2017-07-11 15:06:30','2017-07-11 15:06:30');
/*!40000 ALTER TABLE `usr_sept_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-11 20:54:32
