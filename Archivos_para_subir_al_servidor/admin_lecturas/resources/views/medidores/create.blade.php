@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Medidores de consumo de agua</div>
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
                    {{ Form::open(['route' => 'medidores.store','files' => 'true']) }}

                        @include('medidores.partials.formnew')
                        
                    {{ Form::close() }}
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