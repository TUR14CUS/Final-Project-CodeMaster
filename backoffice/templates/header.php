<?php

require_once('../requirements.php');


if (!isLogged()) {
    header('Location: index.php');
    exit;
} else {
    $user = $_SESSION['user'];
};

?>

<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="CodeMaster Final Project">
    <meta name="author" content="Ricardo Santos">
    <title> Backoffice </title>
    <link rel="stylesheet" href="static/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!--<script src="https://cdn.ckeditor.com/ckeditor5/41.1.0/classic/ckeditor.js"></script>-->
    <script src="https://cdn.tiny.cloud/1/ulpp925c8x7byvl2u3c62oj3ue4nh2zf2u9vf6vsq0mj3nnr/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script> <!-- Change the API -->


    <script>
        tinymce.init({
            selector: 'textarea',
            plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed linkchecker a11ychecker tinymcespellchecker permanentpen powerpaste advtable advcode editimage advtemplate ai mentions tinycomments tableofcontents footnotes mergetags autocorrect typography inlinecss',
            toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
            tinycomments_mode: 'embedded',
            tinycomments_author: 'Author name',
            mergetags_list: [{
                    value: 'First.Name',
                    title: 'First Name'
                },
                {
                    value: 'Email',
                    title: 'Email'
                },
            ],
            ai_request: (request, respondWith) => respondWith.string(() => Promise.reject("See docs to implement AI Assistant")),
        });
    </script>
    <link rel="stylesheet" href="static/style.css">



</head>

<body>

    <header class="container-fluid">

        <div class="row">

            <div class="col-12  p-0">

                <nav class="navbar navbar-expand-lg bg-danger nav-dark">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="home.php">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="carousel.php">Carousel</a>
                                </li>
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Menu Simples
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="menu_simples.php?id=1">Quem Somos</a></li>
                                    <li><a class="dropdown-item" href="menu_simples.php?id=2">Sócios</a></li>
                                    <li><a class="dropdown-item" href="menu_simples.php?id=3">Centro de Férias</a></li>
                                </ul>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="sair.php">Sair</a>

                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>

        </div>

    </header>

</body>

</html>