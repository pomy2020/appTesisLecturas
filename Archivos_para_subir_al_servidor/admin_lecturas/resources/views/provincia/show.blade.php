@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Provincia</div>

                <div class="panel-body">                                        
                    <p><strong>Nombre</strong>     {{ $provincia->nombre }}</p>
                    <p><strong>Poblacion</strong>       {{ $provincia->poblacion }}</p>
                    <p><strong>Parroquias</strong>       {{ $provincia->parroquias }}</p>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection