<?php

$elements_per_page = 6;
$actual_page = isset($_GET["page"]) ? intval($_GET["page"]) : 1;

$result = selectUnicSQL("SELECT count(*) as total FROM noticias");
$total = $result["total"];
$total_pages = ceil($total / $elements_per_page);

if ($actual_page < 1) {
  $actual_page = 1;
} elseif ($actual_page > $total_pages && $total_pages > 0) {
  $actual_page = $total_pages;
}

$ignore = ($actual_page - 1) * $elements_per_page;

$noticias = selectSQL("SELECT * FROM noticias LIMIT $elements_per_page OFFSET $ignore");
?>

<div class="row mt-5">
  <div class="col-12">
    <div class="spacer mx-auto"></div>
  </div>
</div>
<div class="row mt-5 pt-1">
  <div class="col-12 text-center">
    <h1 class="title">Noticias</h1>
  </div>
</div>

<!-- -->

<div class="row mt-4 pt-2 mb-3">
  <div class="col-9 mx-auto d-flex justify-content-center gap-4 flex-wrap mb-4">
    <?php foreach ($noticias as $n) : ?>
      <div class="myCustomCard-N d-flex flex-column mb-5 mt-5 pb-5">
        <a href="noticia.php?id=<?= $n['id'] ?>" id="noticias">
          <div class="row">
            <div class="col-12">
              <img class="w-100 h-100" src="<?= $n['imagem']; ?>" alt="" />
            </div>
          </div>

          <div class="border-card-n mb-5">

            <div class="row px-2">
              <div class="cardTitle col-12 py-3 px-4">
                <h3><?= substr($n['titulo'], 0, 30); ?></h3>
              </div>
            </div>

            <div class="row px-2">
              <div class="col-12 px-4">
                <p> <?= substr($n['texto'], 0, 210); ?>...</p>
              </div>
            </div>
          </div>
        </a>
      </div>

    <?php endforeach; ?>
  </div>
</div>

<!-- -->

<div class="" style=" padding-top:200px;">
  <div class="col-12 d-flex justify-content-center mb-5">
    <nav aria-label="Navegação de página exemplo">
      <ul class="pagination mb-5d">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Anterior">
            <span aria-hidden="true">&lt;</span>
          </a>
        </li>
        <?php for ($i = 1; $i <= $total_pages; $i++) : ?>
          <li class="page-item botoesPaginas <?= ($i === $actual_page) ? 'active' : ''; ?>">
            <a class="page-link" href="?page=<?= $i; ?>"><?= $i; ?></a>
          </li>
        <?php endfor; ?>
        <li class="page-item botoesPaginas">
          <a class="page-link" href="#" aria-label="Próximo">
            <span aria-hidden="true">&gt;</span>
          </a>
        </li>
      </ul>
    </nav>
  </div>
</div>

<!-- -->



</div>