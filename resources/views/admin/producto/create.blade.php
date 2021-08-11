@extends('layouts.config')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-10">

            {!! Form::open(['route'=>['producto.store'],'method'=>'POST','files'=>true]) !!}

            <div class="jumbotron">
                <p>Registro de nuevo producto</p>
                <hr>
                <div class="form-group">
                    <label for="title">INGRESE TITLE</label>
                    {!! Form::text('title',null ,['class'=>'form-control','maxlength'=>'67']) !!}
                </div>
                <div class="form-group">
                    <label for="description">INGRESE DESCRIPTION</label>
                    {!! Form::textarea('description',null ,['class'=>'form-control','maxlength'=>'155','rows'=>'3']) !!}
                </div>

                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    {!! Form::text('nombre',null ,['class'=>'form-control','maxlength'=>'67']) !!}
                </div>

                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    {!! Form::textarea('descripcion',null ,['class'=>'form-control']) !!}
                </div>

                <div class="form-group">
                    <label for="orden">INGRESE ORDEN</label>
                    {!! Form::text('orden',null ,['class'=>'form-control']) !!}
                </div>

                <div class="form-group">
                    <label for="urlfoto">IMAGEN</label> <br>
                    <!--<img src="../../img/camara.png">-->
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
