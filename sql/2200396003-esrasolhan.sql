-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 06 Oca 2024, 13:35:15
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
-- Veritabanı: `katalog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitaplar`
--

CREATE TABLE `kitaplar` (
  `kitapID` int(11) NOT NULL,
  `kitapAdi` varchar(1000) NOT NULL,
  `kitapYayinYılı` int(11) NOT NULL,
  `yazarID` int(11) NOT NULL,
  `yayineviID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kitaplar`
--

INSERT INTO `kitaplar` (`kitapID`, `kitapAdi`, `kitapYayinYılı`, `yazarID`, `yayineviID`) VALUES
(1, 'Ölüler Evinden Anılar', 2022, 1, 1),
(2, 'Cehenneme Övgü', 2016, 2, 2),
(3, 'İntihar', 2008, 3, 3);

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
(3, 'Sel Yayıncılık', 'https://www.selyayincilik.com/');

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
(3, 'Edouard', 'Leve');

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
  MODIFY `kitapID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevleri`
--
ALTER TABLE `yayinevleri`
  MODIFY `yayineviID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `yazarlar`
--
ALTER TABLE `yazarlar`
  MODIFY `yazarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
