@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Politicas</div>

                <div class="panel-body">                                        
                    <p><strong>CantidadConsumo</strong>     {{ $politicas->cantidadConsumo }}</p>
                    <p><strong>ValorConsumo</strong>       {{ $politicas->valorConsumo }}</p>
                    <p><strong>ValorExeso</strong>       {{ $politicas->valorExeso }}</p>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection