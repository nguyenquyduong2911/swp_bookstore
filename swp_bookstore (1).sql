-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: swp_bookstore
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `idAccount` int NOT NULL AUTO_INCREMENT,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'123','vi','taotenduong12@gmail.com');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_gerne`
--

DROP TABLE IF EXISTS `book_gerne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_gerne` (
  `idbook_gerne` int NOT NULL,
  `bookGerne` varchar(45) NOT NULL,
  PRIMARY KEY (`idbook_gerne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_gerne`
--

LOCK TABLES `book_gerne` WRITE;
/*!40000 ALTER TABLE `book_gerne` DISABLE KEYS */;
INSERT INTO `book_gerne` VALUES (1,'Comedy'),(2,'Shounen'),(3,'Adventure'),(4,'Drama'),(5,'Action'),(6,'School Life'),(7,'Fantasy'),(8,'Slice Of Life'),(9,'Sci Fi'),(10,'Seinen'),(11,'Romance'),(12,'Supernatural'),(13,'Mystery'),(14,'Elemental Powers'),(15,'Historical'),(16,'Non-Human Protagonists'),(17,'Shoujo'),(18,'Monsters'),(19,'Mature'),(20,'Tragedy'),(21,'Gender Bender'),(22,'Psychological'),(23,'Horror'),(24,'Ecchi'),(25,'Josei'),(26,'Sport'),(27,'Shounen-Al'),(28,'Harem');
/*!40000 ALTER TABLE `book_gerne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_image`
--

DROP TABLE IF EXISTS `book_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_image` (
  `image_id` int NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_image`
--

LOCK TABLES `book_image` WRITE;
/*!40000 ALTER TABLE `book_image` DISABLE KEYS */;
INSERT INTO `book_image` VALUES (1,'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/cay_cam_ngot_cua_toi/2020_12_17_16_50_30_1-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/cay_cam_ngot_cua_toi/2020_12_17_16_50_30_2-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/cay_cam_ngot_cua_toi/2020_12_17_16_50_30_3-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/cay_cam_ngot_cua_toi/2020_12_17_16_50_30_12-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/cay_cam_ngot_cua_toi/2020_12_17_16_50_30_5-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/cay_cam_ngot_cua_toi/2020_12_17_16_50_30_2-390x510.jpg'),(2,'https://cdn0.fahasa.com/media/catalog/product/m/_/m_u-ph_t-h_nh-999-la-thu-new-2023b1.png','https://cdn0.fahasa.com/media/catalog/product/m/_/m_u-ph_t-h_nh-999-la-thu-new-2023b2.png','https://cdn0.fahasa.com/media/catalog/product/m/_/m_u-ph_t-h_nh-999-la-thu-new-2023999-01.png','https://cdn0.fahasa.com/media/catalog/product/m/_/m_u-ph_t-h_nh-999-la-thu-new-2023thong-bao-phat-hanh2.jpg','https://cdn0.fahasa.com/media/catalog/product/m/_/m_u-ph_t-h_nh-999-la-thu-new-2023b2.png','https://cdn0.fahasa.com/media/catalog/product/m/_/m_u-ph_t-h_nh-999-la-thu-new-2023999-02.png'),(3,'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/chua_kip_lon_da_truong_thanh_tai_ban_2023/2023_04_19_11_31_43_1-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/chua_kip_lon_da_truong_thanh_tai_ban_2023/2023_04_19_11_31_43_2-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/chua_kip_lon_da_truong_thanh_tai_ban_2023/2023_04_19_11_31_43_3-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/chua_kip_lon_da_truong_thanh_tai_ban_2023/2023_04_19_11_31_43_4-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/chua_kip_lon_da_truong_thanh_tai_ban_2023/2023_04_19_11_31_43_5-390x510.jpg','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/chua_kip_lon_da_truong_thanh_tai_ban_2023/2023_04_19_11_31_43_6-390x510.jpg'),(4,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `book_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookdetailed`
--

DROP TABLE IF EXISTS `bookdetailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookdetailed` (
  `book_id` int NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `cover_form` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `year_publish` int DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `packaging_size` varchar(50) DEFAULT NULL,
  `num_pages` int DEFAULT NULL,
  `description` longtext,
  `image` varchar(255) DEFAULT NULL,
  `categoryID` int NOT NULL,
  `gerne_id` int NOT NULL,
  `book_imageID` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `categoryID_idx` (`categoryID`),
  KEY `gerne_id_idx` (`gerne_id`),
  KEY `image_id_idx` (`book_imageID`),
  CONSTRAINT `category_id` FOREIGN KEY (`categoryID`) REFERENCES `category` (`idCategory`),
  CONSTRAINT `gerne_id` FOREIGN KEY (`gerne_id`) REFERENCES `book_gerne` (`idbook_gerne`),
  CONSTRAINT `image_id` FOREIGN KEY (`book_imageID`) REFERENCES `book_image` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookdetailed`
--

LOCK TABLES `bookdetailed` WRITE;
/*!40000 ALTER TABLE `bookdetailed` DISABLE KEYS */;
INSERT INTO `bookdetailed` VALUES (1,'Cây Cam Ngọt Của Tôi','Nhã Nam','NXB Hội Nhà Văn','Bìa Mềm',86.40,10,'José Mauro de Vasconcelos',2020,'English',280.00,'20 x 14.5',244,'“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.” - The NationalHãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.Có hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.Mở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.','https://cdn0.fahasa.com/media/catalog/product/i/m/image_217480.jpg',1,1,1),(2,'999 Lá Thư Gửi Cho Chính Mình','AZ Việt Nam','Thanh Niên','Bìa Mềm',74.25,10,'Miêu Công Tử',2023,'Chinese',210.00,'18 x 12.5 x 1.3',164,'999 Lá Thư Gửi Cho Chính Mình - Những Lá Thư Ấn Tượng Nhất (Phiên Bản Song Ngữ Trung - Việt)Bạn có đang cảm thấy bị “quá tải” với cuộc sống hiện tại không?Hay là đang loay hoay chữa lành giữa những bộn bề không thể gác lại, chỉ trực chờ để cuốn mình đi?Đã bao lâu rồi bạn chưa ngồi xuống viết những dòng nhật ký, đã bao lâu rồi bạn chưa tự gửi cho mình một lá thư viết ra những điều bạn mong muốn, viết ra những ước mơ còn dang dở, viết ra những khó khăn bạn đã hoặc đang phải trải qua và cũng không quên động viên, cổ vũ chính mình của hiện tại, nhắn nhủ đến chính mình của tương lai…Theo dòng chảy hối hả của cuộc sống hiện nay – khi mỗi một ngày đều trôi qua nhanh chóng nhưng chẳng đọng lại được điều gì thì việc viết lách hay nhắn nhủ những lời tâm tình cho nhau càng trở thành một điều xa xỉ, dường như chẳng mấy ai nguyện làm. Nhưng không sao hết, đã có “999 lá thư gửi cho chính mình” – với Phiên bản chọn lọc, tổng hợp lại những lá thư hay nhất, những lá thư ý nghĩa nhất, chất chứa nội hàm, khả năng chữa lành cao sẽ thay những lá thư tay nói lên những điều bạn muốn giãi bày mà không thể cất tiếng, những điều trong lòng bạn chẳng biết thổ lộ với ai, cùng banj tìm lại ý nghĩa cuộc sống, tìm lại bản thân, tìm lại cả ước mơ và nhiệt huyết mà bạn đã lỡ đánh rơi trên con đường trưởng thành vội vã.Và cũng không chỉ dừng lại ở việc mang nội dung ý nghĩa, sâu sắc nhất, những lá thư được chọn lọc kỹ càng trong sách còn được trình bày dưới phương thức song ngữ Trung – Việt như một cách biểu đạt trọn vẹn tâm tư và tình cảm của tác giả đến với độc giả, để cuốn sách không chỉ là một phương thuốc chữa lành hữu hiệu cho tâm hồn mà còn là một ấn phẩm tuyệt vời cho việc trau dồi ngoại ngữ, bổ sung kiến thức, để bạn không chỉ có một vẻ ngoài rạng rỡ mà còn tỏa sáng cả trong nội tâm, làm một người không chỉ mạnh mẽ còn có tài hoa, giúp bạn nở rộ, làm chủ sinh mệnh của chính mình.','https://cdn0.fahasa.com/media/catalog/product/m/_/m_u-ph_t-h_nh-999-la-thu-new-2023b1.jpg',1,1,2),(3,'Chưa Kịp Lớn Đã Trưởng Thành (Tái Bản 2023)','','Dân Trí','Bìa Mềm',61.62,10,'Tớ Là Mây',2023,'Vietnamese',185.00,'17 x 14 x 1.1',240,'Chưa Kịp Lớn Đã Trưởng ThànhChúng ta của hiện tại, đều chưa kịp lớn đã phải trưởng thành. Lúc còn nhỏ có thể khóc cười tuỳ ý. Trưởng thành rồi mới biết hành động cũng cần nhìn sắc mặt người khác. Lúc còn nhỏ có thể sống vô tư, vô lo. Trưởng thành rồi mới biết nếu chậm chân hơn người khác, chắc chắn sẽ bị đào thải bất cứ lúc nào. Lúc còn nhỏ có thể khao khát, mơ mộng. Trưởng thành rồi mới biết thế giới ngoài kia thực sự rất tàn khốc. Chúng ta đều giống nhau, lúc còn nhỏ đều khao khát trưởng thành. Trưởng thành rồi lại loay hoay học cách trở thành người lớn. Nếu bạn đang trải qua giai đoạn lạc lõng và cô đơn như vậy, hãy để “Chưa kịp lớn đã phải trưởng thành” làm một người bạn ở bên, xoa dịu tổn thương và gửi tặng bạn đôi điều khích lệ. Mỗi trang sách đều là một lá thư nhắn nhủ bạn về sự đặc biệt của bản thân, về những nỗ lực hoàn thiện không ngừng nghỉ trong thế giới của người trưởng thành. Cầm trên tay cuốn sách này, bạn sẽ hiểu rằng: quá trình trưởng thành nào cũng đều có kì vọng và nuối tiếc nhưng con người luôn phải học cách vượt qua mơ hồ, gạt đi mộng tưởng mà lớn lên. Gấp lại “Chưa kịp lớn đã phải trưởng thành”, mong bạn trở thành phiên bản hoàn hảo nhất để kịp trải nghiệm và tận hưởng khoảnh khắc của tuổi trẻ. Mong bạn bản lĩnh bước đi, có được tương lai mà mình mong muốn, càng mong bạn có được cuộc đời bình thản an nhiên. Và phần còn lại của tuổi trẻ, mong bạn sẽ thực sự hạnh phúc.','https://cdn0.fahasa.com/media/catalog/product/9/7/9726a839a056959e94aba54e7c1ff0d6_1_1.jpg',1,1,3),(4,'Tô Bình Yên Vẽ Hạnh Phúc (Tái Bản 2022)','Skybooks','NXB Phụ Nữ Việt Nam','Bìa Mềm',66.00,10,'Kulzsc',2022,'Vietnamese',150.00,'24 x 19 x 0.4',96,'Tô Bình Yên Vẽ Hạnh Phúc (Tái Bản 2022)Sau thành công của cuốn sách đầu tay “Phải lòng với cô đơn” chàng họa sĩ nổi tiếng và tài năng Kulzsc đã trở lại với một cuốn sách vô cùng đặc biệt mang tên: \"Tô bình yên - vẽ hạnh phúc” – sắc nét phong cách cá nhân với một chút “thơ thẩn, rất hiền”.Không giống với những cuốn sách chỉ để đọc, “Tô bình yên – vẽ hạnh phúc” là một cuốn sách mà độc giả vừa tìm được “Hạnh phúc to to từ những điều nho nhỏ” vừa được thực hành ngay lập tức. Một sự kết hợp mới lạ đầy thú vị giữa thể loại sách tản văn và sách tô màu. Lật mở cuốn sách này, bạn sẽ thấy vô vàn những điều nhỏ bé dễ thương lan tòa nguồn năng lượng tích cực. Và kèm theo một list những điều tuyệt vời khiến bạn không thể bỏ lỡ:- Tận tình chỉ dẫn: 8 hướng dẫn tô màu đầy hứng thú từ Kulzsc- Tranh vẽ đơn giản, gần gũi. Nét vẽ đáng yêu, dễ thương- Chủ đề xoay quanh những điều bình yên trong cuộc sống: Đọc sách, đi dạo, dọn dẹp nhà cửa, trồng cây, ăn cơm mẹ nấu, nghe một bản nhạc hay, và nghĩ về nụ cười của một ai đó…','https://cdn0.fahasa.com/media/catalog/product/8/9/8935325006289.jpg',1,1,4),(5,'Nhà Giả Kim (Tái Bản 2020)','Nhã Nam','NXB Hội Nhà Văn','Bìa Mềm',63.20,10,'Paulo Coelho',2020,'English',220.00,'20.5 x 13',227,'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc. “Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”','https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_36793.jpg',1,1,NULL),(6,'Ghi Chép Pháp Y - Những Cái Chết Bí Ẩn','AZ Việt Nam','Thanh Niên','Bìa Mềm',120.00,12,'Lưu Hiểu Huy',2022,'English',350.00,'24 x 15.7',344,'Làm cách nào để một “xác chết lên tiếng”? - đó là công việc của bác sĩ pháp y. “Ghi chép pháp y - Những cái chết bí ẩn” là cuốn sách nằm trong hệ liệt với “Pháp y Tần Minh” - bộ tiểu thuyết nổi đình đám của xứ Trung đã được chuyển thể thành series phim. Cuốn sách tổng hợp những vụ án có thật, được viết bởi bác sĩ pháp y Lưu Hiểu Huy - người có 15 năm kinh nghiệm và từng mổ xẻ hơn 800 tử thi. Trải qua 15 câu chuyện kinh hoàng, cuốn sách sẽ đưa bạn bước vào hiện trường của những vụ án man rợ như: xác chết phi tang dưới cánh đồng ngô, thi thể thiếu nữ không lành lặn, xác chết nhầy nhụa đang bị giòi bọ đục khoét hay một thi thể co cứng trong màng bọc nilon…lần theo những dấu vết, ghép lại sự thật từ những mảnh vụn thi thể, nguyên nhân của cái chết sẽ dần được hé mở.Mỗi vụ án đều là một ẩn số, hiện trường vụ án bao gồm cả xác chết chính là chiếc chìa khóa để truy tìm hung thủ ngay cả khi nó không còn nguyên vẹn. Vậy làm cách để các bác sĩ pháp y có thể xác định thương tật, các dấu hiệu cơ thể bị xâm hại? Cuốn sách này sẽ trình bày những kiến thức chuyên môn và quy trình xử lý vụ án, từ hiện trường vụ án đến đài giải phẫu, xét nghiệm nội tạng, phân tích chất độc… từng bước tìm ra bí mật ẩn giấu sau mỗi tử thi, phơi bày những manh mối liên quan đến tội ác con người và lỗ hổng của xã hội.Không chỉ thuật lại những vụ án và các phương pháp pháp y, cuốn sách còn chứa đựng cảm xúc của tác giả đối với nghề nghiệp và sự méo mó của bản chất con người. Chẳng hạn, một đứa trẻ bệnh nặng phải đau đớn đến thế nào khi bị người nhà đem ra làm công cụ để đòi bồi thường? Cuốn sách sẽ phơi bày những góc khuất của xã hội, những hành vi thủ ác, sự biến chất và mất nhân tính của một bộ phận con người trong xã hội.Nếu bạn tò mò muốn biết cách đánh giá tuổi của người chết dựa trên mức độ mòn răng? Hay cách dùng một con giòi từ người chết để suy ra thời điểm chính xác của vụ án giết người?  Hy vọng cuốn sách này sẽ cho bạn trải nghiệm khó quên về nghề pháp y.','https://cdn0.fahasa.com/media/catalog/product/b/_/b_a-tr_c---ph_p-y-600.jpg',1,1,NULL),(7,'Anh Không Bận, Chỉ Là Không Nhớ Em (Tái Bản 2023)','Công Ty Cổ Phần Time Books','Thế Giới','Bìa Mềm',75.65,12,'Tuệ Mẫn',2023,'Vietnamese',180.00,'17 x 11.5 x 1.2',238,'Tuệ Mẫn – một nhà văn được nhiều bạn trẻ yêu thích nhờ lối viết giản dị, nhẹ nhàng và rất đỗi cảm xúc. Bắt đầu cầm bút từ những ngày đầu của tuổi đôi mươi, Tuệ Mẫn bén duyên với nghề viết với cuốn sách đầu tay “Anh đã quên em chưa?”. Những câu chuyện của Tuệ Mẫn như cái ôm vỗ về dịu dàng đến những trái tim biết yêu ngoài kia, để gửi đi hi vọng sau này ai cũng sẽ có được hạnh phúc xứng đáng.ANH KHÔNG BẬN, CHỈ LÀ KHÔNG NHỚ EM - TUỆ MẪN- Dành cho những năm tháng cô đơn đợi một người- Dành cho bạn, người quên yêu bản thân lúc vụn vỡ nhất“Một chuyện, cho dù đẹp đẽ tới đâu, nếu như không có kết quả thì cũng đừng bận tâm. Bởi vì lâu dần bạn sẽ thấy mệt.Một người, cho dù lưu luyến thế nào, nếu như không nắm giữ được thì cũng đừng cố chấp. Bởi vì lâu dần bạn sẽ thấy đau lòng.”','https://cdn0.fahasa.com/media/catalog/product/9/7/9786043925593.jpg',1,1,NULL),(8,'Đám Trẻ Ở Đại Dương Đen','AZ Việt Nam','Thế Giới','Bìa Mềm',77.22,13,'Châu Sa Đáy Mắt',2023,'Vietnamese',300.00,'19 x 13 x 1.5',280,'Đám trẻ ở đại dương đen là lời độc thoại và đối thoại của những đứa trẻ ở đại dương đen, nơi từng lớp sóng của nỗi buồn và tuyệt vọng không ngừng cuộn trào, lúc âm ỉ, khi dữ dội. Những đứa trẻ ấy phải vật lộn trong những góc tối tâm lý, với sự u uất đè nén từ tổn thương khi không được sinh ra trong một gia đình toàn vẹn, ấm êm, khi phải mang trên đôi vai non dại những gánh nặng không tưởng.Song song đó cũng là quá trình tự chữa lành vô cùng khó khăn của đám trẻ, cố gắng vươn mình ra khỏi đại dương đen, tìm cho mình một ánh sáng. Và chính những sự nỗ lực xoa dịu chính mình đó đã hóa thành những câu từ trong cuốn sách này, bất kể đau đớn thế nào.Cuốn sách được viết bởi Châu Sa Đáy Mắt, một tác giả GenZ mong muốn cùng các bạn trẻ bộc bạch và vỗ về những xúc cảm chân thật về gia đình, xã hội và chính bản thân.Sách được phát hành bởi Wavebooks - thương hiệu sách dành cho người Việt trẻ.','https://cdn0.fahasa.com/media/catalog/product/8/9/8935325011559.jpg',1,1,NULL),(9,'Chúng Ta Rồi Sẽ Hạnh Phúc, Theo Những Cách Khác Nhau','AZ Việt Nam','NXB Văn Học','Bìa Mềm',68.80,9,'Thảo Thảo',2021,'Vietnamese',220.00,'20.5 x 13',208,'CHÚNG TA RỒI SẼ HẠNH PHÚC, THEO NHỮNG CÁCH KHÁC NHAU là một lời nhắn nhủ của tác giả Thảo Thảo đến tất cả mọi người rằng mỗi chúng ta đều là một cá thể duy nhất trong vũ trụ bao la rộng lớn, đừng bao giờ cho người khác quyền mang lại niềm vui hay nỗi buồn cho bạn. Hãy sống với những gì bạn muốn, làm nhũng gì bạn cho là đúng, bởi nếu cứ sống vì người khác, bạn sẽ đánh mất những-gì-đặc-biệt-nhất của bản thân mình.“Những nụ cười tươi tắn nhất sẽ giấu đi những bí mật đau thương nhất.Ngày lãng phí nhất trong cuộc đời là ngày thiếu vắng những nụ cười”.Sẽ có một ngày bạn tỉnh dậy thật sớm, ngắm bình minh lên thật đẹp, đón ánh sáng thật lung linh rực rỡ và mỉm cười an nhiên khi từng nghĩ mình là kẻ cô đơn nhất thế giới nay đã có một người ở cạnh bên, cùng nhau hạnh phúc.Cho dù ngày hôm nay bạn có căm ghét cuộc sống này đi chăng nữa thì cũng đừng buông bỏ, bởi chúng ta sinh ra trên đời này là để được hạnh phúc. Hãy trân trọng một lần được sống để sống trọn vẹn.','https://cdn0.fahasa.com/media/catalog/product/1/3/139990755_1302883240068333_3844579474690419303_n.jpg',1,1,NULL),(10,'Tạm Biệt Tôi Của Nhiều Năm Về Trước','Skybooks','Dân Trí','Bìa Mềm',74.10,7,'An',2022,'Vietnamese',230.00,'18 x 13 x 1',248,'“Tạm biệt tôi của nhiều năm về trước” là ấn phẩm mới nhất của An, chàng tác giả từng được biết tới với “cơn sốt” sách “Hẹn nhau phía sau tan vỡ” - liên tục cháy hàng và chinh phục trái tim của hàng vạn độc giả trẻ.Trong “Tạm biệt tôi của nhiều năm về trước”, với 248 trang viết kèm minh họa được thực hiện bởi chính tác giả, An dẫn bạn đọc bóc tách từng tổn thương chưa được chữa lành bên trong mình. Dù đó là vết thương do ai gây ra, vì lý do gì, vào thời điểm nào, còn sâu hay đã vơi… thì đều được vỗ về và ủi an.“Để trưởng thành chúng ta phải nói lời tạm biệt với nhiều người, và có thể là tạm biệt chính bản thân mình trong quá khứ.”“Đôi khi chúng ta tha thứ cho một người không phải vì họ xứng đáng nhận được, mà vì bạn xứng đáng với sự thanh thản, không cần bận tâm về những chuyện đã qua nữa.”“Chỉ khi bạn đi về phía ánh sáng, chiếc bóng mới hắt về phía sau. Đừng tự giam cầm mình trong quá khứ, hãy làm gì đó để bản thân cảm thấy tốt hơn. Rồi mọi chuyện cũng sẽ qua, mọi vết thương đều sẽ lành lại.“Hãy chọn nói Tạm Biệt những kỉ niệm đã cũ mèm, cho phép nó rời bỏ mình, để ngày thêm an tĩnh và đêm thêm an yên.Khép lại “Tạm biệt tôi của nhiều năm về trước”, bạn sẽ trở thành một bạn hoàn toàn mới - 1 dáng vẻ sâu lắng, kiên cường và lắng đọng hơn.','https://cdn0.fahasa.com/media/catalog/product/b/_/b_a-1_tam-biet-toi-cua-nhieu-nam-ve-truoc.jpg',1,1,NULL),(11,'Thiên Sứ Nhà Bên - Tập 5.5 - Tặng Kèm Bookmark','Nhà Xuất Bản Kim Đồng',' Kim Đồng','Bìa Mềm',74.10,10,'Saekisan, Hanekoto',2023,'Vietnamese',350.00,'19 x 13 x 1.5',300,'Fujimiya Amane - học sinh cấp ba sống tự lập với lối sinh hoạt cẩu thả, và Shiina Mahiru – hoa khôi của trường với biệt danh “thiên sứ”, dù học cùng trường, đồng thời là hàng xóm cạnh nhà nhau, nhưng giữa họ lại chẳng hề có sự kết nối nào. Cho đến một ngày, cuộc gặp gỡ tình cờ của số phận đã thay đổi cuộc sống của họ mãi mãi. Để ngày hôm nay, Mahiru và Amane được ăn cơm chung một nhà.Đây là tập truyện ngắn khắc họa những khoảnh khắc ngọt ngào trong chuyện tình của chàng trai nhà bên với nàng thiên sứ tuy lạnh lùng nhưng thật đáng yêu, về quá khứ và hiện tại của hai con người đã âm thầm thu hút lẫn nhau ấy.Đó là một chuyện tình êm đềm và chậm rãi…','https://cdn0.fahasa.com/media/catalog/product/t/s/tsnb55.jpg',1,1,NULL),(12,'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Nhiên Là Sai Lầm','Thái Hà','Hà Nội','Bìa Mềm',139.00,21,'Wataru WATARI, Ponkan8',2023,'Vietnamese',280.00,'19 x 13 x 2.5',316,'Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. (tên gốc: Yahari Ore no Seishun Rabukome wa Machigatteiru., gọi tắt là Oregairu), là một trong những series light novel ăn khách nhất trong vòng 20 năm trở lại đây, bộ truyện được viết bởi tác giả trẻ Wataru WATARI, do họa sĩ Ponkan8 vẽ minh họa và được xuất bản bởi NXB nổi tiếng Shogakukan.Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. đã dành giải light novel hay nhất của bảng xếp hạng uy tín Kono light novel ga sugoi! trong 3 năm liên tiếp là 2014, 2015 và 2016. Bên cạnh đó, nam chính và nữ chính của series này là Hachiman và Yokin oshita cũng đoạt giải nam nữ chính được yêu thích nhất trong các năm đó. Họa sĩ minh họa Ponkan8 với những bức tranh minh họa đẹp và sinh động của mình cũng được bình chọn là họa sĩ minh họa được yêu thích nhất trong năm 2015. Đến thời điểm hiện tại, series đã kết thúc với 14 tập, nhưng số sách bán ra đã vượt mốc 10 triệu bản.','https://cdn0.fahasa.com/media/catalog/product/z/4/z4333553122745_bd309f8fcf2d3883f4e568ba45b71c01_1.jpg',3,1,NULL),(13,'Tiểu Thuyết Thanh Gươm Diệt Quỷ: Người Dẫn Lối Của Gió','Nhà Xuất Bản Kim Đồng',' Kim Đồng','Bìa Mềm',47.50,13,'Koyoharu Gotouge, Aya Yajima',2023,'Vietnamese',250.00,'19 x 13',236,'Nhờ cuộc gặp gỡ vào thời niên thiếu với Kumeno Masachika - một kiếm sĩ sử dụng Hơi thở của gió, Sanemi đã biết đến và gia nhập đội Diệt quỷ.Tuy tính khí hoàn toàn trái ngược, lúc nào cũng cự nự nhau nhưng họ vẫn chung chí hướng nỗ lực rèn luyện để hướng đến vị trí “Trụ cột”.Masachika vừa là tiền bối, vừa là “đối thủ”, đồng thời cũng là người đầu tiên nhìn ra khía cạnh đặc biệt ẩn sâu dưới vẻ ngoài gai góc của Sanemi.Mọi chuyện tưởng chừng suôn sẻ, cho đến một ngày họ nhận được mệnh lệnh phối hợp thực hiện nhiệm vụ…Chuyện chưa từng được kể về Phong trụ Shinazugawa Sanemi và nhiều nhân vật thú vị khác như Hashibira Inosuke, Hà trụ Tokito Muichiro… sẽ được hé mở trong tuyển tập 5 câu chuyện với đủ sắc thái cảm xúc!! Ngoài ra, “Học viện Diệt quỷ” cũng tái xuất với những mẩu chuyện vui nhộn của cấp hai và cấp ba!','https://cdn0.fahasa.com/media/catalog/product/t/i/tieu-thuyet-thanh-guom-diet-quy-nguoi-dan-loi-cua-gio---cuon-thu-3---kem-obi.jpg',3,2,NULL),(14,'Tiểu Thuyết Thanh Gươm Diệt Quỷ 2: Cánh Bướm Khuyết','Nhà Xuất Bản Kim Đồng',' Kim Đồng','Bìa Mềm',47.50,24,'Koyoharu Gotouge, Aya Yajima',2021,'Vietnamese',210.00,'19 x 13 x 1',204,'Ngược về quá khứ, Himejima từng cứu giúp Kanae vàShinobu bị quỷ sát hại cha mẹ. Himejima thương xót và căm ghét số phận. Nếu không có biến cố kia, hẳn Shinobu đã có thể sống hạnh phúc trong tình yêu thương của cha mẹ và chị gái thay vì bị giận dữ và hận thù vây hãm. Tuy nhiên, anh đã quay lưng với lời thỉnh cầu của hai đứa trẻ. Anh không thể để tương lai của hai chị em bị tước đi vì những cảm xúc nhất thời này.Vì không muốn hai chị em dấn thân vào con đường nguy hiểm, anh đã đưa ra thử thách hòng ngăn cản cả hai gia nhập Đội Diệt Quỷ, thế nhưng…“Cánh bướm khuyết” là cuốn tiểu thuyết gồm 5 câu chuyện vô cùng thú vị, hé lộ về cuộc sống của các “Trụ cột” - Dàn nhân vật nhận được sự quan tâm lớn từ độc giả! Ngoài ra với những ai vốn yêu thích “Học viện Diệt Quỷ”, tập sách này sẽ tiếp tục mang đến cho các bạn những khoảnh khắc vô cùng hài hước và khó quên!!Đáng chú ý trong tập này: Rốt cuộc đã xảy ra chuyện gì mà đến cả thầy giáo thể dục Tomioka – vốn lạnh lùng hơn băng giá – cũng phải rớt nước mắt!? Tất cả sẽ được làm sáng tỏ qua phần ngoại truyện “Học viện Diệt quỷ”.','https://cdn0.fahasa.com/media/catalog/product/t/h/thanh-guom-diet-quy-2_-canh-buom-khuyet.jpg',3,3,NULL),(15,'86-EIGHTY SIX - Ep.8 - Bản Đặc Biệt ','IPM','Hồng Đức','Bìa Mềm',145.00,13,'Asato Asato, Shirabii',2023,'Vietnamese',300.00,'18 x 13 x 1.5',372,'Đối với nhân loại, khả năng khiến toàn bộ Legion dừng hoạt động là niềm mong mỏi to lớn, là hi vọng chấm dứt cuộc chiến dai dẳng tưởng chừng không hồi kết.Nhưng với Tám Sáu - những người mang trên mình số phận chiến đấu rồi chết, đó lại là lý do buộc họ tự vấn, rằng sẽ phải đi đâu, về đâu khi chiến tranh khép lại.Qua tiếp xúc với Sirin, các Tám Sáu đã ngộ ra tính xấu xí của việc “không sợ chết”, đã phải đối mặt với tương lai hằng mờ mịt. Có người tìm thấy tình yêu. Có người tìm ra mơ ước. Và cũng có người chưa thể làm được những điều đó.Hơi ấm của hi vọng dần sưởi ấm những tâm hồn băng giá. Nhưng rồi họ lại phải chứng kiến sự hi sinh tàn khốc chưa từng có…“Nơi nhóm thiếu niên tìm đến… là đại dương khát máu.”','https://cdn0.fahasa.com/media/catalog/product/z/4/z4360415191295_7e2180ef5625a0a1c22896e304e8e241.jpg',3,4,NULL),(16,'Edogawa Ranpo Tuyển Tập - Những Câu Chuyện Bí Ẩn Và Ly Kỳ Nhất','AZ Việt Nam','Thanh Niên','Bìa Mềm',74.25,22,'Edogawa Ranpo',2023,'Vietnamese',260.00,'20.5 x 14.5 x 1',224,'Chuyện tình kỳ lạ giữa một “chiếc ghế” với những người phụ nữ ngồi lên nó - kẻ đã từ bỏ phần người và tận hưởng khoái cảm trần trụi vừa lén lút, vừa công khai. Một căn phòng đỏ dẫn vào thế giới nội tâm đầy điên cuồng của những tên giết người, nhưng căn nguyên tội ác thì lại hoàn toàn trái ngược. Sự tàn bạo và cái đẹp, trinh thám và tâm linh đan xen một cách nhịp nhàng và chặt chẽ, Edogawa Ranpo đã vẽ lên những mảnh đời rất chân thực nhưng lại nhuốm màu ma quái và đầy mộng mị. Một khi bước vào thế giới trong sách, người đọc sẽ không thể nào thoát ra ngay được, kể cả khi đã gấp lại trang giấy cuối cùng.','https://cdn0.fahasa.com/media/catalog/product/8/9/8935325011276.jpg',4,4,NULL),(17,'Sự Im Lặng Của Bầy Cừu (Tái Bản 2019)','Nhã Nam','NXB Hội Nhà Văn','Bìa Mềm',86.25,17,'Thomas Harris',2019,'Vietnamese',360.00,'15 x 24',359,'Những cuộc phỏng vấn ở xà lim với kẻ ăn thịt người ham thích trò đùa trí tuệ, những tiết lộ nửa chừng hắn chỉ dành cho kẻ nào thông minh, những cái nhìn xuyên thấu thân phận và suy tư của cô mà đôi khi cô muốn lảng tránh... Clarice Starling đã dấn thân vào cuộc điều tra án giết người lột da hàng loạt như thế, để rồi trong tiếng bức bối của chiếc đồng hồ đếm ngược về cái chết, cô phải vật lộn để chấm dứt tiếng kêu bao lâu nay vẫn đeo đẳng giấc mơ mình: tiếng kêu của bầy cừu sắp bị đem đi giết thịt.Sự im lặng của bầy cừu hội tụ đầy đủ những yếu tố làm nên một cuốn tiểu thuyết trinh thám kinh dị xuất sắc nhất: không một dấu vết lúng túng trong những chi tiết thuộc lĩnh vực chuyên môn, với các tình tiết giật gân, cái chết luôn lơ lửng, với cuộc so găng của những bộ óc lớn mà không có chỗ cho kẻ ngu ngốc để cuộc chơi trí tuệ trở nên dễ dàng. Bồi đắp vào cốt truyện lôi cuốn đó là cơ hội được trải nghiệm trong trí não của cả kẻ gây tội lẫn kẻ thi hành công lý, khi mỗi bên phải vật vã trong ngục tù của đau đớn để tìm kiếm, khẩn thiết và liên tục, một sự lắng dịu cho tâm hồn.','https://cdn0.fahasa.com/media/catalog/product/i/m/image_180812.jpg',4,5,NULL),(18,'Hồ Sơ Tâm Lý Phạm Tội 2','AZ Việt Nam','Dân Trí','Bìa Mềm',242.10,15,'Trường Nhị',2023,'Vietnamese',530.00,'24 x 16 x 2.3',504,'Hắn là Đội trưởng Đội Hình sự, con trai độc nhất của một gia tộc giàu có, thích la cà quán xá vỉa hè, hành sự khó lường, coi thường khuôn phép, lên núi đao xuống biển lửa vẫn một lòng bảo vệ công lý.Anh là nhà tâm lý học trẻ tuổi xuất chúng, vì bị chèn ép mà mất đi tất cả, phải che giấu bản thân, trở thành quản lý ký túc xá trường tiểu học.Hình Tòng Liên chưa từng nghĩ rằng có một ngày Lâm Thần sẽ xuất hiện trong màn mưa, nói với hắn: “Xin hãy cho tôi tham gia điều tra.”Cát trắng bên các thi thể, xe bus học sinh bị bắt cóc, buổi livestream những vụ tự sát trong trường học, hàng loạt vụ kỳ án liên tục xảy ra.Những phương thức gây án đáng sợ, kẻ thủ ác vẫn là một ẩn số, họ quyết chiến đấu bằng cả sinh mạng mình.','https://cdn0.fahasa.com/media/catalog/product/_/b/_b_a-tr_c_-h_-s_-t_m-l_-ph_m-t_i-2.jpg',4,4,NULL),(19,'Bóng Ma Trên Phố Ginza','AZ Việt Nam','Thanh Niên','Bìa Mềm',74.80,22,'Osaka Keikichi',2023,'Vietnamese',250.00,'20.5 x 14.5 x 1.1',216,'Một chiếc xe biến mất bí ẩn trên làn đường thu phí. Một cái chết bất thường của anh chàng họa sĩ trường phái Tây phương. Một bức tường đá ma quái che giấu tội ác. Một nữ nhân viên phục vụ bị cắt đứt cổ họng. Ba kẻ tâm thần liên quan đến cái chết thảm khốc của vị bác sĩ. Một cái xác với dấu hiệu siết cổ quái dị. Một người đàn ông bị hồn ma người vợ cũ giết chết. Một ngọn hải đăng với thi thể dập nát bên trên phòng đèn.Tám câu chuyện là tám tội ác tưởng chừng bất khả thi, nhưng tất cả đều là những mánh khóe và thủ đoạn của con người, núp bóng ma quỷ để che giấu hành vi phạm tội. Ngòi bút tài hoa của nhà văn trinh thám Osaka Keikichi đã vạch trần những góc tối trong tâm lý con người, đưa người đọc đi tới mọi ngóc ngách để chứng kiến hành trình tội ác đầy bí ẩn. Là một tác phẩm trinh thám cổ điển, BÓNG MA TRÊN PHỐ GINZA hoàn toàn làm thỏa mãn người đọc với những suy luận logic và tài tình trong mỗi câu chuyện.','https://cdn0.fahasa.com/media/catalog/product/b/_/b_a-1-b_ng-ma-tr_n-ph_-ginza-600.jpg',4,4,NULL),(20,'Nghĩ Giàu & Làm Giàu (Tái Bản 2020)','FIRST NEWS','NXB Tổng Hợp TPHCM','Bìa Mềm',85.80,13,'Napoleon Hill',2020,'Vietnamese',450.00,'20.5 x 14.5',400,'Think and Grow Rich - Nghĩ giàu và làm giàu là một trong những cuốn sách bán chạy nhất mọi thời đại. Đã hơn 60 triệu bản được phát hành với gần trăm ngôn ngữ trên toàn thế giới và được công nhận là cuốn sách tạo ra nhiều triệu phú, một cuốn sách truyền cảm hứng thành công nhiều hơn bất cứ cuốn sách kinh doanh nào trong lịch sử.Tác phẩm này đã giúp tác giả của nó, Napoleon Hill, được tôn vinh bằng danh hiệu “người tạo ra những nhà triệu phú”. Đây cũng là cuốn sách hiếm hoi được đứng trong top của rất nhiều bình chọn theo nhiều tiêu chí khác nhau - bình chọn của độc giả, của giới chuyên môn, của báo chí. Lý do để Think and Grow Rich - Nghĩ giàu và làm giàu có được vinh quang này thật hiển nhiên và dễ hiểu: Bằng việc đọc và áp dụng những phương pháp đơn giản, cô đọng này vào đời sống của mỗi cá nhân mà đã có hàng ngàn người trên thế giới trở thành triệu phú và thành công bền vững.Điều thú vị nhất là các bí quyết này có thể được hiểu và áp dụng bởi bất kỳ một người bình thường nào, hoạt động trong bất cứ lĩnh vực nào. Qua hơn 70 năm tồn tại, những đúc kết về thành công của Napoleon Hill đến nay vẫn không hề bị lỗi thời, ngược lại, thời gian chính là minh chứng sống động cho tính đúng đắn của những bí quyết mà ông chia sẻ.Sinh ra trong một gia đình nghèo vùng Tây Virginia, con đường thành công của Napoleon Hill cũng trải qua nhiều thăng trầm. Khởi đầu bằng chân cộng tác viên cho một tờ báo địa phương lúc 15 tuổi, đến năm 19 tuổi Hill trở thành nhà quản lý mỏ than trẻ tuổi nhất, sau đó bỏ ngang để theo đuổi ngành luật. Napoleon Hill còn kinh qua nhiều nghề như kinh doanh gỗ, xe hơi, viết báo về kinh doanh…','https://cdn0.fahasa.com/media/catalog/product/n/g/nghigiaulamgiau_110k-01_bia-1.jpg',5,3,NULL),(21,'Từ Tốt Đến Vĩ Đại - Jim Collins (Tái Bản 2021)','NXB Trẻ','NXB Trẻ','Bìa Mềm',52.00,22,'Jim Collins',2021,'Vietnamese',484.00,'14.5 x 20.5 x 2',484,'Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại. Đó là những yếu tố khả năng lãnh đạo, con người, văn hóa, kỷ luật, công nghệ… Những yếu tố này được nhóm nghiên cứu xem xét tỉ mỉ và kiểm chứng cụ thể qua 11 công ty nhảy vọt lên vĩ đại. Mỗi kết luận của nhóm nghiên cứu đều hữu ích, vượt thời gian, ý nghĩa vô cùng to lớn đối với mọi lãnh đạo và quản lý ở mọi loại hình công ty (từ công ty có nền tảng và xuất phát tốt đến những công ty mới khởi nghiệp), và mọi lĩnh vực ngành nghề. Đây là cuốn sách nên đọc đối với bất kỳ lãnh đạo hay quản lý nào!','https://cdn0.fahasa.com/media/catalog/product/n/x/nxbtre_full_09462021_024609.jpg',5,4,NULL),(22,'Triết Lý Kinh Doanh Của Kyocera','Tân Việt','NXB Thông Tấn','Bìa Cứng',148.20,21,'John Perkins',2017,'Vietnamese',496.00,'17 x 24',496,' Kể từ sau khi quyết định rút ra khỏi vai trò sát thủ kinh tế, John Perkins luôn tích cực tên tiếng và thực hiện các hoạt động cụ thể để bảo vệ môi trường cũng như phản đối sự can thiệp bất lương của các tập đoàn và Chính phủ của các nước lớn vào những quốc gia khác. Ông vận động cho những tộc người bản địa trên khắp địa cầu, tổ chức các đoàn thăm quan đến vùng núi và rừng rậm ở châu Mỹ Latinh để công chúng thấy rõ hơn về những thực tế đau lòng mà con người và những vùng này đang phải đối mặt. Dù tác giả hiểu rõ sự thật rằng, hơn bao giờ hết, các sát thủ kinh tế ngày nay hiện diện ở khắp mọi nơi dưới nhiều vỏ bọc khác nhau, với những mánh lới tinh vi và xảo quyệt hơn, tác giả cũng tin tưởng chúng ta vẫn còn hy vọng nếu chúng ta cùng sát cánh bên nhau và hành động. “Lời thú tội mới của một sát thủ kinh tế” đưa ra những ý tưởng và gợi ý chi tiết về những hành động mà mỗi người trong chúng ta, dù là sinh viên, người trung tuổi, người đã về hưu hay lãnh đạo các doanh nghiệp có thể làm để biến “nền kinh tế chết” thành “nền kinh tế sống”, tái tạo các nguồn lực đã bị tàn phá và duy trì chúng cho thế hệ mai sau. Kể từ khi cuốn “Lời thú tội của một sát thủ ra đời”, tác giả đã trở thành một diễn giả đi diễn thuyết ở khắp nơi trên thế giới, phát biểu tại hội nghị thượng đỉnh của các tập đoàn, các hội nghị tiêu dùng, lễ hội âm nhạc, giảng dạy và diễn thuyết tại hơn 50 trường đại học. Ông tiếp tục viết sách và đã diễn thuyết và giảng dạy tại nhiều trường đại học lớn trên thế giới, trong đó có những trường như Harvard, Wharton, Princeton…','https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_33307.jpg',5,4,NULL),(23,'Những Kẻ Xuất Chúng (Tái Bản 2021)','Alpha Books','NXB Thế Giới','Bìa Mềm',124.02,12,'Malcolm Gladwel',2021,'English',350.00,'20.5 x 13',416,'Cuốn sách Những kẻ xuất chúng sẽ giúp bạn tìm ra câu trả lời thông qua các phân tích về xã hội, văn hóa và thế hệ của những nhân vật kiệt xuất như Bill Gates, Beatles và Mozart, bên cạnh những thất bại đáng kinh ngạc của một số người khác (ví dụ: Christopher Langan, người có chỉ số IQ cao hơn Einstein nhưng rốt cuộc lại quay về làm việc trong một trại ngựa). Theo đó, cùng với tài năng và tham vọng, những người thành công đều được thừa hưởng một cơ hội đặt biệt để rèn luyện kỹ năng và cho phép họ vượt lên những người cùng trang lứa.Với giọng văn lôi cuốn và cách kể chuyện hết sức có duyên, Malcom Gladwell cũng viện dẫn rất nhiều giai thoại thú vị như tại sao phần lớn các cậu bé giỏi môn khúc côn cầu lại sinh vào tháng một, tại sao con cái của những người Do Thái nhập cư lại trở thành những luật sư quyền lực nhất New York, tại sao truyền thống văn hóa của nền nông nghiệp lúa nước lại có thể giúp trẻ em châu Á giỏi toán... Nhưng không chỉ có thế. Thông qua những ví dụ này, Gladwell muốn bàn luận về những con đường phức tạp dẫn đến thành công của con người.Thách thức niềm tin về “con người tự lực”, tác giả quả quyết rằng các vĩ nhân không tự dưng mà có, cũng không được thúc đẩy bởi thiên tài hay tài năng. Họ là những người được hưởng một “lợi thế vô hình” và cơ hội khác thường từ môi trường và hoàn cảnh, nhờ đó họ vươn tới những đỉnh cao mà người khác không thể đạt được. Theo ông, “một vài người xứng đáng với điều đó, một vài người khác thì không, một số người tạo ra thành công, một số đơn giản là do may mắn”.','https://cdn0.fahasa.com/media/catalog/product/i/m/image_230370.jpg',5,7,NULL),(24,'Không Bao Giờ Là Thất Bại! Tất Cả Là Thử Thách (Tái Bản 2023)','FIRST NEWS','Dân Trí','Bìa Mềm',162.24,22,'Chung Ju Yung',2023,'Vietnamese',500.00,'20.5 x 14.5 x 2.5',528,'Thất bại xảy ra là để con người nhận ra sức mạnh nội tại của bản thân, bởi không ai sống mà chỉ trải qua những thành công trong suốt cuộc đời. Tuy vậy, ta vẫn luôn băn khoăn tự hỏi bản thân rằng bao nhiêu lần thất bại mới đủ để thành công?Mỗi người đều có định nghĩa khác nhau về thành công. Nó có thể được hiểu là đạt được mục tiêu đã đề ra, nhưng ở một góc nhìn khác thì thành công chính là rút ra được kinh nghiệm và hiên ngang bước tiếp sau những lần thất bại. Việc thấu hiểu bản chất của thành công lẫn thất bại đòi hỏi ý chí và tầm nhìn của chính bản thân người trải nghiệm. Chung Ju-yung - người khởi nghiệp từ hai bàn tay trắng đã trở thành chủ tịch của Hyundai, một tập đoàn nổi tiếng trên thế giới và là niềm tự hào của người dân Hàn Quốc - có lẽ hơn ai hết sẽ thấu hiểu những vất vả, thử thách và bài học xương máu trên con đường chinh phục đỉnh vinh quang của mình.“Không bao giờ là thất bại! Tất cả là thử thách” được xem như cuốn tự truyện chi tiết về cuộc đời lẫn sự nghiệp của cố Chủ tịch Chung Ju-yung. Không chỉ thuật lại hành trình tạo lập nên một tập đoàn công nghiệp phát triển bậc nhất, cuốn sách còn chứa đựng những bài học sâu sắc về quản trị, kinh doanh cũng như đạo làm người với tinh thần “đắc nhân tâm”. Đây chính là cuốn sách gối đầu giường của rất nhiều doanh nhân Việt Nam.','https://cdn0.fahasa.com/media/catalog/product/k/h/khongbaogiothatbai_bia01_1.jpg',5,9,NULL),(25,'Vị Tu Sĩ Bán Chiếc Ferrari','FIRST NEWS','NXB Tổng Hợp TPHCM','Bìa Mềm',78.40,13,'Robin Sharma',2020,'English',275.00,'	20.5 x 14.5 x 1.8 ',264,'Vị Tu Sĩ Bán Chiếc Ferarri không phải là một cuốn sách xa lạ, cuốn sách này là một trong những ấn phẩm kinh điển của thế giới về đề tài truyền cảm hứng, theo đuổi lý tưởng sống, và hướng về một cuộc sống hạnh phúc. Đây cũng là cuốn sách đầu tiên mà tác giả, nhà diễn thuyết nổi tiếng thế giới Robin Sharma chấp bút.Cuốn sách gây được tiếng vang khi xuất bản năm 1997 và bán được hơn 3 triệu bản vào năm 2013.Từng được xuất bản và bán chạy ở Việt Nam với cái tên Tìm về sức mạnh vô biên, trong lần tái bản này, Vị tu sĩ bán chiếc Ferrari là phiên bản bổ sung, hoàn thiện và tiếp tục là cuốn sách kinh điển về đề tài truyền cảm hứng, theo đuổi lý tưởng sống, hướng tới cuộc sống hạnh phúc của tác giả Robin Sharma.Ngay từ năm 1997, Vị tu sĩ bán chiếc Ferrari đã nhanh chóng trở thành hiện tượng và nằm trong danh sách best-seller, bán ra hơn 4 triệu bản tại 50 quốc gia trên khắp thế giới. Điều đặc biệt, khi đó Robin Sharma chỉ là một tác giả trẻ chưa có tên tuổi.Vậy, tại sao cuốn sách này lại có sức hấp dẫn với bạn đọc trên toàn thế giới?','https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_55840.jpg',6,10,NULL),(26,'Bí Mật Tư Duy Triệu Phú','FIRST NEWS','NXB Tổng Hợp TPHCM','Bìa Mềm',84.24,15,'T Harv Eker',2021,'English',300.00,'20.5 x 14.5',287,'Trong cuốn sách này T. Harv Eker sẽ tiết lộ những bí mật tại sao một số người lại đạt được những thành công vượt bậc, được số phận ban cho cuộc sống sung túc, giàu có, trong khi một số người khác phải chật vật, vất vả mới có một cuộc sống qua ngày. Bạn sẽ hiểu được nguồn gốc sự thật và những yếu tố quyết định thành công, thất bại để rồi áp dụng, thay đổi cách suy nghĩ, lên kế hoạch rồi tìm ra cách làm việc, đầu tư, sử dụng nguồn tài chính của bạn theo hướng hiệu quả nhất.Cuốn sách dành cho những ai còn loay hoay muốn tìm đường đến sự giàu có và thành công. “Bí mật tự duy triệu phú” mang đến nhiều tư duy mới cho người đọc về cách suy nghĩ của người giàu hay cách suy nghĩ để trở nên giàu có.Trong cuốn sách, Eker liệt kê 17 cách thức mà các kế hoạch chi tiết tài chính của những người giàu khác với người nghèo và tầng lớp trung lưu. Một chủ đề được xác định trong sách này là loại bỏ các suy nghĩ đổ lỗi cho sự thất bại. Eker lập luận rằng: Người giàu tin \"Tôi tạo ra cuộc sống của tôi\", còn những người nghèo cho rằng \"Cuộc sống sẽ tự nhiên đến với tôi\"; người giàu tập trung vào các cơ hội trong khi người nghèo tập trung vào những trở ngại; và những người giàu ngưỡng mộ những người giàu có và thành công khác trong khi người dân nghèo ghen tị, bực tức trước những người thành công và giàu có.','https://cdn0.fahasa.com/media/catalog/product/i/m/image_188995_1_1.jpg',6,11,NULL),(27,'Nhà Lãnh Đạo Không Chức Danh','NXB Trẻ','Trẻ','Bìa Mềm',81.90,31,'Robin Sharma',2022,'English',272.00,'20.5 x 13 x 1.2',272,'Suốt hơn 15 năm, Robin Sharma đã thầm lặng chia sẻ với những công ty trong danh sách Fortune 500 và nhiều người siêu giàu khác một công thức thành công đã giúp ông trở thành một trong những nhà cố vấn lãnh đạo được theo đuổi nhiều nhất thế giới. Đây là lần đầu tiên Sharma công bố công thức độc quyền này với bạn, để bạn có thể đạt được những gì tốt nhất, đồng thời giúp tổ chức của bạn có thể có những bước đột phá đến một cấp độ thành công mới trong thời đại thiên biến vạn hóa như hiện nay.Trong cuốn sách Nhà Lãnh Đạo Không Chức Danh, bạn sẽ học được:Làm thế nào để làm việc và tạo ảnh hưởng với mọi người như một siêu sao, bất chấp bạn đang ở vị trí nàoMột phương pháp để nhận biết và nắm bắt cơ hội vào những thời điểm thay đổiNhững bí mật thật sự của sự đổi mớiMột chiến lược tức thời để xây dựng đội nhóm tuyệt vời và trở thành một nhà cung cấp ngoạn mục của khách hàng','https://cdn0.fahasa.com/media/catalog/product/8/9/8934974179184.jpg',6,13,NULL),(28,'Năng Đoạn Kim Cương - Áp Dụng Giáo Lý Của Đức Phật Vào Quản Trị Doanh Nghiệp Và Đời Sống','Thái Hà','Lao Động','Bìa Mềm',123.67,22,'Geshe Michael Roach',2023,'English',450.00,'24 x 15.5 x 1.7 ',375,'Cuốn sách này là sự kết hợp độc đáo và kỳ ảo giữa trí tuệ của Phật giáo Tây Tạng áp dụng vào hoạt động kinh doanh, Năng đoạn kim cương mang đầy tính triết lý thâm sâu và vô cùng cần thiết cho sự thành công của một doanh nghiệp, một doanh nhân.Ẩn dấu trong Năng đoạn Kim Cương là một trí tuệ uyên bác được Michael Roach diễn giải với những lý luận sắc bén và những dẫn chứng sinh động từ cuộc đời của chính ông – một vị sư đã được nhận bằng Cao học Phật giáo (bằng Geshe) và cũng là một giám đốc của một công ty kim cương lớn trong nhiều năm.Cuốn sách vạch rõ 3 bước để đạt được sự thịnh vượng đó bao gồm:Mục tiêu 1: Làm ra tiền – thế giới của tiềm năng và các dấu ấn trong tâm.Mục tiêu 2: Thọ hưởng tiền bạc hay điệu ngự thân tâm – Bí quyết để đạt được sự thịnh vượng bên trong bằng cách đạt được sự cân bằng giữa thân và tâm, sức khỏe thể chất và tinh thần.Mục tiêu 3: Nhìn lại và biết rằng thế là đủ – Tìm thấy suối nguồn thực sự của thịnh vượng và nhìn lại để hiểu rằng tất cả những cố gắng của bạn đã đạt được 1 ý nghĩa nào đó.','https://cdn0.fahasa.com/media/catalog/product/8/9/8935280911123.jpg',6,13,NULL);
/*!40000 ALTER TABLE `bookdetailed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `idCategory` int NOT NULL,
  `catName` varchar(45) NOT NULL,
  `merchandiseID` int NOT NULL,
  PRIMARY KEY (`idCategory`),
  KEY `MerchandiseID_idx` (`merchandiseID`),
  CONSTRAINT `MerchandiseID` FOREIGN KEY (`merchandiseID`) REFERENCES `merchandise` (`idMerchandise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Tiểu Thuyết',1),(2,'Truyện ngắn-Tản Văn',1),(3,'Light Novel',1),(4,'Truyện Trinh Thám - Kiếm Hiệp',1),(5,'Quản Trị - Lãnh Đạo',2),(6,'Nhân vật - Bài Học Kinh doanh',2),(7,'Marketing - Bán Hàng',2),(8,'Khởi Nghiệp - Làm Giàu',2),(9,'Phân Tích Kinh Tế',2),(10,'Kỹ Năng Sống',3),(11,'Tâm lý',3),(12,'Sách Cho Tuổi Mới Lớn',3),(13,'Chicken Soup - Hạt Giống Tâm Hồn',3),(14,'Rèn Luyện Nhân Cách',3),(15,'Cẩm Nang Làm Cha Mẹ',4),(16,'Phát Triển Kỹ Năng - Trí Tuệ Cho Trẻ',4),(17,'Phương Pháp Giáo Dục Trẻ Các Nước',4),(18,'Dinh Dưỡng - Sức Khỏe Cho Trẻ',4),(19,'Truyện Thiếu Nhi',5),(20,'Kiến Thức - Kỹ Năng Sống Cho Trẻ',5),(21,'Kiến Thức Bách Khoa',5),(22,'Tô Màu, Luyện Chữ',5),(23,'Từ Điển Thiếu Nhi',5),(24,'Câu Chuyện Cuộc Đời',6),(25,'Lịch Sử',6),(26,'Nghệ Thuật - Giải Trí',6),(27,'Chính Trị',6),(28,'Sách Tham Khảo',7),(29,'Mẫu Giáo',7),(30,'Sách Giáo Khoa',7),(31,'Đại Học',7),(32,'Tiếng Anh',8),(33,'Tiếng Hoa',8),(34,'Tiếng Nhật',8),(35,'Tiếng Hàn',8);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchandise`
--

DROP TABLE IF EXISTS `merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchandise` (
  `idMerchandise` int NOT NULL,
  `merName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMerchandise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchandise`
--

LOCK TABLES `merchandise` WRITE;
/*!40000 ALTER TABLE `merchandise` DISABLE KEYS */;
INSERT INTO `merchandise` VALUES (1,'Văn Học'),(2,'Kinh Tế'),(3,'Tâm Lí Kĩ Năng Sống'),(4,'Nuôi Dạy Con'),(5,'Sách Thiếu Nhi'),(6,'Tiểu Sử-Hồi Kí'),(7,'Giáo Khoa-Tham Khảo'),(8,'Sách Học Ngoại Ngữ');
/*!40000 ALTER TABLE `merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `idOrder` int NOT NULL,
  `account_id` int NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Email Addreess` varchar(45) NOT NULL,
  `Phone_no` varchar(45) NOT NULL,
  `Address_1` varchar(45) NOT NULL,
  `Address_2` varchar(45) NOT NULL,
  `Town` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Zip Code` varchar(45) NOT NULL,
  `OrderNote` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `IDacc_idx` (`account_id`),
  CONSTRAINT `FK_order_account` FOREIGN KEY (`account_id`) REFERENCES `account` (`idAccount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idproduct` int NOT NULL,
  `order id` int NOT NULL,
  `book id` int NOT NULL,
  PRIMARY KEY (`idproduct`),
  KEY `bookid_idx` (`book id`),
  KEY `order_id_idx` (`order id`),
  CONSTRAINT `book_id` FOREIGN KEY (`book id`) REFERENCES `bookdetailed` (`book_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order id`) REFERENCES `order` (`idOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `idshopping_cart` int NOT NULL,
  `book_id` int NOT NULL,
  `account_id` int NOT NULL,
  PRIMARY KEY (`idshopping_cart`),
  KEY `book_id_idx` (`book_id`),
  KEY `accountID_idx` (`account_id`),
  CONSTRAINT `accountID` FOREIGN KEY (`account_id`) REFERENCES `account` (`idAccount`),
  CONSTRAINT `idBook` FOREIGN KEY (`book_id`) REFERENCES `bookdetailed` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 20:47:10
