<!doctype html>
<html lang="en" class="h-100">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>CRUD</title>

    <!-- Bootstrap core CSS -->
    <link href="/webjars/bootstrap/5.1.0/css/bootstrap.min.css" rel="stylesheet"/>

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
    </style>


    <!-- Custom styles for this template -->
    <link href="/css/custom.css" rel="stylesheet">
</head>
<body class="d-flex h-100 text-center text-white bg-dark">

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="mb-auto">
        <div>
            <h3 class="float-md-start mb-0">Student's CRUD</h3>
            <nav class="nav nav-masthead justify-content-center float-md-end">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
            </nav>
        </div>
    </header>

    <main class="px-3">
        <div class="row">
            <div class="col m-3">
                <h1>Students</h1>
            </div>
        </div>
        <div class="row">
            <div class="col m-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title bg-black p-2">Management Table</h5>
<#--                        <h6 class="card-subtitle mb-2 text-muted">Manage Table</h6>-->
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Upvotes</th>
                                <th>Downvotes</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Alice</td>
                                <td>10</td>
                                <td>11</td>
                            </tr>
                            <tr>
                                <td>Bob</td>
                                <td>4</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td>Charlie</td>
                                <td>7</td>
                                <td>9</td>
                            </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <td>Totals</td>
                                <td>21</td>
                                <td>23</td>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="mt-auto text-white-50">
        <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
    </footer>

</div>

<script type="module" src="/webjars/popper.js/2.9.3/umd/popper.min.js"></script>
<script type="module" src="/webjars/bootstrap/5.1.0/js/bootstrap.min.js" ></script>

</body>
</html>
