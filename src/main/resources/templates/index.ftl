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
                                <button type="button" class="btn btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#agregarEstudiante">Agregar</button>
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
                                    <td>${estudiante.matricula?c}</td>
                                    <td>${estudiante.nombre} ${estudiante.apellido}</td>
                                    <td>${estudiante.telefono}</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target=${"#read"+estudiante.matricula?c}>Ver</button>
                                        <a id=${"editable"+estudiante.getMatricula()?c}type="button" class="btn btn-sm btn-warning" href="/estudiante/editable">Editar</a>

                                        <!-- Ver Estudiante Modal -->
                                        <div class="modal fade" id=${"read"+estudiante.matricula?c} data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby=${"read"+estudiante.matricula?c+"Label"} aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id=${"read"+estudiante.matricula?c+"Label"}>Información de Estudiante</h5>
                                                        <button type="button" class="btn-sm btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form action="/estudiante/" method="post">
                                                        <fieldset>
                                                            <div class="modal-body">
                                                                <ol class="list-group list-group-flush">
                                                                    <li class="list-group-item d-flex justify-content-between align-items-start">
                                                                        <div class="m-auto">
                                                                            <label for="matricula" class="fw-bold form-label">Matricula</label>
                                                                            <#if editable>
                                                                                <input type="text" id="matricula" name="matricula" class="form-control" placeholder="Agregar Matricula" required />
                                                                            <#else>
                                                                                <input type="text" id="matricula" name="matricula" class="form-control" value=${estudiante.getMatricula()?c} disabled />
                                                                            </#if>
                                                                        </div>
                                                                    </li>
                                                                    <li class="list-group-item d-flex justify-content-between align-items-start list-group-item-dark">
                                                                        <div class="m-auto">
                                                                            <label for="nombre" class="fw-bold form-label">Nombre</label>
                                                                            <#if editable>
                                                                                <input type="text" id="nombre" name="nombre" class="form-control" placeholder="Agregar Nombre" required />
                                                                            <#else>
                                                                                <input type="text" id="nombre" name="nombre" class="form-control" value=${estudiante.getNombre()} disabled />
                                                                            </#if>
                                                                        </div>
                                                                    </li>
                                                                    <li class="list-group-item d-flex justify-content-between align-items-start">
                                                                        <div class="m-auto">
                                                                            <label for="apellido" class="fw-bold form-label">Apellido</label>
                                                                            <#if editable>
                                                                                <input type="text" id="apellido" name="apellido" class="form-control" placeholder="Agregar Apellido" required />
                                                                            <#else>
                                                                                <input type="text" id="apellido" name="apellido" class="form-control" value=${estudiante.getApellido()} disabled />
                                                                            </#if>
                                                                        </div>
                                                                    </li>
                                                                    <li class="list-group-item d-flex justify-content-between align-items-start list-group-item-dark">
                                                                        <div class="m-auto">
                                                                            <label for="telefono" class="fw-bold form-label">Teléfono</label>
                                                                            <#if editable>
                                                                                <input type="text" id="telefono" name="telefono" class="form-control" placeholder="Agregar Teléfono" required />
                                                                            <#else>
                                                                                <input type="text" id="telefono" name="telefono" class="form-control" value=${estudiante.getTelefono()} disabled />
                                                                            </#if>
                                                                        </div>
                                                                    </li>
                                                                </ol>
                                                            </div>
                                                        </fieldset>
                                                    </form>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                        <button type="button" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target=${"#delete"+estudiante.matricula?c}>Borrar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Delete Estudiante Modal -->
                                        <div class="modal fade" id=${"delete"+estudiante.matricula?c} data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby=${"delete"+estudiante.matricula?c+"Label"} aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id=${"delete"+estudiante.matricula?c+"Label"}>Borrar Estudiante</h5>
                                                        <button type="button" class="btn-sm btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        ¿Esta seguro de borrar al estudiante ${estudiante.matricula?c} con nombre ${estudiante.getNombre()} ${estudiante.getApellido()}?
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                        <a type="button" class="btn btn-sm btn-danger" href=${"/estudiante/delete/"+estudiante.getMatricula()?c}>Borrar</a>
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
                                <td>Total students:</td>
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

    <!-- Agregar Estudiante Modal -->
    <div class="modal fade" id="agregarEstudiante" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="agregarEstudianteLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="agregarEstudianteLabel">Información de Estudiante</h5>
                    <button type="button" class="btn-sm btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/estudiante/agregar" method="post">
                    <fieldset>
                        <div class="modal-body">
                            <ol class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-start">
                                    <div class="m-auto">
                                        <label for="matricula" class="fw-bold form-label">Matricula</label>
                                        <input type="text" id="matricula" name="matricula" class="form-control" placeholder="Agregar Matricula" required />
                                    </div>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-start list-group-item-dark">
                                    <div class="m-auto">
                                        <label for="nombre" class="fw-bold form-label">Nombre</label>
                                        <input type="text" id="nombre" name="nombre" class="form-control" placeholder="Agregar Nombre" required />
                                    </div>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-start">
                                    <div class="m-auto">
                                        <label for="apellido" class="fw-bold form-label">Apellido</label>
                                        <input type="text" id="apellido" name="apellido" class="form-control" placeholder="Agregar Apellido" required />
                                    </div>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-start list-group-item-dark">
                                    <div class="m-auto">
                                        <label for="telefono" class="fw-bold form-label">Teléfono</label>
                                        <input type="text" id="telefono" name="telefono" class="form-control" placeholder="Agregar Teléfono" required />
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </fieldset>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-sm btn-primary">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>

<script type="module" src="/webjars/popper.js/2.9.3/umd/popper.min.js"></script>
<script type="module" src="/webjars/bootstrap/5.1.0/js/bootstrap.min.js" ></script>

</body>
</html>
