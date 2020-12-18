
<div class="form-group">
	{{ Form::label('Nombre', 'Nombre') }}
	{{ Form::text('nombre', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::label('Poblacion', 'Poblacion') }}
	{{ Form::text('poblacion', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::label('parroquias', 'Parroquias') }}
	{{ Form::text('parroquias', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::submit('Guardar', ['class' => 'btn btn-sm btn-primary']) }}
</div>