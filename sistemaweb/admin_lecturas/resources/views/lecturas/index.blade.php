@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    lecturas
                                  
                    <a href="{{ route('lecturas.pdf',[$mes,$anio,$sector,$todos]) }}" class="btn btn-sm btn-primary pull-right">
                        Reporte en PDF
                    </a>    
                </div>
                <form>
                <div class="panel-heading">
                 <label for="mes">Seleccione mes:</label>
<!-- Aquí seleccionamos un mes para buscar las lecturas -->
<select class="form-control form-control-sm" name="mes" id="mes">
  <option value="1">Enero</option>
  <option value="2">Febrero</option>
  <option value="3">Marzo</option>
  <option value="4">Abril</option>
   <option value="5">Mayo</option>
  <option value="6">Junio</option>
  <option value="7">Julio</option>
  <option value="8">Agosto</option>
   <option value="9">Septiembre</option>
  <option value="10">Octubre</option>
  <option value="11">Noviembre</option>
  <option value="12">Diciembre</option>
</select> 

<!-- Aquí seleccionamos el año para buscar  las lecturas -->
<label for="anio">Seleccione año:</label>
<select class="form-control form-control-sm" name="anio" id="anio">
  <option value="2020">2020</option>
  <option value="2021">2021</option>
  <option value="2022">2022</option>
  <option value="2023">2023</option>
</select> 

<!-- Aquí seleccionamos el sector para buscar las lecturas -->
<label for="sector">Seleccione sector:</label>
<select class="form-control form-control-sm" name="sector" id="sector">
  <option value="Portete">Portete</option>
  <option value="Pedregal">Pedregal</option>
  <option value="La Unión">La Unión</option>
  <option value="Rayoloma">Rayoloma</option>
</select> 

<!-- Aquí damos clik en ver todas, si queremos todas las lecturas -->
<div class="form-check">
    <input type="checkbox" class="form-check-input" id="todos" name="todos">
    <label class="form-check-label" for="todos">Ver Todas las lecturas</label>
  </div>

  <!-- Este es el boton para buscar, bien sea por mes, año, y sector, o todas -->
 <button type="submit" class="btn btn-sm btn-primary pull-right">Buscar</button>
 </div>
                </form>
                
                <div class="panel-body">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th width="10px">ID</th>
                                <th>Fecha</th>
                                <th>Nombre</th>
                                <th>Anterior</th>
                                <th>Actual</th>
                                <th>Consumo</th>
                                <th>Básico</th>
                                <th>Exceso</th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($lecturas as $lectura)
                            <tr>
                                <td>{{ $lectura->id }}</td>
                                <td>{{ $lectura->fecha }}</td>
                                <td>{{ $lectura->nombre }} {{ $lectura->apellido }}</td>
                                <td>{{ $lectura->anterior }}</td>
                                <td>{{ $lectura->actual }}</td>
                                <td>{{ $lectura->consumo }}</td>
                                <td>{{ $lectura->basico }}</td>
                                <td>{{ $lectura->exceso }}</td>
                                @can('lecturas.show')
                                <td width="10px">
                                    <a href="{{ route('lecturas.show', $lectura->id) }}" 
                                    class="btn btn-sm btn-default">
                                        ver
                                    </a>
                                </td>
                                @endcan
                                
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $lecturas->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection