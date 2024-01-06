<?php
/* Bağlantı bilgilerinin alınması*/
require_once("baglanti.php");

/* Ekleme işlemi sorgusu */
$kitapAdi = mysqli_real_escape_string($baglanti, $_POST['kitapAdi']);
$kitapYayinYılı = mysqli_real_escape_string($baglanti, $_POST['kitapYayinYılı']);
$yazarID = mysqli_real_escape_string($baglanti, $_POST['yazarID']);
$yayineviID = isset($_POST['yayineviID']) ? mysqli_real_escape_string($baglanti, $_POST['yayineviID']) : null;
$sorgu = "INSERT INTO kitaplar (kitapAdi, kitapYayinYılı, yazarID, yayineviID)
            VALUES ('$kitapAdi', '$kitapYayinYılı', $yazarID, $yayineviID)";

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
