@extends('layouts.config')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-6">
        <br/>
            {!! Form::open(['route'=>['user.update',$user],'method'=>'PUT','files'=>true]) !!}

            <div class="jumbotron">
                <p>Actualizar datos del usuario</p>
                <hr>
                <div class="form-group">
                    <label for="name">Nombre</label>
                    {!! Form::text('name',$user->name,['class'=>'form-control','maxlength'=>'67','required']) !!}
                </div>
                <div class="form-group">
                    <label for="email">Correo</label>
                    {!! Form::email('email',$user->email,['class'=>'form-control','maxlength'=>'50']) !!}
                </div>

                <div class="form-group">
                    <label for="password">Contraseña</label>
                    {!! Form::password('password',['class'=>'form-control','maxlength'=>'6']) !!}
                    <p>Deje en blanco el campo contraseña si no desea modificarla.</p>
                </div>
            </div>
            <button type="submit" class='btn btn-success'>GUARDAR</button>
            <a href="{{route('user.index')}}" class="btn btn-danger">Cancelar</a>
            {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection
