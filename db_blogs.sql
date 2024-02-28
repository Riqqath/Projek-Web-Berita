-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 01:24 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$RSc2aUXYhXw1S/g0GbKmAeDVjQntNsqeFtw6WP4q9IRY6VN9Tv4by', 'thariqadhillahilyas22@gmail.com', 1, '2020-03-27 17:51:00', '2024-02-14 14:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(9, 'Health', 'News on health', '2021-12-24 08:21:12', NULL, 1),
(10, 'World', 'world News', '2021-12-24 10:10:23', NULL, 0),
(12, 'Celebrity Biographies', 'Biographies of Celebrities', '2021-12-24 10:51:11', NULL, 0),
(16, 'politics', 'politics', '2024-02-12 14:12:56', '2024-02-12 14:12:56', 1),
(17, 'Trendings', 'Trendings', '2024-02-12 15:54:15', '2024-02-12 15:54:15', 1),
(18, 'Indonesia News', 'Indonesia news', '2024-02-13 10:18:59', '2024-02-13 10:18:59', 1),
(19, 'Business', 'business', '2024-02-13 10:19:37', '2024-02-13 10:19:37', 1),
(20, 'Edukasi', 'edukasi', '2024-02-13 10:21:09', '2024-02-13 10:21:09', 1),
(21, 'Olahraga', 'olahraga', '2024-02-13 10:21:58', '2024-02-13 10:21:58', 1),
(22, 'Entertaiment', 'Entertaiment', '2024-02-13 13:20:14', '2024-02-13 13:20:14', 1),
(23, 'Crypto News', 'Crypto', '2024-02-14 11:05:51', '2024-02-14 11:05:51', 1),
(24, 'Coin Trend', 'Coin Trend', '2024-02-14 11:06:19', '2024-02-14 11:06:19', 1),
(25, 'International', 'International', '2024-02-14 11:06:35', '2024-02-14 11:06:35', 1),
(26, 'Biography', 'Biography', '2024-02-14 11:07:00', '2024-02-14 11:07:00', 1),
(28, 'Gaya Hidup', 'Gaya Hidup', '2024-02-14 11:08:47', '2024-02-14 11:08:47', 1),
(29, 'Teknologi', 'Teknologi', '2024-02-14 11:09:24', '2024-02-14 11:09:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(10, '25', 'Riqq_ilyas', 'thariqadhillahilyas62@gmail.com', 'Waduhhh', '2024-02-12 16:07:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<p>Kami Adalah Siswa Siswi BM3 Yang Merancang Web sedemikian Rupa Untuk Projek Akhir</p>', '2018-06-30 18:01:03', '2024-02-14 14:01:44'),
(2, 'contactus', 'Contact Details', '<p><b>Address : Citra Indah City Bukit Rasamala Blok Z 03/30</b></p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Perum Duta MekarAsri Blok P2/32<br></b><br></p><p><b>Email: rasamala90@gmail.com</b></p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; thariqadhillahilyas05@gmail.com<br></b><br></p> ', '2018-06-30 18:01:36', '2024-02-14 20:31:04'),
(3, 'terms', 'Terms & Conditions', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, illo porro? Reprehenderit laboriosam ad rerum beatae esse ipsam itaque nesciunt consequuntur id, saepe voluptatem facilis ullam architecto necessitatibus dicta voluptatum sapiente alias sequi quo accusantium, mollitia minus porro. Maiores, magnam distinctio ea a vel consectetur voluptatum excepturi consequuntur recusandae officiis aperiam veritatis animi eaque id sit temporibus accusamus consequatur assumenda totam incidunt unde reprehenderit quae? Asperiores ad iure recusandae vitae unde praesentium dicta sunt voluptatum at perferendis, accusamus fugit temporibus. Dignissimos veritatis explicabo sint tenetur voluptatibus ullam ea doloremque quos sapiente optio, eligendi corrupti? Nulla, perspiciatis! Atque alias corrupti nemo!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, illo porro? Reprehenderit laboriosam ad rerum beatae esse ipsam itaque nesciunt consequuntur id, saepe voluptatem facilis ullam architecto necessitatibus dicta voluptatum sapiente alias sequi quo accusantium, mollitia minus porro. Maiores, magnam distinctio ea a vel consectetur voluptatum excepturi consequuntur recusandae officiis aperiam veritatis animi eaque id sit temporibus accusamus consequatur assumenda totam incidunt unde reprehenderit quae? Asperiores ad iure recusandae vitae unde praesentium dicta sunt voluptatum at perferendis, accusamus fugit temporibus. Dignissimos veritatis explicabo sint tenetur voluptatibus ullam ea doloremque quos sapiente optio, eligendi corrupti? Nulla, perspiciatis! Atque alias corrupti nemo!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, illo porro? Reprehenderit laboriosam ad rerum beatae esse ipsam itaque nesciunt consequuntur id, saepe voluptatem facilis ullam architecto necessitatibus dicta voluptatum sapiente alias sequi quo accusantium, mollitia minus porro. Maiores, magnam distinctio ea a vel consectetur voluptatum excepturi consequuntur recusandae officiis aperiam veritatis animi eaque id sit temporibus accusamus consequatur assumenda totam incidunt unde reprehenderit quae? Asperiores ad iure recusandae vitae unde praesentium dicta sunt voluptatum at perferendis, accusamus fugit temporibus. Dignissimos veritatis explicabo sint tenetur voluptatibus ullam ea doloremque quos sapiente optio, eligendi corrupti? Nulla, perspiciatis! Atque alias corrupti nemo!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, illo porro? Reprehenderit laboriosam ad rerum beatae esse ipsam itaque nesciunt consequuntur id, saepe voluptatem facilis ullam architecto necessitatibus dicta voluptatum sapiente alias sequi quo accusantium, mollitia minus porro. Maiores, magnam distinctio ea a vel consectetur voluptatum excepturi consequuntur recusandae officiis aperiam veritatis animi eaque id sit temporibus accusamus consequatur assumenda totam incidunt unde reprehenderit quae? Asperiores ad iure recusandae vitae unde praesentium dicta sunt voluptatum at perferendis, accusamus fugit temporibus. Dignissimos veritatis explicabo sint tenetur voluptatibus ullam ea doloremque quos sapiente optio, eligendi corrupti? Nulla, perspiciatis! Atque alias corrupti nemo!<br></p>', '2018-06-30 17:01:36', '2022-09-23 10:00:01'),
(4, 'Privacypolicy', 'Privacy policy', '<p><b>Comments Policy </b> <br>\r\n  Comments and reviews of the products on this site are encouraged and \r\nwe welcome all kinds of thoughts, supportive, dissenting, critical or \r\notherwise. There are however a few conditions and rules governing \r\ncomments on this website which you can read about in our comments \r\npolicy.\r\n  You are advised to solicit the opinions of professionals, other \r\nsources and authorities before committing to any decisions made as a \r\nresult of exposure to any of the material presented by FrontPage.\r\n  If you feel that something is missing you can feel free to read our \r\nprivacy policy or contact us directly.\r\n   <br></p>', '2022-01-07 12:28:36', '2022-01-07 12:37:30'),
(5, 'advertise', 'Advertise with Us', '<p><font face=\"Arial\">We are here to help you successfully reach our unique audience. we offer a wide ranging commercial portfolio; from sponsored content to targeted banner ads and much more. </font></p><p><font face=\"Arial\"><b>FOR WEB ADVERT:<br></b>contact Us<br></font></p><h2><span style=\"background-color: inherit;\"><font color=\"#003163\"><b><font face=\"Arial\">WHY YOU SHOULD ADVERTISE WITH US</font></b></font></span></h2><ul><li><font face=\"Arial\">No 1 publisher by audience on the web.<br></font></li><li><font face=\"Arial\">Our readers are highly engaged</font><b><font face=\"Arial\">.</font></b></li><li><font face=\"Arial\">While making reports or payments, </font><font face=\"Arial\">Our clients are treated with respect and honesty. </font></li><li><font face=\"Arial\">we have over 19m+ readers worldwide.<br></font></li></ul><p><span style=\"background-color: inherit;\"><font face=\"Arial\" color=\"#003163\"><b>ON SUBMISSION OF ADS</b></font></span></p><p><font face=\"Arial\">Image Banner ads must be in JPG,JPEG, PNG, GIF format; </font><font face=\"Arial\">Video ads must be in</font><font face=\"Arial\"> MP4, GIF format. Ads should be submitted via e-mail in the ordered pixel dimensions.</font></p><p><span style=\"background-color: inherit;\"><font face=\"Arial\" color=\"#003163\"><b>NOTE</b></font></span></p><p><font face=\"Arial\">Ads to be published should should be submitted for approval before payments are made.<font color=\"#003163\"><br></font></font></p><br><p>\r\n</p><br>\r\n<div style=\"box-shadow: 0px 0px 10px grey ; padding: 20px\">\r\n<h4><font face=\"Arial\"><font color=\"#003163\"><span style=\"background-color: inherit;\"><b>WANT TO ADVERTISE WITH US?</b></span></font></font><font face=\"Verdana\"><b><font face=\"Helvetica\"><br></font></b></font></h4><p><font face=\"Tahoma\">Email Us Now!<br></font></p><p align=\"left\"><b><font face=\"Tahoma\">You can e-mail us at<br></font></b>Mail<a href=\"mailto:frontpagenewsofficial@gmail.com\" target=\"_blank\">@gmail.com</a><font face=\"Tahoma\"><br></font></p>\r\n</div>', '2022-01-07 14:40:36', '2022-09-23 10:01:49'),
(6, 'Writeforus', 'Write For Us', '<p>Sharing your thoughts, successes and failures, and discussing current issues, challenges and opportunities is a great way to strengthen our community.</p><p>We aim to publish engaging and accessible content that is useful for the development community;Our team work hard on publishing the latest articles, we simply cant keep up with everything that happens, which is why we would love for you to contribute to the community.</p><p><br></p><h3><font face=\"Helvetica\">Topics</font><br></h3><p>Contribute your article on our website on writing on different topics like food, lifestyle, education, News and so on. All submissions must be unique (i.e. not found elsewhere on the internet). Acceptable Submissions may include, but not limited to, the following :</p><ul><li>Articles</li><ul><li>News &amp; media<br></li><li>Sports</li><li>Entertainment</li><li>biographies</li><li>Beauty</li><li>Law</li><li>Electronic</li><li>Real estate</li><li>Arts</li><li>Business</li><li>health</li><li>Hobbies</li><li>Animals &amp; pets<br></li><li>food</li><li>finance</li><li>family</li><li>lifestyle</li><li>cryptocurrency</li><li>travel</li><li>Technology<br></li></ul><li>News release</li><li>opinion pieces</li><li>Multimedia(Videos, etc).</li><li>your story<br></li></ul><h3><font face=\"Verdana\"><b><font face=\"Helvetica\">If you are interested in writing for us, please read the following guidelines:</font> </b></font></h3><p>We only accept the guest post which has fully compiled with the following guidelines and they should all be put into consideration.</p><ul><li><font face=\"Tahoma\">Your heading must be unique and attractive.</font></li><li><font face=\"Tahoma\">Use plain English, Your content should be error free.</font></li><li><font face=\"Tahoma\">Add unique images with high definition (HD) quality.</font></li><li><font face=\"Tahoma\">The article must be between 500 - 2000 words and should be free from copyright infringement.<br></font></li><li><font face=\"Tahoma\">The article must be in microsoft word format or plaintext file format(Do no send a zip file).</font></li><li><font face=\"Tahoma\">Once your article get published on our website, avoid publishing it on any other website.</font></li><li><font face=\"Tahoma\">We will not accept articles with any affiliate links; links attached to the post must be relevant to the content.<br></font></li><li><font face=\"Tahoma\">After submission of your content, we would review your content and determine whether its a potential fit as duplicate or copied contents will not be accepted.</font></li><li><font face=\"Tahoma\">We do not accept irrelevant topics.</font></li><li><font face=\"Tahoma\">Use of bullets and numbered list are more inviting than a big pile of text.</font></li><li><font face=\"Tahoma\">Use sub-headings to break up text.<br></font></li></ul><p><font face=\"Tahoma\"><br></font></p><h3><font face=\"Verdana\"><b><font face=\"Helvetica\">Article format</font></b></font></h3><ol><li><font face=\"Tahoma\">Title</font></li><li><font face=\"Tahoma\">Unique heading</font></li><li><font face=\"Tahoma\">&nbsp;Unique image </font></li></ol><p><font face=\"Tahoma\"><br></font></p>\r\n<div style=\"box-shadow: 0px 0px 10px grey ; padding: 10px;border-radius:5px\">\r\n<h3><font face=\"Verdana\"><b><font face=\"Helvetica\">Submitting of article for a guest post<br></font></b></font></h3><p><font face=\"Tahoma\">All submissions and contribution should be done via e-mail in other to be considered.</font></p><p><font face=\"Tahoma\">Please include the following in the email before submission:</font></p><ul><li><font face=\"Tahoma\">Your full name</font></li></ul><p><font face=\"Tahoma\">we would love You to share your thought with our audience.</font></p><p align=\"left\"><b><font face=\"Tahoma\">You can e-mail us at<br></font></b><font face=\"Tahoma\"><a href=\"http://thariqadhillahilyas05@gmail.com\">thariqadhillahilyas05@gmail.com</a></font></p><p align=\"left\"><font face=\"Tahoma\"><a href=\"http://rasamala90@gmail.com\">rasamala90@gmail.com</a></font></p>\r\n</div>', '2018-06-30 17:01:36', '2024-02-14 14:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(24, 'Anies 1 Putaran?', 17, 29, '<h4>Anies Satu Putaran</h4><p><br></p><p>Akankah Kontespasi dan kredibilitas amin mampu meraih suara rakyat?</p>', '2024-02-12 15:58:46', NULL, 1, 'Anies-1-Putaran?', '838ef6088832719580b58e4048dc4b45jpeg'),
(25, 'Dirty Vote', 16, 30, '<h2>Dirty Vote rilis 02 CONPRES?, untuk apa?</h2>', '2024-02-12 16:05:51', NULL, 1, 'Dirty-Vote', '15d6380d917fbf0685ac0cc620014297jpeg'),
(26, 'Hasil QC', 18, 31, '<p>Hasil QC Diliput Dari Kompas.com Hari ini:</p><p style=\"font-size: medium; color: rgb(26, 26, 26); font-family: Vazirmatn, sans-serif; background-color: rgb(242, 242, 242);\"><strong>-</strong>&nbsp;<a href=\"https://www.kompas.tv/tag/litbang-kompas\" class=\"linkparagraph\" style=\"color: rgb(171, 66, 70); font-weight: 700;\">Litbang Kompas</a>&nbsp;telah merilis hasil&nbsp;<a href=\"https://www.kompas.tv/tag/hitung-cepat\" class=\"linkparagraph\" style=\"color: rgb(171, 66, 70); font-weight: 700;\">hitung cepat</a>&nbsp;atau&nbsp;<em><a href=\"https://www.kompas.tv/tag/quick-count\" class=\"linkparagraph\" style=\"color: rgb(171, 66, 70); font-weight: 700;\">quick count</a></em>&nbsp;untuk Pemilihan Presiden (Pilpres), Rabu (14/2/2024) dengan jumlah suara yang sudah masuk 50&nbsp;persen.</p><p style=\"font-size: medium; color: rgb(26, 26, 26); font-family: Vazirmatn, sans-serif; background-color: rgb(242, 242, 242);\">Berdasarkan data yang telah diperbarui per 15.32&nbsp;WIB, pasangan calon nomor urut 1 Anies Baswedan dan Muhaimin Iskandar mendapatkan 22,82&nbsp;persen.</p><p style=\"font-size: medium; color: rgb(26, 26, 26); font-family: Vazirmatn, sans-serif; background-color: rgb(242, 242, 242);\">Pasangan calon nomor urut 2 Prabowo Subianto dan Gibran Rakabuming Raka unggul dengan perolehan 59,88 persen.</p><p style=\"font-size: medium; color: rgb(26, 26, 26); font-family: Vazirmatn, sans-serif; background-color: rgb(242, 242, 242);\">Sementara, pasangan calon nomor urut 3 Ganjar Pranowo dan Mahfud MD mendapatkan suara 17,3&nbsp;persen.</p>', '2024-02-14 13:11:35', NULL, 1, 'Hasil-QC', 'a309c2b82c281710f46a44f9d9f6637e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(12, 3, 'boxing', 'boxing', '2021-12-24 09:58:22', NULL, 0),
(13, 3, 'Tennis', 'Tennis', '2021-12-24 09:59:14', NULL, 0),
(16, 2, 'Election', 'Election', '2021-12-24 10:00:39', NULL, 1),
(18, 8, 'Bitcoin', 'Bitcoin', '2021-12-24 10:05:25', NULL, 0),
(19, 8, 'Coin prices', 'Coin prices', '2021-12-24 10:05:49', NULL, 0),
(20, 8, 'coin chart', 'coin charts', '2021-12-24 10:06:16', NULL, 0),
(21, 7, 'economy', 'Economy', '2021-12-24 10:07:15', NULL, 0),
(22, 7, 'Technology', 'technology', '2021-12-24 10:07:46', NULL, 0),
(23, 7, 'money', 'money', '2021-12-24 10:08:28', NULL, 0),
(27, 10, 'Africa', 'African news', '2021-12-24 10:11:37', NULL, 1),
(29, 17, 'Politics', 'Politics', '2024-02-12 15:54:46', NULL, 1),
(30, 16, 'Politics', 'Politics', '2024-02-12 16:04:43', NULL, 1),
(31, 18, 'Hasil Quick Count', 'Hasil QC', '2024-02-14 13:06:39', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryId` (`CategoryId`),
  ADD KEY `SubCategoryId` (`SubCategoryId`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
