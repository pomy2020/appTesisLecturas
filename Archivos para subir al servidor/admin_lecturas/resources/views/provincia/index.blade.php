@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Provincias
                    <nav class="navbar navbar-light float-right">
  <form class="form-inline">

    <input name="buscar" class="form-control mr-sm-2" type="search" placeholder="Buscar por nombre" aria-label="Search">

       <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
  </form>
</nav>
                    @can('provincia.create')
                    <a href="{{route('provincia.create') }}" 
                    class="btn btn-sm btn-primary pull-right">
                        Crear
                    </a>
                    @endcan
                </div>

                <div class="panel-body">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th width="10px">ID</th>
                                <th>Nombre</th>
                                <th>Poblacion</th>
                                <th>Parroquia</th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($provincias as $provincia)
                            <tr>
                                <td>{{ $provincia->id }}</td>
                                <td>{{ $provincia->nombre }}</td>
                                 <td>{{ $provincia->poblacion }}</td>
                                 <td>{{ $provincia->parroquia }}</td>
                                @can('provincia.show')
                                <td width="10px">
                                    <a href="{{ route('provincia.show', $provincia->id) }}" 
                                    class="btn btn-sm btn-default">
                                        ver
                                    </a>
                                </td>
                                @endcan
                                @can('provincia.edit')
                                <td width="10px">
                                    <a href="{{ route('provincia.edit', $provincia->id) }}" 
                                    class="btn btn-sm btn-default">
                                        editar
                                    </a>
                                </td>
                                @endcan
                                @can('provincia.destroy')
                                <td width="10px">
                                    {!! Form::open(['route' => ['provincia.destroy', $provincia->id], 
                                    'method' => 'DELETE']) !!}
                                        <button class="btn btn-sm btn-danger">
                                            Eliminar
                                        </button>
                                    {!! Form::close() !!}
                                </td>
                                @endcan
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $provincias->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection