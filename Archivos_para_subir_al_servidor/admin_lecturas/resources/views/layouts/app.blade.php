<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- aqui estamos llamando al nombre de la app web -->
    <title>{{ config('app.name') }}</title>

    <!-- En este archivo tenemos persolizado nustras hojas de estilos, para manejar el ccolor, el fondo y el tipo de letra -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body class="color">

    <div class="colorfondo" id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/') }}">
                        SISTEMA WEB de la<br>
                        Junta de Agua de Zumbahuayco
                    </a>
                </div>
               <!--  -->
                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                     
                   <!--Sí el usuario que está autenticado, tiene permiso para el index de persona, el usuario puede listar los abonados -->
                    <ul class="nav navbar-nav">
                        @can('personas.index')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('personas.index') }}">Lista de Abonados</a>
                        </li>
                        @endcan
                        <!--Sí el usuario que está autenticado, tiene permiso para el index de medidores, el usuario puede listar los medidores -->
                        @can('medidores.index')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('medidores.index') }}">Medidores</a>
                        </li>
                        @endcan
                        <!--Sí el usuario que está autenticado, tiene permiso para el index de lecturas, el usuario puede listar las lecturas -->
                        @can('lecturas.index')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('lecturas.index') }}">Lecturas</a>
                        </li>
                        @endcan
                        <!--Sí el usuario que está autenticado, tiene permiso para el index de ususarios, el usuario puede listar los usuarios -->
                        @can('users.index')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('users.index') }}">Usuarios</a>
                        </li>
                        @endcan
                        <!--Sí el usuario que está autenticado, tiene permiso para el index de roles, el usuario puede listar los roles -->
                        @can('roles.index')
                        <li class="nav-item">                            
                            <a class="nav-link" href="{{ route('roles.index') }}">Roles</a>
                        </li>
                        @endcan
                        <!--Sí el usuario que está autenticado, tiene permiso para el index de politicas, el usuario puede listar las politicas -->
                         @can('politica.index')
                        <li class="nav-item">                            
                            <a class="nav-link" href="{{ route('politica.index') }}">Politicas</a>
                        </li>
                        @endcan
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @guest
                            <li><a href="{{ route('login') }}">Login</a></li>
                            <li><a href="{{ route('register') }}">Register</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>
        
        @if (session('info'))
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="alert alert-success">
                        {{ session('info') }}
                    </div>
                </div>
            </div>
        </div>
        @endif

        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
