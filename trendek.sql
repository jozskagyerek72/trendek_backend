-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.5.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for trendek
CREATE DATABASE IF NOT EXISTS `trendek` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci */;
USE `trendek`;

-- Dumping structure for table trendek.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

-- Dumping data for table trendek.categories: ~9 rows (approximately)
INSERT INTO `categories` (`id`, `name`) VALUES
	(1, 'Adattechnológia'),
	(2, 'Automatizáció'),
	(3, 'Infrastruktúra'),
	(4, 'Hálózat'),
	(5, 'Digitális élmény'),
	(6, 'Mobilitás'),
	(7, 'Pénzügy'),
	(8, 'Biztonság'),
	(9, 'Számítástechnika');

-- Dumping structure for table trendek.trends
CREATE TABLE IF NOT EXISTS `trends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `categId` int(11) NOT NULL,
  `impact` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `imageUrl` varchar(200) NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

-- Dumping data for table trendek.trends: ~18 rows (approximately)
INSERT INTO `trends` (`id`, `name`, `description`, `categId`, `impact`, `year`, `imageUrl`) VALUES
	(1, 'Mesterséges intelligencia (AI)', 'A gépi tanulás és az AI egyre fejlettebbé válik, és számos iparágban alkalmazzák, beleértve az egészségügyet, pénzügyet és az automatizált ügyfélszolgálatot.', 1, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738935715/trends/ai1_jog8aq.webp'),
	(2, 'Nagy adathalmazok (Big Data) feldolgozása', 'A vállalatok egyre nagyobb mennyiségű adatot használnak, amelyeket fejlett algoritmusokkal elemeznek üzleti döntésekhez.', 1, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738935860/trends/big-data_honmip.jpg'),
	(3, 'Robotika és drónok', 'Az ipari és szolgáltató robotok, valamint a drónok fejlesztése és alkalmazása egyre szélesebb körben terjed.', 2, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738935932/trends/robot_fa9s3b.jpg'),
	(4, 'Okosgyárak és Ipar 4.0', 'A gyártás automatizálása, IoT és AI integrációja hatékonyabb és önállóbb ipari folyamatokat tesz lehetővé.', 2, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738936047/trends/ipar4_ydhorc.jpg'),
	(5, 'Felhőszolgáltatások', 'A vállalatok egyre inkább a felhő alapú infrastruktúrákra támaszkodnak az adattárolás és feldolgozás terén.', 3, 'Közepes', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738936132/trends/felf%C5%91_fyf9fs.jpg'),
	(6, 'Edge computing', 'Az adatok feldolgozása közelebb kerül az eszközökhöz, csökkentve a késleltetést és növelve a hatékonyságot.', 3, 'Közepes', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738936198/trends/Edge_computing_infrastructure_iy233c.png'),
	(7, '5G hálózat', 'Az 5G technológia széleskörű elterjedése gyorsabb és megbízhatóbb internetkapcsolatot biztosít, amely elősegíti az IoT és más innovációk fejlődését.', 4, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738936280/trends/5g-06-2_uwb306.jpg'),
	(8, 'IoT (Dolgok Internete)', 'Az okoseszközök egyre elterjedtebbé válnak, összekapcsolva az otthonokat, autókat és ipari rendszereket.', 4, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738936335/trends/what-is-the-internet-of-things-iot_s7ccot.png'),
	(9, 'Kiterjesztett és virtuális valóság (AR/VR)', 'A szórakoztatóipar, oktatás és egészségügy terén egyre nagyobb szerepet kapnak az AR és VR technológiák.', 5, 'Közepes', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738936433/trends/vr_jlrbvf.jpg'),
	(10, 'Metaverzum', 'A digitális és valós világ összekapcsolása virtuális térben, új lehetőségeket kínálva a szórakozás, oktatás és munkavégzés terén.', 5, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738961626/trends/meta_xkctxc.jpg'),
	(11, 'Önvezető autók', 'A mesterséges intelligencia által vezérelt járművek forradalmasíthatják a közlekedést és csökkenthetik a balesetek számát.', 6, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738961749/trends/onvezeto_taxi_xoifk0.jpg'),
	(12, 'Elektromos járművek', 'Az elektromos autók terjedése csökkenti a fosszilis üzemanyag-felhasználást és hozzájárul a fenntartható közlekedéshez.', 6, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738961804/trends/elektromos-jarmuvek_cge973.jpg'),
	(13, 'Blockchain és kriptovaluták', 'A decentralizált pénzügyi rendszerek és az okosszerződések növekvő népszerűsége.', 7, 'Közepes', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738961912/trends/kripto_myuajw.jpg'),
	(14, 'Digitális jegyek és tokenek (NFT-k)', 'A blokklánc alapú eszközök és tokenek egyre nagyobb szerepet kapnak a művészetben és a digitális tulajdonjogok kezelésében.', 7, 'Közepes', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738961993/trends/nft_r33atk.png'),
	(15, 'Kibervédelem', 'A kiberbiztonság egyre fontosabbá válik az adatszivárgások és kibertámadások növekvő fenyegetése miatt.', 8, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738962085/trends/kibervedelem_aasfst.jpg'),
	(16, 'Zero Trust biztonsági modell', 'Az informatikai rendszerek védelmét új szintre emelő módszer, amely minden hozzáférést szigorúan ellenőriz.', 8, 'Magas', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738962157/trends/zero-trust_ndovep.webp'),
	(17, 'Kvantumszámítógépek', 'A kvantuminformatika fejlődése lehetőséget nyújt a számítógépek sebességének és hatékonyságának drámai növelésére.', 9, 'Hosszú távú', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738962217/trends/kvantum_yj6w3r.jpg'),
	(18, 'Neuromorf számítástechnika', 'Az emberi agy működését utánzó számítási modellek új korszakot hozhatnak a mesterséges intelligenciában.', 9, 'Hosszú távú', 2024, 'https://res.cloudinary.com/myblog2024/image/upload/v1738962328/trends/Neuromorphic_neural_network_xrydwz.webp');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
