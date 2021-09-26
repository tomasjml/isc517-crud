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
    <main>
        <div class="row">
            <div class="col m-3">
                <h1>Students</h1>
            </div>
        </div>
        <div class="row">
            <div class="col m-3">
                <div class="card">
                    <div class="card-header bg-black p-2">
                        <div class="row">
                            <div class="col">
                                Management Table
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <button type="button" class="btn btn-sm btn-success">Agregar</button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>Matricula</th>
                                <th>Nombre</th>
                                <th>Teléfono</th>
                                <th>Acciones</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list estudiantes as estudiante>
                                <tr>
                                    <td>${estudiante.matricula}</td>
                                    <td>${estudiante.nombre} ${estudiante.apellido}</td>
                                    <td>${estudiante.telefono}</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target=("#read"+${estudiante.matricula?string})>Ver</button>
                                        <button type="button" class="btn btn-sm btn-warning">Actualizar</button>
                                        <button type="button" class="btn btn-sm btn-danger">Borrar</button>
                                        <!-- Ver Modal -->
                                        <div class="modal fade" id=("#read"+${estudiante.matricula?string}) data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        ...
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Understood</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </#list>
                            </tbody>
                            <tfoot>
                            <tr>
                                <td>Totals</td>
                                <td>${cantidadEstudiantes}</td>
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
