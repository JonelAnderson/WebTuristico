@extends('layouts.config')
@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-10">
            {!! Form::open(['route'=>['carrusel.update',$carrusel],'method'=>'PUT','files'=>true]) !!}
            <div class="jumbotron">
                <p>Actualizar Carrusuel</p>
                <hr>
                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    {!! Form::text('descripcion',$carrusel->descripcion,['class'=>'form-control','maxlength'=>'67']) !!}
                </div>
                <div class="form-group">
                    <label for="link">INGRESE LINK</label>
                    {!! Form::text('link',$carrusel->link ,['class'=>'form-control']) !!}
                </div>
                <div class="form-group">
                    <label for="orden">INGRESE ORDEN</label>
                    {!! Form::number('orden',$carrusel->orden,['class'=>'form-control']) !!}
                </div>
                <div class="form-group">
                    <label for="urlfoto">IMAGEN</label> <br>
                    <img src="/img/carrusel/{{$carrusel->urlfoto}}">
                    {!! Form::file('urlfoto') !!}
                </div>
            </div>
            {!! Form::submit('GUARDAR',['class'=>'btn btn-success']) !!}
            <a href="{{route('carrusel.index')}}" class="btn btn-danger">Cancelar</a>
            {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection
