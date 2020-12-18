@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Politicas
                    <nav class="navbar navbar-light float-right">
  <form class="form-inline">

   
  </form>
</nav>
                    @can('politica.create')
                    <a href="{{route('politica.create') }}" 
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
                                <th>CantidadConsumo</th>
                                <th>ValorConsumo</th>
                                <th>ValorExeso</th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($politicas as $politica)
                            <tr>
                                <td>{{ $politica->id }}</td>
                                <td>{{ $politica->cantidadConsumo }}</td>
                                 <td>{{ $politica->valorConsumo }}</td>
                                 <td>{{ $politica->valorExeso }}</td>
                                @can('politica.show')
                                <td width="10px">
                                    <a href="{{ route('politica.show', $politica->id) }}" 
                                    class="btn btn-sm btn-default">
                                        ver
                                    </a>
                                </td>
                                @endcan
                                @can('politica.edit')
                                <td width="10px">
                                    <a href="{{ route('politica.edit', $politica->id) }}" 
                                    class="btn btn-sm btn-default">
                                        editar
                                    </a>
                                </td>
                                @endcan
                                @can('politica.destroy')
                                <td width="10px">
                                    {!! Form::open(['route' => ['politica.destroy', $politica->id], 
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
                    {{ $politicas->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection