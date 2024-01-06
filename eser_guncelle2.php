<?php
/* Bağlantı bilgilerinin alınması*/
require_once("baglanti.php");

/* Ekleme işlemi sorgusu */
$kitapID = mysqli_real_escape_string($baglanti, $_POST['kitapID']);
$kitapAdi = mysqli_real_escape_string($baglanti, $_POST['kitapAdi']);
$kitapYayinYılı = mysqli_real_escape_string($baglanti, $_POST['kitapYayinYılı']);
$sorgu = "UPDATE kitaplar SET kitapAdi = '$kitapAdi', kitapYayinYılı = '$kitapYayinYılı' WHERE kitapID = $kitapID";

if (mysqli_query($baglanti, $sorgu)) {
    mysqli_close($baglanti);
    if (!headers_sent()) {
        header("Location: eserleri_listele.php");
        exit;
    }
} else {
    printf("Hata: " . $sorgu . "<br>" . mysqli_error($baglanti));
}
?>