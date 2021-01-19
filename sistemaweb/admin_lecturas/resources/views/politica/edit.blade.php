@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Politicas</div>

                <div class="panel-body">                    
                    {!! Form::model($politicas, ['route' => ['politica.update', $politicas->id],
                    'method' => 'PUT']) !!}

                        @include('politica.partials.form')
                        
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection