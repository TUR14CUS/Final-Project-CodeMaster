<?php

$elements_per_page = 6;
$actual_page = isset($_GET["page"]) ? intval($_GET["page"]) : 1;

$result = selectUnicSQL("SELECT count(*) as total FROM destaques");
$total = $result["total"];
$total_pages = ceil($total / $elements_per_page);

if ($actual_page < 1) {
  $actual_page = 1;
} elseif ($actual_page > $total_pages && $total_pages > 0) {
  $actual_page = $total_pages;
}

$ignore = ($actual_page - 1) * $elements_per_page;

$destaques = selectSQL("SELECT * FROM destaques LIMIT $elements_per_page OFFSET $ignore");
?>

<div class="row mt-5">
  <div class="col-12">
    <div class="spacer mx-auto"></div>
  </div>
</div>
<div class="row mt-5 pt-1">
  <div class="col-12 text-center">
    <h1 class="title">Destaques</h1>
  </div>
</div>

<!-- -->

<div class="row mt-4 pt-2">
  <div class="col-7 mx-auto d-flex justify-content-center gap-4 flex-wrap">
    <?php foreach ($destaques as $d) : ?>
      <div class="myCustomCard d-flex flex-column mb-5">

        <div class="row">
          <div class="col-12">
            <img class="w-100 h-100" src="<?= $d['imagem']; ?>" alt="" />
          </div>
        </div>

        <div class="border-card">

          <div class="row px-2">
            <div class="cardTitle col-12 py-3 px-4">
              <h3><?= substr($d['titulo'], 0, 70); ?></h3>
            </div>
          </div>

          <div class="row px-2">
            <div class="col-12 px-4">
              <p> <?= substr($d['texto'], 0, 110); ?>...</p>
            </div>
          </div>

          <div class="btnSeeMore">
            <div class="col-12 text-center">
              <a href="destaque.php?id=<?= $d['id'] ?>" class="seeMore2 mx-auto d-flex justify-content-center align-items-center">
                <span>VER MAIS</span>
              </a>
            </div>
          </div>

        </div>
      </div>
    <?php endforeach; ?>
  </div>
</div>

<!-- -->

<div class="" style="padding-top:200px;">
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