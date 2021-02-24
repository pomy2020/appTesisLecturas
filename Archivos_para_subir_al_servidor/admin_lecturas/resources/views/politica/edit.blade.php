@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Politicas</div>
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
                    {!! Form::model($politicas, ['route' => ['politica.update', $politicas->id],
                    'method' => 'PUT']) !!}

                        @include('politica.partials.form')
                        
                    {!! Form::close() !!}
                </div>
            </div>
            <a href="{{ route('politica.index') }}" 
                    class="btn btn-sm btn-primary pull-left">
                        Regresar
                    </a>
        </div>
    </div>
</div>
@endsection