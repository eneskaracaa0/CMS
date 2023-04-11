-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Nis 2023, 17:21:38
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `rezervasyontakip`
--

DELIMITER $$
--
-- Yordamlar
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `musteri` ()   SELECT 
* FROM
musteri$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `site_link` varchar(530) DEFAULT NULL,
  `site_baslik` varchar(530) DEFAULT NULL,
  `site_aciklama` text DEFAULT NULL,
  `site_logo` varchar(530) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `site_link`, `site_baslik`, `site_aciklama`, `site_logo`) VALUES
(1, 'http://localhost:8080/randevu_takip', 'Randevu Takip ', 'Appointment Management System', '4902settings.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cevap`
--

CREATE TABLE `cevap` (
  `cevap_id` int(11) NOT NULL,
  `soru_id` int(11) NOT NULL,
  `cevap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `cevap`
--

INSERT INTO `cevap` (`cevap_id`, `soru_id`, `cevap`) VALUES
(1, 1, 'kötü'),
(4, 1, 'mükemmel'),
(7, 1, 'mükemmel'),
(10, 1, 'mükemmel'),
(13, 1, 'mükemmel'),
(16, 1, 'mükemmel'),
(19, 1, 'kötü'),
(22, 1, 'kötü'),
(25, 1, 'normal'),
(28, 1, 'normal'),
(31, 1, 'mükemmel'),
(33, 5, 'kötü'),
(34, 6, 'mükemmel'),
(35, 1, 'mükemmel'),
(37, 5, 'normal'),
(38, 6, 'normal'),
(39, 8, 'kötü'),
(40, 1, 'normal'),
(42, 5, 'normal'),
(43, 6, 'normal'),
(44, 8, 'kötü'),
(46, 1, 'normal'),
(48, 5, 'normal'),
(49, 6, 'normal'),
(50, 8, 'kötü'),
(52, 1, 'normal'),
(54, 5, 'normal'),
(55, 6, 'normal'),
(56, 8, 'kötü'),
(58, 1, 'normal'),
(60, 5, 'normal'),
(61, 6, 'normal'),
(62, 8, 'kötü'),
(64, 1, 'normal'),
(66, 5, 'normal'),
(67, 6, 'normal'),
(68, 8, 'kötü'),
(70, 1, 'normal'),
(72, 5, 'normal'),
(73, 6, 'normal'),
(74, 8, 'kötü'),
(76, 1, 'normal'),
(78, 5, 'normal'),
(79, 6, 'normal'),
(80, 8, 'kötü'),
(82, 1, 'mükemmel'),
(83, 5, 'normal'),
(84, 6, 'kötü'),
(85, 8, 'normal'),
(86, 10, 'normal'),
(87, 1, 'mükemmel'),
(88, 5, 'normal'),
(89, 6, 'kötü'),
(90, 8, 'normal'),
(91, 10, 'normal'),
(92, 1, 'mükemmel'),
(93, 5, 'normal'),
(94, 6, 'kötü'),
(95, 8, 'normal'),
(96, 10, 'normal'),
(97, 1, 'mükemmel'),
(98, 5, 'normal'),
(99, 6, 'kötü'),
(100, 8, 'normal'),
(101, 10, 'normal');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `iletisim_id` int(11) NOT NULL,
  `iletisim_name` varchar(30) NOT NULL,
  `iletisim_email` varchar(50) NOT NULL,
  `iletisim_subject` varchar(50) NOT NULL,
  `iletisim_message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`iletisim_id`, `iletisim_name`, `iletisim_email`, `iletisim_subject`, `iletisim_message`) VALUES
(1, 'dasdsa', 'eneskaraca18@hotmail.com', 'sadas', 'dasd'),
(2, 'dasdsa', 'eneskaraca18@hotmail.com', 'sadas', 'dasd'),
(3, 'selin', 'selin@hotmail.com', 'epilasyon', 'merhaba ücretinizi öğrenebilir miyim?');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kul_id` int(11) NOT NULL,
  `kul_isim` varchar(120) NOT NULL,
  `kul_mail` varchar(100) NOT NULL,
  `kul_sifre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`kul_id`, `kul_isim`, `kul_mail`, `kul_sifre`) VALUES
