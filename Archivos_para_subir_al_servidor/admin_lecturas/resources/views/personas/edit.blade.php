@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Abonados</div>
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
                    {!! Form::model($persona, ['route' => ['personas.update', $persona->id],
                    'method' => 'PUT']) !!}

                        @include('personas.partials.form')
                        
                    {!! Form::close() !!}
                </div>

            </div>
            <a href="{{ route('personas.index') }}" 
                    class="btn btn-sm btn-primary pull-left">
                        Regresar
                    </a>
        </div>
    </div>
</div>
@endsection