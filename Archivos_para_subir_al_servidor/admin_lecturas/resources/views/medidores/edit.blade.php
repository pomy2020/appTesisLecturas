@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Datos de Abonado</div>
                @if ($errors->any())
                    <div class="alert alert-danger">
                         <ul>
                            @foreach ($errors->all() as $error)
                                 <li>{{ $error }}</li>
                            @endforeach
                         </ul>
                    </div>
                @endif
                <div class="panel-body">
                    {!! Form::model($abonado, ['route' => ['medidores.edit', $medidor->id],
                    'method' => 'GET']) !!} 
                        @include('medidores.partials.formAbonado')
                        @if($abonado != null)
                            Nombre: {{$abonado->nombre}} 
                            <br>
                            Apellido: {{$abonado->apellido}} 
                        @endif
                    {!! Form::close() !!}
                </div>
                <div class="panel-heading">Medidores de consumo de agua</div>
                <div class="panel-body">                    
                    {!! Form::model($medidor, ['route' => ['medidores.update', $medidor->id],
                    'method' => 'PUT','files' => 'true']) !!} 
                        @include('medidores.partials.form')
                    {!! Form::close() !!}
                </div>
            </div>
            <a href="{{ route('medidores.index') }}" 
                    class="btn btn-sm btn-primary pull-left">
                        Regresar
                    </a>
        </div>
    </div>
</div>
@endsection