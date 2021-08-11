@extends('layouts.config')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-10">

            {!! Form::open(['route'=>['producto.update',$producto],'method'=>'PUT','files'=>true]) !!}

            <div class="jumbotron">
                <p>Actualizar producto</p>
                <hr>
                <div class="form-group">
                    <label for="title">INGRESE TITLE</label>
                    {!! Form::text('title',$producto->title,['class'=>'form-control','maxlength'=>'67']) !!}
                </div>
                <div class="form-group">
                    <label for="description">INGRESE description</label>
                    {!! Form::textarea('description',$producto->description,['class'=>'form-control','maxlength'=>'67','rows'=>'3']) !!}
                </div>

                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    {!! Form::text('nombre',$producto->nombre,['class'=>'form-control','maxlength'=>'100']) !!}
                </div>

                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    {!! Form::textarea('descripcion',$producto->descripcion,['class'=>'form-control']) !!}
                </div>

                <div class="form-group">
                    <label for="orden">INGRESE ORDEN</label>
                    {!! Form::text('orden',$producto->orden,['class'=>'form-control']) !!}
                </div>

                <div class="form-group">
                    <label for="urlfoto">IMAGEN</label> <br>
                    <img src="/img/producto/{{$producto->urlfoto}}" width="900" height="650">
                    {!! Form::file('urlfoto') !!}
                </div>
            </div>
            {!! Form::submit('GUARDAR',['class'=>'btn btn-success']) !!}
            <a href="{{route('producto.index')}}" class="btn btn-danger">Cancelar</a>
            {!! Form::close() !!}
        </div>
    </div>
</div>
<script>
    CKEDITOR.replace( 'descripcion' );
</script>
@endsection
