-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 25, 2024 at 05:52 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booksaw_co`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

DROP TABLE IF EXISTS `add_book`;
CREATE TABLE IF NOT EXISTS `add_book` (
  `cate` varchar(30) NOT NULL,
  `book_name` varchar(80) NOT NULL,
  `price` decimal(50,2) DEFAULT NULL,
  `author` varchar(60) NOT NULL,
  `descp` varchar(5000) NOT NULL,
  `file_name` varchar(800) NOT NULL,
  PRIMARY KEY (`book_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`cate`, `book_name`, `price`, `author`, `descp`, `file_name`) VALUES
('Autography', 'Wings of Fire', '999.00', 'Arun Tiwari', 'Wings of Fire, is the autobiography of the Missile Man of India and the former President of India, Dr. A. P. J. Abdul Kalam. It was written by him and Arun Tiwari. ', 'apj.jpg'),
('Spirituality', 'Autobiography of a Yogi', '456.99', 'Paramahansa Yogananda', 'Autobiography of a Yogi recounts his life and his encounters with spiritual figures of the Eastern and the Western world. The book begins with his childhood and family life, then finding his guru, becoming a monk and establishing his teachings of Kriya Yoga meditation. The book continues in 1920 when Yogananda accepted an invitation to speak at a religious congress in Boston, Massachusetts, USA. He then travelled across the USA lecturing and establishing his teachings in Los Angeles, California.', 'autobiography_yogi_book.jpg'),
('SciFi', 'The Martian', '1299.00', 'Andy Weir', 'The Martian is a 2011 science fiction debut novel written by Andy Weir. The book was originally self-published on Weirs blog, in a serialized format. In 2014, the book was re-released after Crown Publishing Group purchased the exclusive publishing rights.', 'The Martian (Weir novel).jpg'),
('Geopolitics', 'Why Bharat Matters', '526.00', 'Subrahmanyam Jaishankar', 'This is not just a tough world but also a turbulent and unpredictable one. It is marked by the impact of Covid, conflicts in Ukraine and West Asia, climate events, radicalization and terrorism. There is complex geopolitics at work, such as the rise of China, the changed posture of the United States, the strategy of Russia, the impact of globalization and the power of new technologies.', 'why_bharat_matter.jpg'),
('Business & Economics', 'Atomic Habits', '599.00', 'James Clear', 'A supremely practical and useful book. James Clear distils the most fundamental information about habit formation, so you can accomplish more by focusing on less.', 'atomic_habits.jpeg'),
('History', 'Sapiens: A Brief History of Humankind ', '735.00', 'Yuval Noah Harari', 'Sapiens: A Brief History of Humankind is a book by Yuval Noah Harari, first published in Hebrew in Israel in 2011 based on a series of lectures Harari taught at The Hebrew University of Jerusalem, and in English in 2014.', 'Sapiens.jpg'),
('Fantasy novel', 'Harry Potter and the Sorcerers Stone', '1599.00', 'J. K. Rowling', 'The book was first published in the United Kingdom on 26 June 1997 by Bloomsbury. It was published in the United States the following year by Scholastic Corporation under the title Harry Potter and the Sorcerer Stone. It won most of the British book awards that were judged by children and other awards in the US.', 'Harry Potter_1.jpg'),
('Novel', 'The Alchemist ', '2199.00', 'Paulo Coelho', 'A shepherd boy embarks on a journey to find the treasure of his dreams… With over 1,150,000 five-star Goodreads ratings, this modern classic is “a wise and inspiring fable about the pilgrimage that life should be” (New York Times bestselling author M. Scott Peck).', 'The Alchemist.jpg'),
('Biography', 'Into the Wild', '699.00', 'Jon Krakauer', 'Into the Wild Cap is a 1996 non-fiction book written by Jon Krakauer. It is an expansion of a 9,000-word article by Krakauer on Chris McCandless titled \"Death of an Innocent\", which appeared in the January 1993 issue of Outside.', 'Into the Wild.jpg'),
('Philosophy', 'Ikigai', '354.00', 'Francesc Miralles and Hector Garcia', 'According to the Japanese, everyone has an ikigai—a reason for living. And according to the residents of the Japanese village with the world’s longest-living people, finding it is the key to a happier and longer life.', 'Ikigai.jpg'),
('Philosophy', 'Relativity', '169.00', ' Albert Einstein ', 'Along with quantum mechanics in the 1920s, Einstein’s Special Theory of Relativity (1905) and General Theory of Relativity (1916) stand as the supreme achievements of twentieth-century physics.In simplest terms, the theory of Relativity is an approach to the measurement and study of space and time. The theory assumes that findings are based upon the relation of the frame of reference to the objects measured. ', 'Relativity.jpg'),
('Personal Development', 'THE POWER OF YOUR SUBCONSCIOUS MIND', '165.00', 'Joseph Murphy', 'As a man thinketh in his subconscious mind, so is he. Have you wondered why someone is joyous while another is miserable; why someone is fearful and anxious and another is exuding confidence; why so many good and kind people suffer the tortures of life? Dr Joseph Murphy answers these questions in his bestselling self-help book The Power of Your Subconscious Mind. ', 'THE POWER OF YOUR SUBCONSCIOUS MIND.jpg'),
('Personal Development', 'The Psychology of Money', '409.00', 'Morgan Housel', ' In the psychology of money, the author shares 19 short stories exploring the strange ways people think about money and teaches you how to make better sense of one of life?s most important matters.', 'The Psychology of Money.jpg'),
('Personal Development', 'Rich Dad Poor Dad', '1837.00', 'Robert T. Kiyosaki ', 'Robert Kiyosaki shares the story of his two dad: his real father, whom he calls his poor dad, \' and the father of his best friend, the man who became his mentor and his rich dad.\'One man was well educated and an employee all his life, the other\'s education was street smarts over traditional classroom education and he took the path of entrepreneurship a road that led him to become one of the wealthiest men in Hawaii. ', 'Rich Dad Poor Dad.jpg'),
('Philosophy', 'The Urgency of Change', '439.00', 'J KRISHNAMURTI', 'A  new edition of a fifty-year-old classic by J. Krishnamurti. The topics in this book range from conditioning and awareness, fear and God, to morality and art, suffering and seeking. The dialogues here sparkle with a crispness and clarity that would be the delight of any reader who seeks to deepen his understanding of Krishnamurti\'s teachings; and the art of inquiry through the medium of dialogue finds its finest expression in many passages.', 'The Urgency of Change.jpg'),
('Fantasy novel', 'THE GOLDFINCH', '1608.00', 'Donna Tartt', 'The novel is a coming-of-age tale told in the first person. The protagonist, 13-year-old Theodore Decker, survives a terrorist bombing at an art museum where his mother is killed. While staggering through the debris, he takes with him a small Dutch Golden Age painting called Het Puttertje (Dutch for The Goldfinch).', 'THE GOLDFINCH.jpg'),
('Fantasy novel', 'Fantastic Beasts and Where to Find Them', '568.90', 'J.K. Rowling ', 'Fantastic Beasts and Where to Find Them is an indispensable introduction to the magical beasts of the Wizarding World. in this comprehensively updated edition, eagle-eyed readers will spot a number of new beasts and an intriguing new author’s note. Scamander’s years of travel and research have created a tome of unparalleled importance.', 'Fantastic Beasts and Where to Find Them.jpg'),
('Action and Adventure', 'The Hobbit: Or There and Back Again', '1371.00', 'J.R.R. Tolkien', 'The journey through Middle-earth begins here with J.R.R. Tolkien\'s classic prelude to his Lord of the Rings trilogy.“\"A glorious account of a magnificent adventure, filled with suspense and seasoned with a quiet humor that is irresistible... All those, young or old, who love a fine adventurous tale, beautifully told, will take The Hobbit to their hearts.\"”', 'The Hobbit.jpg'),
('Action and Adventure', 'Dune', '973.00', 'Frank Herbert', 'Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world where the only thing of value is the “\"spice”\" melange, a drug capable of extending life and enhancing consciousness.', 'Dune.jpeg'),
('Action and Adventure', 'Jurassic Park', '1669.99', 'Michael Crichton', 'Jurassic Park is a 1990 science fiction novel written by Michael Crichton. A cautionary tale about genetic engineering, it presents the collapse of a zoological park showcasing genetically recreated dinosaurs to illustrate the mathematical concept of chaos theory and its real-world implications.', 'Jurassic Park.jpg'),
('Action and Adventure', 'The Hunger Games: Volume 1', '1623.00', 'Suzanne Collins', 'The Hunger Games is a 2008 dystopian young adult novel by the American writer Suzanne Collins. It is written in the perspective of 16-year-old Katniss Everdeen, who lives in the future, post-apocalyptic nation of Panem in North America. The Capitol, a highly advanced metropolis, exercises political control over the rest of the nation.', 'The Hunger Games_Volume 1.jpg'),
('Action and Adventure', 'Lost Horizon', '249.00', 'James Hilton', 'Lost Horizon is a 1933 novel by English writer James Hilton. The book was turned into a film, also called Lost Horizon, in 1937 by director Frank Capra and a lavish musical remake in 1973 by producer Ross Hunter with music by Burt Bacharach. It is best remembered as the origin of Shangri-La, a fictional utopian lamasery located high in the mountains of Tibet.', 'Lost Horizon.jpg'),
('Action and Adventure', 'Harry Potter and the Cursed Child', '2590.40', 'J. K. Rowling', 'It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children.While Harry grapples with a past that refuses to stay where it belongs, his youngest son, Albus, must struggle with the weight of a family legacy he never wanted.', 'Harry Potter and the Cursed Child.jpg'),
('Detective and Mystery', 'Murder on the Orient Express: A Hercule Poirot Mystery', '1197.41', 'Agatha Christie', 'Just after midnight, the famous Orient Express is stopped in its tracks by a snowdrift. By morning, the millionaire Samuel Edward Ratchett lies dead in his compartment, stabbed a dozen times, his door locked from the inside. Without a shred of doubt, one of his fellow passengers is the murderer.', 'Murder on the Orient Express.jpg'),
('Detective and Mystery', 'GONE GIRL', '783.00', 'Gillian Flynn', 'Gone Girl is a novel written by author Gillian Flynn. It is written as a contemporary thriller novel and is first published in June 2012. The novel\'s core mystery stems from an uncertainty about the protagonist, Dunne. Whether killed his wife, Dunne, is the suspense the novel is built up on.', 'GONE GIRL.jpg'),
('Detective and Mystery', 'The Honjin Murders: 28', '999.00', 'Seishi Yokomizo', 'In the winter of 1937, the village of Okamura is abuzz with excitement over the forthcoming wedding of a son of the grand Ichiyanagi family. But amid the gossip over the approaching festivities, there is also a worrying rumour - it seems a sinister masked man has been asking questions about the Ichiyanagis around the village.', 'The Honjin Murders 28.jpg'),
('Fantasy novel', 'The Idiot', '571.00', 'Fyodor Dostoevsky', 'Taken to be an idiot, the naïve Prince Myshkin visits his distant relative General Yepanchin and hopes to charm him, his wife and his three daughters, but his life changes drastically after he stumbles upon a photograph of Nastasya Filippovna.', 'The Idiot.jpg'),
('Fantasy novel', 'Bell the Bell Jar', '293.00', 'Sylvia Plath', 'In the hauntingly beautiful pages of The Bell Jar, Sylvia Plath takes us on a gripping journey into the fragile psyche of Esther Greenwood. Set against the backdrop of 1950s America, this semiautobiographical novel explores the stifling expectations placed upon women and the suffocating grasp of societal norms.', 'Bell the Bell Jar.jpg'),
('Philosophy', 'Tao Te Ching', '857.00', 'Laozi', 'Laozi was an ancient Chinese philosopher and writer. He is known as the reputed author of the Tao Te Ching and the founder of philosophical Taoism, and as a deity in religious Taoism and traditional Chinese religions. Although a legendary figure, he is usually dated to around the 6th century BC and reckoned a contemporary of Confucius, but some historians contend that he actually lived during the Warring States period of the 5th or 4th century BC.', 'Tao Te Ching.jpg'),
('Novel', 'Beloved', '701.00', 'Toni Morrison', 'Sethe, its protagonist, was born a slave and escaped to Ohio, but eighteen years later she is still not free. She has too many memories of Sweet Home, the beautiful farm where so many hideous things happened. And Sethe’s new home is haunted by the ghost of her baby, who died nameless and whose tombstone is engraved with a single word- Beloved.', 'Beloved.jpg'),
('Novel', 'One Hundred Years of Solitude', '898.69', 'Marquez Gabriel Garcia', 'The novel One Hundred Years of Solitude is an absolute master piece. It manages to capture the various phases and glories of the human history. The book has had a major impact on young minds that have taken up literature as a subject. The book is engaging and intense that reminiscenses of how history repeats itself with the collapse and creation of a new Macondo within a span of a century.', 'One Hundred Years of Solitude.jpeg'),
('Spirituality', 'KARMA: A YOGIS GUIDE', '1757.00', 'Sadhguru', 'Sadhguru explains what Karma is and how we can use its concepts to enhance our lives, he also tells us about the Sutras, a step-by-step self-help & self-improvement guide to navigating our way in this challenging world. In the process, we get a deeper, richer understanding of life and the power to craft our destinies.', 'KARMA.jpg'),
('Novel', 'The Da Vinci Code', '254.00', 'BROWN DAN', 'The record-breaking bestsellerA man is murdered in the world\'s most famous museum. Around his body is a ring of codes, drawn in blood. He died to protect a secret which Robert Langdon must uncover. It will be a race against time to decipher this final message. Can he get there before the killers do?', 'The Da Vinci Code.jpg'),
('Philosophy', 'Life of Pi', '1130.87', 'Yann Martel', 'After the tragic sinking of a cargo ship, a solitary lifeboat remains bobbing on the wild, blue Pacific. The only survivors from the wreck are a sixteen-year-old boy named Pi, a hyena, a zebra (with a broken leg), a female orang-utan - and a 450-pound Royal Bengal tiger. The scene is set for one of the most extraordinary and best-loved works of fiction in recent years', 'Life Of Pi.jpg'),
('Science', 'Cosmos', '4000.24', 'Carl Sagan', '* Spacecraft missions to nearby planets* The Library of ancient Alexandria* The human brain* Egyptian hieroglyphics* The origin of life* The death of the sun* The evolution of galaxies* The origins of matter, suns and worldsThe story of fifteen billion years of cosmic evolution transforming matter and life into consciousness, of how science and civilisation grew up together, and of the forces and individuals who helped shape modern science. A story told with Carl Sagan\'s remarkable ability to make scientific ideas both comprehensible and exciting.', 'Cosmos.jpg'),
('Science', 'Black Holes (L) : The Reith', '569.75', 'Stephen Hawking', 'In 2016 Professor Stephen Hawking delivered the BBC Reith Lectures on a subject that has fascinated him for decades - black holes. In these flagship lectures the legendary physicist argues that if we could only understand black holes and how they challenge the very nature of space and time, we could unlock the secrets of the universe.', 'Black Holes  The Reith.jpg'),
('Science', 'The Theory Of Everything', '3498.00', 'Stephen Hawking', 'Seven lectures by the brilliant theoretical physicist have been compiled into this book to try to explain to the common man, the complex problems of mathematics and the question that has been gripped everyone all for centuries, the theory of existence. Undeniably intelligent, witty and childlike in his explanations, the narrator describes every detail about the beginning of the universe. He describes what a theory that can state the initiation of everything would encompass.', 'The Theory Of Everything.jpg'),
('Science', 'The Origin of Species', '332.00', 'Charles Darwin', 'Explore the groundbreaking scientific work of Charles Darwin in this edition of The Origin of Species. This book revolutionized our understanding of the natural world and remains a seminal work in the history of science. With a new introduction and commentary, this edition is perfect for anyone interested in the history of evolutionary theory.', 'The Origin of Species.jpg'),
('Science', 'The God Equation: The Quest for a Theory', '1477.00', 'Michio Kaku', 'This is the story of a quest: to find a Theory of Everything. Einstein dedicated his life to seeking this elusive Holy Grail, a single, revolutionary \'god equation\' which would tie all the forces in the universe together, yet never found it. Some of the greatest minds in physics took up the search, from Stephen Hawking to Brian Greene. None have yet succeeded.', 'The God Equation The Quest for a Theory.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE IF NOT EXISTS `admin_log` (
  `name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_log`
--

INSERT INTO `admin_log` (`name`, `email`, `pwd`) VALUES
('Bruce Wayne', 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate` varchar(30) NOT NULL,
  `price` decimal(50,2) NOT NULL,
  `author` varchar(60) NOT NULL,
  `file_name` varchar(800) NOT NULL,
  `u_name` varchar(30) NOT NULL,
  `u_email` varchar(60) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  UNIQUE KEY `cart_id` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cate`, `price`, `author`, `file_name`, `u_name`, `u_email`, `book_name`) VALUES
(115, 'Detective and Mystery', '999.00', 'Seishi Yokomizo', 'The Honjin Murders 28.jpg', 'Logan Harris', 'logan.harris@example.com', 'The Honjin Murders: 28'),
(117, 'Action and Adventure', '2590.40', 'J. K. Rowling', 'Harry Potter and the Cursed Child.jpg', 'Logan Harris', 'logan.harris@example.com', 'Harry Potter and the Cursed Child'),
(116, 'Personal Development', '165.00', 'Joseph Murphy', 'THE POWER OF YOUR SUBCONSCIOUS MIND.jpg', 'Logan Harris', 'logan.harris@example.com', 'THE POWER OF YOUR SUBCONSCIOUS MIND');

-- --------------------------------------------------------

--
-- Table structure for table `cart_store`
--

DROP TABLE IF EXISTS `cart_store`;
CREATE TABLE IF NOT EXISTS `cart_store` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate` varchar(30) NOT NULL,
  `price` decimal(50,2) NOT NULL,
  `author` varchar(60) NOT NULL,
  `file_name` varchar(800) NOT NULL,
  `u_name` varchar(30) NOT NULL,
  `u_email` varchar(60) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_store`
--

INSERT INTO `cart_store` (`cart_id`, `cate`, `price`, `author`, `file_name`, `u_name`, `u_email`, `book_name`) VALUES
(1, 'Spirituality', '456.99', 'Paramahansa Yogananda', 'autobiography_yogi_book.jpg', 'Daniel Thomas', 'daniel.thomas@example.com', 'Autobiography of a Yogi'),
(2, 'Geopolitics', '526.00', 'Subrahmanyam Jaishankar', 'why_bharat_matter.jpg', 'Daniel Thomas', 'daniel.thomas@example.com', 'Why Bharat Matters'),
(19, 'Geopolitics', '526.00', 'Subrahmanyam Jaishankar', 'why_bharat_matter.jpg', 'Logan Harris', 'logan.harris@example.com', 'Why Bharat Matters'),
(4, 'Biography', '699.00', 'Jon Krakauer', 'Into the Wild.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'Into the Wild'),
(5, 'History', '735.00', 'Yuval Noah Harari', 'Sapiens.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'Sapiens: A Brief History of Humankind '),
(6, 'Novel', '2199.00', 'Paulo Coelho', 'The Alchemist.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'The Alchemist '),
(7, 'Spirituality', '456.99', 'Paramahansa Yogananda', 'autobiography_yogi_book.jpg', 'Charlotte Anderson', 'charlotte.anderson@example.com', 'Autobiography of a Yogi'),
(8, 'History', '735.00', 'Yuval Noah Harari', 'Sapiens.jpg', 'Charlotte Anderson', 'charlotte.anderson@example.com', 'Sapiens: A Brief History of Humankind '),
(9, 'Philosophy', '169.00', ' Albert Einstein ', 'Relativity.jpg', 'Charlotte Anderson', 'charlotte.anderson@example.com', 'Relativity'),
(10, 'Action and Adventure', '1623.00', 'Suzanne Collins', 'The Hunger Games_Volume 1.jpg', 'Charlotte Anderson', 'charlotte.anderson@example.com', 'The Hunger Games: Volume 1'),
(11, 'Detective and Mystery', '999.00', 'Seishi Yokomizo', 'The Honjin Murders 28.jpg', 'Charlotte Anderson', 'charlotte.anderson@example.com', 'The Honjin Murders: 28'),
(12, 'Personal Development', '165.00', 'Joseph Murphy', 'THE POWER OF YOUR SUBCONSCIOUS MIND.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'THE POWER OF YOUR SUBCONSCIOUS MIND'),
(17, 'Autography', '999.00', 'Arun Tiwari', 'apj.jpg', 'Logan Harris', 'logan.harris@example.com', 'Wings of Fire'),
(18, 'Spirituality', '456.99', 'Paramahansa Yogananda', 'autobiography_yogi_book.jpg', 'Logan Harris', 'logan.harris@example.com', 'Autobiography of a Yogi'),
(14, 'Action and Adventure', '1669.99', 'Michael Crichton', 'Jurassic Park.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'Jurassic Park'),
(15, 'Detective and Mystery', '1197.41', 'Agatha Christie', 'Murder on the Orient Express.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'Murder on the Orient Express: A Hercule Poirot Mystery'),
(16, 'Science', '1477.00', 'Michio Kaku', 'The God Equation The Quest for a Theory.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'The God Equation: The Quest for a Theory'),
(20, 'Novel', '2199.00', 'Paulo Coelho', 'The Alchemist.jpg', 'Logan Harris', 'logan.harris@example.com', 'The Alchemist '),
(21, 'Biography', '699.00', 'Jon Krakauer', 'Into the Wild.jpg', 'Logan Harris', 'logan.harris@example.com', 'Into the Wild'),
(22, 'Detective and Mystery', '999.00', 'Seishi Yokomizo', 'The Honjin Murders 28.jpg', 'Logan Harris', 'logan.harris@example.com', 'The Honjin Murders: 28'),
(23, 'Personal Development', '165.00', 'Joseph Murphy', 'THE POWER OF YOUR SUBCONSCIOUS MIND.jpg', 'Logan Harris', 'logan.harris@example.com', 'THE POWER OF YOUR SUBCONSCIOUS MIND'),
(24, 'Action and Adventure', '2590.40', 'J. K. Rowling', 'Harry Potter and the Cursed Child.jpg', 'Logan Harris', 'logan.harris@example.com', 'Harry Potter and the Cursed Child'),
(25, 'Fantasy novel', '568.90', 'J.K. Rowling ', 'Fantastic Beasts and Where to Find Them.jpg', 'Daniel Thomas', 'daniel.thomas@example.com', 'Fantastic Beasts and Where to Find Them'),
(26, 'Personal Development', '1837.00', 'Robert T. Kiyosaki ', 'Rich Dad Poor Dad.jpg', 'Daniel Thomas', 'daniel.thomas@example.com', 'Rich Dad Poor Dad'),
(27, 'Action and Adventure', '1371.00', 'J.R.R. Tolkien', 'The Hobbit.jpg', 'Daniel Thomas', 'daniel.thomas@example.com', 'The Hobbit: Or There and Back Again'),
(28, 'Fantasy novel', '1599.00', 'J. K. Rowling', 'Harry Potter_1.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'Harry Potter and the Sorcerers Stone'),
(29, 'Novel', '2199.00', 'Paulo Coelho', 'The Alchemist.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'The Alchemist '),
(30, 'Biography', '699.00', 'Jon Krakauer', 'Into the Wild.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'Into the Wild'),
(31, 'Personal Development', '1837.00', 'Robert T. Kiyosaki ', 'Rich Dad Poor Dad.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'Rich Dad Poor Dad'),
(32, 'Philosophy', '439.00', 'J KRISHNAMURTI', 'The Urgency of Change.jpg', 'Amelia Taylor', 'amelia.taylor@example.com', 'The Urgency of Change');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_detail`
--

DROP TABLE IF EXISTS `delivery_detail`;
CREATE TABLE IF NOT EXISTS `delivery_detail` (
  `delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(50) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_mobileNo` bigint(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pin` int(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `fk_u_email` (`u_email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_detail`
--

INSERT INTO `delivery_detail` (`delivery_id`, `u_name`, `u_email`, `u_mobileNo`, `address`, `city`, `pin`, `state`, `country`) VALUES
(3, 'Charlotte Anderson', 'charlotte.anderson@example.com', 8912346849, '426, red road, Sarojini Nagar', 'New Delhi', 110001, 'Delhi', 'Bharat'),
(4, 'James Wilson', 'james.wilson@example.com', 7812564869, '02, Bagh road, near IIT Kanpur', 'Kanpur', 260011, 'Uttar Pradesh', 'Bharat'),
(6, 'Amelia Taylor', 'amelia.taylor@example.com', 6312468968, '02, Bagh road, near IIT Kanpur', 'Kanpur', 281001, 'Uttar Pradesh', 'Bharat'),
(7, 'Daniel Thomas', 'daniel.thomas@example.com', 8976561249, '263, Church street, new market', 'Bengaluru', 560012, 'Karnataka', 'Bharat'),
(8, 'Logan Harris', 'logan.harris@example.com', 8967564513, '263, Church street, new market', 'Bengaluru', 560012, 'Karnataka', 'Bharat');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_timing`
--

DROP TABLE IF EXISTS `delivery_timing`;
CREATE TABLE IF NOT EXISTS `delivery_timing` (
  `u_email` varchar(100) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_note` text NOT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  KEY `delivery_id` (`delivery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `name` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`name`, `email`, `pwd`) VALUES
('John Snow', 'stayking@gmail.com', 'john@123'),
('mike', 'mike_cop@gmail.com', 'mike123'),
('jessi', 'pinkman12@gmail.com', 'pink@456'),
('doms', 'dom299.kd@gmail.com', 'dom!123'),
('John Doe', 'johndoe@example.com', 'password1'),
('Siyaram', 'shonw@gmail.com', 'shnow123'),
('Bob Johnson', 'bob.johnson@example.com', 'password3'),
('Emily Brown', 'emily.brown@example.com', 'password4'),
('Michael Clark', 'michael.clark@example.com', 'password5'),
('Emma Davis', 'emma.davis@example.com', 'password6'),
('James Wilson', 'james.wilson@example.com', 'password7'),
('Olivia Martinez', 'olivia.martinez@example.com', 'password8'),
('William Taylor', 'william.taylor@example.com', 'password9'),
('Sophia Anderson', 'sophia.anderson@example.com', 'password10'),
('Daniel Thomas', 'daniel.thomas@example.com', 'password11'),
('Mia White', 'mia.white@example.com', 'password12'),
('David Harris', 'david.harris@example.com', 'password13'),
('Isabella Lee', 'isabella.lee@example.com', 'password14'),
('Alexander Martin', 'alexander.martin@example.com', 'password15'),
('Emma Jackson', 'emma.jackson@example.com', 'password16'),
('Michael Thompson', 'michael.thompson@example.com', 'password17'),
('Sophia Garcia', 'sophia.garcia@example.com', 'password18'),
('Ethan Martinez', 'ethan.martinez@example.com', 'password19'),
('Ava Hernandez', 'ava.hernandez@example.com', 'password20'),
('Matthew Robinson', 'matthew.robinson@example.com', 'password21'),
('Amelia Rodriguez', 'amelia.rodriguez@example.com', 'password22'),
('William Wood', 'william.wood@example.com', 'password23'),
('Olivia Thomas', 'olivia.thomas@example.com', 'password24'),
('Alexander Rodriguez', 'alexander.rodriguez@example.com', 'password25'),
('Mia Thompson', 'mia.thompson@example.com', 'password26'),
('Elijah Jackson', 'elijah.jackson@example.com', 'password27'),
('Charlotte Wilson', 'charlotte.wilson@example.com', 'password28'),
('James Davis', 'james.davis@example.com', 'password29'),
('Emily Wilson', 'emily.wilson@example.com', 'password30'),
('Ava Smith', 'ava.smith@example.com', 'password31'),
('Ethan Brown', 'ethan.brown@example.com', 'password32'),
('Charlotte White', 'charlotte.white@example.com', 'password33'),
('William Martinez', 'william.martinez@example.com', 'password34'),
('Amelia Taylor', 'amelia.taylor@example.com', 'password35'),
('Mason Johnson', 'mason.johnson@example.com', 'password36'),
('Sophia White', 'sophia.white@example.com', 'password37'),
('Liam Martin', 'liam.martin@example.com', 'password38'),
('Olivia Robinson', 'olivia.robinson@example.com', 'password39'),
('Elijah Harris', 'elijah.harris@example.com', 'password40'),
('Ava Davis', 'ava.davis@example.com', 'password41'),
('Logan Harris', 'logan.harris@example.com', 'password42'),
('Oliver Wilson', 'oliver.wilson@example.com', 'password43'),
('Charlotte Anderson', 'charlotte.anderson@example.com', 'password44'),
('William Jackson', 'william.jackson@example.com', 'password45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(100) NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_note` text NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_email` (`user_email`),
  KEY `delivery_id` (`delivery_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_email`, `order_date`, `total_amount`, `payment_method`, `delivery_id`, `delivery_date`, `delivery_note`) VALUES
(1, 'daniel.thomas@example.com', '2024-04-10 08:37:10', '982.99', 'Online Payment', 7, '2024-04-14', 'You can give it to security guard '),
(3, 'charlotte.anderson@example.com', '2024-04-10 14:20:12', '3982.99', 'Online Payment', 3, '2024-04-16', 'come after 13:00 pm'),
(4, 'amelia.taylor@example.com', '2024-04-10 17:07:05', '5078.30', 'Online Payment', 6, '2024-04-15', 'you can give to my neighbor'),
(5, 'logan.harris@example.com', '2024-04-11 07:08:49', '4879.99', 'Online Payment', 8, '2024-04-15', 'You can give it to security guard'),
(6, 'amelia.taylor@example.com', '2024-04-12 08:10:02', '6773.00', 'POS on Payment', 6, '2024-04-16', 'come for delivery after 6 PM');

-- --------------------------------------------------------

--
-- Table structure for table `popular_books`
--

DROP TABLE IF EXISTS `popular_books`;
CREATE TABLE IF NOT EXISTS `popular_books` (
  `cate` varchar(30) NOT NULL,
  `book_name` varchar(80) NOT NULL,
  `price` decimal(50,2) DEFAULT NULL,
  `author` varchar(60) NOT NULL,
  `descp` varchar(5000) NOT NULL,
  `file_name` varchar(800) NOT NULL,
  PRIMARY KEY (`book_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `popular_books`
--

INSERT INTO `popular_books` (`cate`, `book_name`, `price`, `author`, `descp`, `file_name`) VALUES
('Personal Development', 'The Psychology of Money', '409.00', ' Morgan Housel', 'In the psychology of money, the author shares 19 short stories exploring the strange ways people think about money and teaches you how to make better sense of one of life?s most important matters.', 'The Psychology of Money.jpg'),
('Philosophy', 'Relativity', '169.00', 'Albert Einstein', 'Along with quantum mechanics in the 1920s, Einstein?s Special Theory of Relativity (1905) and General Theory of Relativity (1916) stand as the supreme achievements of twentieth-century physics.In simplest terms, the theory of Relativity is an approach to the measurement and study of space and time. The theory assumes that findings are based upon the relation of the frame of reference to the objects measured.', 'Relativity.jpg'),
('Philosophy', 'Ikigai', '354.00', 'Francesc Miralles and Hector Garcia', 'According to the Japanese, everyone has an ikigai?a reason for living. And according to the residents of the Japanese village with the world?s longest-living people, finding it is the key to a happier and longer life.', 'Ikigai.jpg'),
('Novel', 'The Alchemist', '2199.00', 'Paulo Coelho', 'A shepherd boy embarks on a journey to find the treasure of his dreams? With over 1,150,000 five-star Goodreads ratings, this modern classic is ?a wise and inspiring fable about the pilgrimage that life should be? (New York Times bestselling author M. Scott Peck).', 'The Alchemist.jpg'),
('Biography', 'Into the Wild', '699.00', 'Jon Krakauer', 'Into the Wild Cap is a 1996 non-fiction book written by Jon Krakauer. It is an expansion of a 9,000-word article by Krakauer on Chris McCandless titled \"Death of an Innocent\", which appeared in the January 1993 issue of Outside.', 'Into the Wild.jpg'),
('Detective and Mystery', 'Murder on the Orient Express: A Hercule Poirot Mystery', '1197.41', 'Agatha Christie', 'Just after midnight, the famous Orient Express is stopped in its tracks by a snowdrift. By morning, the millionaire Samuel Edward Ratchett lies dead in his compartment, stabbed a dozen times, his door locked from the inside. Without a shred of doubt, one of his fellow passengers is the murderer.', 'Murder on the Orient Express.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
