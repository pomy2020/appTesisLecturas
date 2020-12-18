
<div class="form-group">
	{{ Form::label('cantidadConsumo', 'cantidadConsumo') }}
	{{ Form::text('cantidadConsumo', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::label('valorConsumo', 'valorConsumo') }}
	{{ Form::text('valorConsumo', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::label('valorExeso', 'valorExeso') }}
	{{ Form::text('valorExeso', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::submit('Guardar', ['class' => 'btn btn-sm btn-primary']) }}
</div>