-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 07 Oca 2024, 15:47:49
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bby361_esrasolhan`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitaplar`
--

CREATE TABLE `kitaplar` (
  `kitapID` int(11) NOT NULL,
  `kitapAdi` varchar(1000) NOT NULL,
  `kitapYayinYılı` int(11) NOT NULL,
  `kitapTürü` varchar(1000) DEFAULT NULL,
  `yazarID` int(11) NOT NULL,
  `yayineviID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kitaplar`
--

INSERT INTO `kitaplar` (`kitapID`, `kitapAdi`, `kitapYayinYılı`, `kitapTürü`, `yazarID`, `yayineviID`) VALUES
(1, 'Ölüler Evinden Anılar', 2022, 'Roman', 1, 1),
(2, 'Cehenneme Övgü', 2015, 'Deneme', 2, 2),
(3, 'İntihar', 2009, 'Roman', 3, 3),
(5, 'Suç ve Ceza', 2020, 'Roman', 1, 1),
(6, 'Otoportre', 2023, 'Deneme', 3, 3),
(7, 'Cennetin Dibi', 2008, 'Deneme', 2, 2),
(8, 'Yeraltından Notlar', 2019, 'Roman', 1, 1),
(10, 'Pera Palas', 2017, 'Roman', 4, 3),
(11, 'Uçurtma Avcısı', 2004, 'Roman', 10, 8),
(12, 'Peri Masalı', 2003, 'Roman', 6, 4),
(13, 'Böyle Bir Sevmek', 2022, 'Şiir', 11, 1),
(14, 'Çürümenin Kitabı', 2016, 'Felsefe', 12, 7),
(15, 'Hayvanlardan Tanrılara - Sapiens', 2015, 'Tarih', 14, 9),
(16, 'Savaş Sanatı', 2014, 'Politika', 13, 1),
(17, 'Paranın Psikolojisi', 2021, 'Ekonomi-İktisat', 15, 10),
(18, 'Küçük Prens', 2015, 'Çocuk Kitapları', 16, 11),
(19, 'Death Note - Ölüm Defteri 5', 2011, 'Manga', 17, 12),
(20, 'Tersi ve Yüzü', 2016, 'Anlatı', 18, 6),
(21, 'Sınırlar', 2019, 'Kişisel Gelişim', 19, 13),
(22, 'Acı Kahve', 2019, 'Roman', 20, 4),
(23, 'Babiller', 2017, 'Tarih', 21, 14),
(24, 'Özel Görelilik Kuramı', 2013, 'Fizik', 22, 15),
(25, 'Ceviz Kabuğundaki Evren', 2013, 'Bilim Tarihi ve Felsefesi', 23, 14),
(26, 'Sonsuz Küçükler Hesabının Metafizik İlkeleri', 2023, 'Mühendislik', 24, 16),
(27, 'Sırça Köşk', 2003, 'Öykü', 25, 5),
(28, 'Dostoyevski-Yalnızlığın Keşfi', 2019, 'Biyografi-Otobiyografi', 26, 17),
(29, 'Senin Cahilliğin Benim Yaşamımı Etkiliyor', 2023, 'Söyleşi', 27, 18),
(30, 'Klaus Liebe-Harkort Mektuplaşmaları', 2017, 'Mektup', 28, 19),
(31, 'İnsan Neyle Yaşar?', 2012, 'Roman', 29, 1),
(32, 'Bir İdam Mahkumunun Son Günü', 2013, 'Roman', 8, 1),
(33, 'Ay\'a Yolculuk', 2016, 'Roman', 9, 1),
(34, 'Ciddi Olmanın Önemi', 2020, 'Roman', 30, 20),
(35, 'Karınca', 2010, 'Roman', 31, 21),
(36, 'Kavgam', 2017, 'Politika', 32, 22);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevleri`
--

CREATE TABLE `yayinevleri` (
  `yayineviID` int(11) NOT NULL,
  `yayineviAdi` varchar(100) NOT NULL,
  `yayineviURL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yayinevleri`
--

INSERT INTO `yayinevleri` (`yayineviID`, `yayineviAdi`, `yayineviURL`) VALUES
(1, 'Türkiye İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr/'),
(2, 'İletişim Yayınları', 'https://iletisim.com.tr/'),
(3, 'Sel Yayıncılık', 'https://www.selyayincilik.com/'),
(4, 'Altın Kitaplar', 'https://www.altinkitaplar.com.tr/'),
(5, 'Yapı Kredi Yayınları', 'https://www.yapikrediyayinlari.com.tr'),
(6, 'Can Yayınları', 'https://www.canyayinlari.com'),
(7, 'Metis Yayınları', 'https://www.metiskitap.com/'),
(8, 'Everest Yayınları', 'https://www.everestyayinlari.com'),
(9, 'Kolektif Kitap', 'https://kolektifkitap.com/'),
(10, 'Scala Yayıncılık', 'https://www.scalakitapci.com/'),
(11, 'Can Çocuk Yayınları', 'https://www.canyayinlari.com/can-cocuk'),
(12, 'Akılçelen Kitaplar', 'http://www.akilcelenkitaplar.com/'),
(13, 'Diyojen Yayıncılık', 'https://www.diyojenkitap.com/'),
(14, 'Alfa Yayınları', 'https://www.alfakitap.com'),
(15, 'İdea Yayınevi', 'https://www.xn--ideayaynevi-5zb.com/'),
(16, 'İnsan Yayınları', 'https://www.insankitap.com'),
(17, 'Zeplin Kitap', 'https://zeplinkitap.com'),
(18, 'Masa Kitap', 'https://masakitap.com'),
(19, 'Nesin Yayınevi', 'https://www.nesinyayinevi.com'),
(20, 'Gece Kitaplığı', 'https://www.gecekitapligi.com'),
(21, 'Cinius Yayınları', 'https://www.ciniusyayinlari.com'),
(22, 'İlgi Kültür Sanat Yayınları', 'https://www.ilgikultur.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarlar`
--

CREATE TABLE `yazarlar` (
  `yazarID` int(11) NOT NULL,
  `yazarAdi` varchar(100) NOT NULL,
  `yazarSoyadi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yazarlar`
--

INSERT INTO `yazarlar` (`yazarID`, `yazarAdi`, `yazarSoyadi`) VALUES
(1, 'Fyodor Mihayloviç', 'Dostoyevski'),
(2, 'Gündüz', 'Vassaf'),
(3, 'Edouard', 'Leve'),
(4, 'Abidin', 'Dino'),
(5, 'Nazım', 'Hikmet'),
(6, 'Stephen', 'King'),
(7, 'Jose Mauro De', 'Vasconcelos'),
(8, 'Victor', 'Hugo'),
(9, 'Jules', 'Verne'),
(10, 'Khaled', 'Hosseini'),
(11, 'Atilla', 'İlhan'),
(12, 'Emil Michel', 'Cioran'),
(13, 'Sun', 'Tzu'),
(14, 'Yuval Noah', 'Harari'),
(15, 'Morgan', 'Housel'),
(16, 'Antoine de', 'Saint-Exupery'),
(17, 'Tsugumi', 'Ooba'),
(18, 'Albert', 'Camus'),
(19, 'Henry', 'Cloud'),
(20, 'Agatha', 'Christie'),
(21, 'Michael', 'Jursa'),
(22, 'David', 'Bohm'),
(23, 'Stephen', 'Hawking'),
(24, 'Rene', 'Guenon'),
(25, 'Sabahattin', 'Ali'),
(26, 'Stephen', 'Zweig'),
(27, 'Celal', 'Şengör'),
(28, 'Aziz', 'Nesin'),
(29, 'Lev Nikolayeviç', 'Tolstoy'),
(30, 'Oscar', 'Wilde'),
(31, 'Said', 'Seymen'),
(32, 'Adolf', 'Hitler');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD PRIMARY KEY (`kitapID`),
  ADD KEY `yayineviID` (`yayineviID`),
  ADD KEY `yazarID` (`yazarID`);

--
-- Tablo için indeksler `yayinevleri`
--
ALTER TABLE `yayinevleri`
  ADD PRIMARY KEY (`yayineviID`);

--
-- Tablo için indeksler `yazarlar`
--
ALTER TABLE `yazarlar`
  ADD PRIMARY KEY (`yazarID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitaplar`
--
ALTER TABLE `kitaplar`
  MODIFY `kitapID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevleri`
--
ALTER TABLE `yayinevleri`
  MODIFY `yayineviID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `yazarlar`
--
ALTER TABLE `yazarlar`
  MODIFY `yazarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD CONSTRAINT `kitaplar_ibfk_1` FOREIGN KEY (`yayineviID`) REFERENCES `yayinevleri` (`yayineviID`),
  ADD CONSTRAINT `kitaplar_ibfk_2` FOREIGN KEY (`yazarID`) REFERENCES `yazarlar` (`yazarID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
