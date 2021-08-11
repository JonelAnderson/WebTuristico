<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="/img/configuracion/_favicon.png">
    <!-- Id for Channel Notification -->
    <meta name="userId" content="{{ Auth::check() ? Auth::user()->id : ''}}">

    <title>ARTESANIAS</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Icons -->
    <link href="#" rel="stylesheet">
    <link rel="stylesheet" href="/css/bootstrap.min.css">

    <link rel="stylesheet" href="/css/config/style.css">
    <link rel="stylesheet" href="/css/config/font-awesome.min.css">



    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
    <div id="app">
        <header class="app-header navbar">
            <button class="navbar-toggler mobile-sidebar-toggler d-lg-none mr-auto" type="button">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button">
                <span class="navbar-toggler-icon"></span>
            </button>
            <ul class="list-group navbar-nav d-md-down-none">
                <li class="nav-item px-3">
                    <a class="nav-link" href="/admin/main">Escritorio</a>
                </li>
            </ul>
            <ul class="nav navbar-nav ml-auto">
                <notification :notifications="notifications"></notification>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button"
                        aria-haspopup="true" aria-expanded="false">
                        <img src="/img/033.png" class="img-avatar">
                        <span class="d-md-down-none">{{Auth::user()->name}} </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-header text-center">
                            <strong>Cuenta</strong>
                        </div>
                        <a class="dropdown-item" href="#">
                            <i class="fa fa-user"></i>
                            Perfil
                        </a>
                        <a class="dropdown-item" href="{{ route('logout') }}"
                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            <i class="fa fa-lock"></i> Cerrar sesión</a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </div>
                </li>
            </ul>
        </header>
        <div class="app-body">
            @yield('content')
            @include('sweetalert::alert')
        </div>
    </div>
    <br>
    <br>
    <footer class="text-center">
        Artesanias Peruanas:&nbsp;&nbsp;
        <small>Copyright &copy; 2021 Anderson</small>
    </footer>
    <!--<footer class="app-footer">
        <span>All Rights Reserved  © Copyright by<a href="https://www.facebook.com/" target="_Black"> Anderson</a> 2021</span>

        <span class="ml-auto">Desarrollado por <a href="https://www.facebook.com/" target="_Black"><strong>Dioner</strong></a></span>

    </footer>-->
    <script src="/js/bootstrap.min.js"></script>

    <script src="/js/config/jquery.min.js"></script>
    <script src="/js/config/pace.min.js"></script>
    <script src="/js/config/popper.min.js"></script>
    <script src="/js/config/template.js"></script>

    <script src="https://cdn.ckeditor.com/4.15.0/standard/ckeditor.js"></script>


</body>

</html>