(1, 'Enes Karaca', 'enes@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

CREATE TABLE `musteri` (
  `musteri_id` int(11) NOT NULL,
  `musteri_isim` varchar(530) DEFAULT NULL,
  `musteri_mail` varchar(250) DEFAULT NULL,
  `musteri_telefon` varchar(25) DEFAULT NULL,
  `musteri_adres` varchar(530) DEFAULT NULL,
  `musteri_tc` varchar(20) DEFAULT NULL,
  `musteri_detay` text DEFAULT NULL,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`musteri_id`, `musteri_isim`, `musteri_mail`, `musteri_telefon`, `musteri_adres`, `musteri_tc`, `musteri_detay`, `eklenme_tarihi`) VALUES
(5, 'Ali Veli', 'vykegehyka@mailinator.com', 'Dolore non repellend', 'Est at dolorum ipsam', 'Voluptas et neque ip', 'Possimus ad omnis v', '2021-02-02 22:48:18'),
(6, 'Ahmet Mehmet', 'a@gmail.com', '11111', 'Türkiye', '21321321321', NULL, '2021-12-30 01:32:50'),
(7, 'Ali Veli', 'b@gmail.com', '22222', 'Almanya', '6546574987', NULL, '2021-12-30 01:32:50'),
(142, 'Enes Karaca', 'eneskaraca18@hotmail.com', '053102221245', 'ıstanbul ataşehir', '123456798', 'saç ekimi', '2023-03-24 14:59:22'),
(143, 'aslan karaca', 'aslan@gmail.com', '02124564', 'istanbul kasımpaşa', '132465789', 'cilt bakımı', '2023-03-24 18:25:17'),
(144, 'asdsad', 'asdsad@gmail.com', '1321', 'asdas', '213213', 'asdsa', '2023-03-24 18:45:12'),
(145, '', '', '', '', '', '', '2023-04-02 07:00:10'),
(146, '', '', '', '', '', '', '2023-04-02 07:00:21'),
(147, 'deneme', 'aslan@gmail.com', '053102221245', 'ıstanbul ataşehir', '213213', 'deneme', '2023-04-11 17:45:38');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oykullananlar`
--

CREATE TABLE `oykullananlar` (
  `id` int(11) NOT NULL,
  `ip_adres` varchar(50) NOT NULL,
  `tarih` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `oykullananlar`
--

INSERT INTO `oykullananlar` (`id`, `ip_adres`, `tarih`) VALUES
(1, '::1', '1679789056'),
(2, '::1', '1679789209'),
(3, '::1', '1679789209'),
(4, '::1', '1679789209'),
(5, '::1', '1679789231'),
(6, '::1', '1679789231'),
(7, '::1', '1679789231'),
(8, '::1', '1679789242'),
(9, '::1', '1679789242'),
(10, '::1', '1679789242'),
(11, '::1', '1679789383'),
(12, '::1', '1679789383'),
(13, '::1', '1679789383'),
(14, '::1', '1679789434'),
(15, '::1', '1679789434'),
(16, '::1', '1679789434'),
(17, '::1', '1679789444'),
(18, '::1', '1679789444'),
(19, '::1', '1679789444'),
(20, '::1', '1679789519'),
(21, '::1', '1679789519'),
(22, '::1', '1679789519'),
(23, '::1', '1679791905'),
(24, '::1', '1679791905'),
(25, '::1', '1679791905'),
(26, '::1', '1679791914'),
(27, '::1', '1679791914'),
(28, '::1', '1679791914'),
(29, '::1', '1679791922'),
(30, '::1', '1679791922'),
(31, '::1', '1679791922'),
(32, '::1', '1679792844'),
(33, '::1', '1679792844'),
(34, '::1', '1679792844'),
(35, '::1', '1679792882'),
(36, '::1', '1679792882'),
(37, '::1', '1679792882'),
(38, '::1', '1679838077'),
(39, '::1', '1679838077'),
(40, '::1', '1679838077'),
(41, '::1', '1679838395'),
(42, '::1', '1679838395'),
(43, '::1', '1679838395'),
(44, '::1', '1679866262'),
(45, '::1', '1679866262'),
(46, '::1', '1679866262'),
(47, '::1', '1679866262'),
(48, '::1', '1679869547'),
(49, '::1', '1679869547'),
(50, '::1', '1679869547'),
(51, '::1', '1679869547'),
(52, '::1', '1679869547'),
(53, '::1', '1680099529'),
(54, '::1', '1680099529'),
(55, '::1', '1680099529'),
(56, '::1', '1680099529'),
(57, '::1', '1680099529'),
(58, '::1', '1680099529'),
(59, '::1', '1680099610'),
(60, '::1', '1680099610'),
(61, '::1', '1680099610'),
(62, '::1', '1680099610'),
(63, '::1', '1680099610'),
(64, '::1', '1680099610'),
(65, '::1', '1680099651'),
(66, '::1', '1680099651'),
(67, '::1', '1680099651'),
(68, '::1', '1680099651'),
(69, '::1', '1680099651'),
(70, '::1', '1680099651'),
(71, '::1', '1680099678'),
(72, '::1', '1680099678'),
(73, '::1', '1680099678'),
(74, '::1', '1680099678'),
(75, '::1', '1680099678'),
(76, '::1', '1680099678'),
(77, '::1', '1680099710'),
(78, '::1', '1680099710'),
(79, '::1', '1680099710'),
(80, '::1', '1680099710'),
(81, '::1', '1680099710'),
(82, '::1', '1680099710'),
(83, '::1', '1680099767'),
(84, '::1', '1680099767'),
(85, '::1', '1680099767'),
(86, '::1', '1680099767'),
(87, '::1', '1680099767'),
(88, '::1', '1680099767'),
(89, '::1', '1680099792'),
(90, '::1', '1680099792'),
(91, '::1', '1680099792'),
(92, '::1', '1680099792'),
(93, '::1', '1680099792'),
(94, '::1', '1680099792'),
(95, '::1', '1680176517'),
(96, '::1', '1680176517'),
(97, '::1', '1680176517'),
(98, '::1', '1680176517'),
(99, '::1', '1680176517'),
(100, '::1', '1680176557'),
(101, '::1', '1680176557'),
(102, '::1', '1680176557'),
(103, '::1', '1680176557'),
(104, '::1', '1680176557'),
(105, '::1', '1680176607'),
(106, '::1', '1680176607'),
(107, '::1', '1680176607'),
(108, '::1', '1680176607'),
(109, '::1', '1680176607'),
(110, '::1', '1680176619'),
(111, '::1', '1680176619'),
(112, '::1', '1680176619'),
(113, '::1', '1680176619'),
(114, '::1', '1680176619');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevu`
--

CREATE TABLE `randevu` (
  `id` int(11) NOT NULL,
  `baslik` varchar(530) NOT NULL,
  `tarih` datetime DEFAULT NULL,
  `musteri` int(11) NOT NULL,
  `adres` text NOT NULL,
  `detay` text NOT NULL,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `durum` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `randevu`
--

INSERT INTO `randevu` (`id`, `baslik`, `tarih`, `musteri`, `adres`, `detay`, `eklenme_tarihi`, `durum`) VALUES
(2, 'Test-1', '2021-02-03 00:00:00', 4, 'asdasd sad as dasd ', 'dasd asasd \r\nerere\r\nqwqweqwe \r\nwq3eqwe\r\n', '2021-02-02 21:04:14', 3),
(4, 'Test-2 DENEME', '2021-02-03 00:00:00', 5, 'asdasd sad as dasd ', 'dasd asasd \r\nerere\r\nqwqweqwe \r\nwq3eqwe\r\n', '2021-02-02 21:04:14', 1),
(5, 'Test-3', '2021-02-03 00:00:00', 4, 'asdasd sad as dasd ', 'dasd asasd \r\nerere\r\nqwqweqwe \r\nwq3eqwe\r\n', '2021-02-02 21:04:14', 2),
(6, 'AAA', '2021-10-30 10:00:00', 4, 'Praesentium aliquip ', 'Quae illo magna eu gr', '2021-10-29 02:28:01', 3),
(7, 'Saç Ekimi', '2023-03-25 16:00:00', 142, 'Yenibosna Şube', 'Acil saat 12:00da gelecekmiş', '2023-03-24 15:00:10', 0),
(8, 'Diyet', '2023-04-12 20:00:00', 147, 'Yenibosna Şube', 'deneme', '2023-04-11 17:46:22', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorular`
--

CREATE TABLE `sorular` (
  `soru_id` int(11) NOT NULL,
  `soru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `sorular`
--

INSERT INTO `sorular` (`soru_id`, `soru`) VALUES
(1, 'Fiyatlandırmadan memnun kaldınız mı??'),
(5, 'Fiyatlandırmadan memnun kaldınız mı?'),
(6, 'Ulaşımda sorun yaşadınız mı?'),
(8, 'Web sitemizin kullanışından memnun musunuz?'),
(10, 'Online hizmetlerimizden memnunmusunuz?');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ürünler`
--

CREATE TABLE `ürünler` (
  `ürün_id` int(11) NOT NULL,
  `ürün_ad` varchar(50) NOT NULL,
  `ürün_aciklaması` varchar(50) NOT NULL,
  `ürün_resim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `ürünler`
--

INSERT INTO `ürünler` (`ürün_id`, `ürün_ad`, `ürün_aciklaması`, `ürün_resim`) VALUES
(1, 'Yüz Nemlendirici Bakım Kremi', 'Kuru yüzler için nemlendiric doğal ürünlerden yapı', ''),
(2, 'Doğal Güneş Kremi', 'Epilasyon sonrası kullanılacak doğal güneş kremi s', ''),
(3, 'Doğal Güneş Kremi', 'Epilasyon sonrası kullanılacak doğal güneş kremi s', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cevap`
--
ALTER TABLE `cevap`
  ADD PRIMARY KEY (`cevap_id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`iletisim_id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kul_id`);

--
-- Tablo için indeksler `musteri`
--
ALTER TABLE `musteri`
  ADD PRIMARY KEY (`musteri_id`);

--
-- Tablo için indeksler `oykullananlar`
--
ALTER TABLE `oykullananlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `randevu`
--
ALTER TABLE `randevu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sorular`
--
ALTER TABLE `sorular`
  ADD PRIMARY KEY (`soru_id`);

--
-- Tablo için indeksler `ürünler`
--
ALTER TABLE `ürünler`
  ADD PRIMARY KEY (`ürün_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `cevap`
--
ALTER TABLE `cevap`
  MODIFY `cevap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `iletisim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kul_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `musteri`
--
ALTER TABLE `musteri`
  MODIFY `musteri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- Tablo için AUTO_INCREMENT değeri `oykullananlar`
--
ALTER TABLE `oykullananlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Tablo için AUTO_INCREMENT değeri `randevu`
--
ALTER TABLE `randevu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `sorular`
--
ALTER TABLE `sorular`
  MODIFY `soru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `ürünler`
--
ALTER TABLE `ürünler`
  MODIFY `ürün_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
