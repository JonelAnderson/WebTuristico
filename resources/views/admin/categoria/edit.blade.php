@extends('layouts.config')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-10">

            {!! Form::open(['route'=>['categoria.update',$categoria],'method'=>'PUT','files'=>true]) !!}

            <div class="jumbotron">
                <p>Actualizar categoria</p>
                <hr>
                <div class="form-group">
                    <label for="title">INGRESE TITLE</label>
                    {!! Form::text('title',$categoria->title,['class'=>'form-control','maxlength'=>'67']) !!}
                </div>
                <div class="form-group">
                    <label for="description">INGRESE description</label>
                    {!! Form::textarea('description',$categoria->description,['class'=>'form-control','maxlength'=>'155','rows'=>'3']) !!}
                </div>

                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    {!! Form::text('nombre',$categoria->nombre,['class'=>'form-control','maxlength'=>'100']) !!}
                </div>

                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    {!! Form::textarea('descripcion',$categoria->descripcion,['class'=>'form-control']) !!}
                </div>

                <div class="form-group">
                    <label for="orden">INGRESE ORDEN</label>
                    {!! Form::text('orden',$categoria->orden,['class'=>'form-control']) !!}
                </div>

                <div class="form-group">
                    <label for="urlfoto">IMAGEN</label> <br>
                    <img src="/img/categoria/{{$categoria->urlfoto}}" width="1000">
                    {!! Form::file('urlfoto') !!}
                </div>
            </div>
            {!! Form::submit('GUARDAR',['class'=>'btn btn-success']) !!}
            <a href="{{route('categoria.index')}}" class="btn btn-danger">Cancelar</a>
            {!! Form::close() !!}
        </div>
    </div>
</div>
<script>
    CKEDITOR.replace( 'descripcion' );
</script>
@endsection
