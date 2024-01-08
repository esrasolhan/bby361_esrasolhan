<?php
/* Bağlantı bilgileri */
require_once("baglanti.php");

/* Veritabanı sorgulama */
$q = mysqli_real_escape_string($baglanti, $_GET["q"]);

// Kitaplar, yazarlar, yayınevleri ve diller tablolarını içeren birleştirilmiş sorgu
$sorgu = mysqli_query($baglanti, "SELECT * FROM kitaplar 
    INNER JOIN yazarlar ON kitaplar.yazarID = yazarlar.yazarID 
    INNER JOIN yayinevleri ON kitaplar.yayineviID = yayinevleri.yayineviID
    INNER JOIN diller ON kitaplar.dilID = diller.dilID
    WHERE (yazarlar.yazarAdi LIKE '%$q%' OR yazarlar.yazarSoyadi LIKE '%$q%' OR kitaplar.kitapAdi LIKE '%$q%' OR yayinevleri.yayineviAdi LIKE '%$q%' OR kitaplar.kitapTürü LIKE '%$q%' OR diller.kitapDili LIKE '%$q%')");

$toplam = mysqli_num_rows($sorgu);
?>

<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="HU BBY361 VTYS Final">
    <meta name="author" content="Esra Solhan">
    <title>BBY361 Kitapları Listele</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sticky-footer-navbar/">

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/common.js"></script>

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">
  </head>
  <body class="d-flex flex-column h-100">
    
<header>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">BBY361</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <script>for (index in mainMenu) {
            document.write('<li className="nav-item"><a class="nav-link" target='+mainMenu[index][2]+' href='+mainMenu[index][1]+'>'+mainMenu[index][0]+'</a></li>');
          }</script>
        </ul>
        <script>document.write(searchForm)</script>
      </div>
    </div>
  </nav>
</header>

<!-- Sayfa İçerik Başlangıcı -->
<main class="flex-shrink-0">
    <div class="container">
        <h1 class="mt-5">Kitapları Listele</h1>
        <p class="lead">Bu sayfada veri tabanının kitaplar tablosunda yer alan kayıtların tamamı listelenmektedir.</p>
        <h2>Kitap Kayıtları</h2>
        <p><?php echo("Toplam kayıt sayısı: " . $toplam); ?></p>
        <p>
            <?php
            while ($satir = mysqli_fetch_assoc($sorgu)) {
                printf("<h4>" . $satir["kitapAdi"] . "</h4>");
                printf("<p><b>Kitap No : </b> " . $satir["kitapID"] . "</p>");
                printf("<p><b>Kitap Yayın Tarihi : </b> " . $satir["kitapYayinYılı"] . "</p>");
                printf("<p><b>Kitap Türü : </b> " . $satir["kitapTürü"] . "</p>");
                printf("<p><b>Kitap Dili : </b> " . $satir["kitapDili"] . "</p>");
                printf("<p><b>Yazar:</b> " . $satir["yazarAdi"] . " " . $satir["yazarSoyadi"] . "</p>");
                printf("<p><b>Yayınevi :</b> " . $satir["yayineviAdi"] . "</p>");
                printf("<p><b>Yayinevi Sitesi :</b> <a target='_blank' href=" . $satir["yayineviURL"] . ">" . $satir["yayineviURL"] . "</a></p>");
                printf("<hr>");
            }
            ?>
        </p>
    </div>
</main>
<!-- Sayfa İçerik Bitişi -->

<footer class="footer mt-auto py-3 bg-light">
  <div class="container">
    <script>document.write(footer)</script>
  </div>
</footer>

    <script src="js/bootstrap.bundle.min.js"></script>

  </body>
</html>
