@extends('layouts.config')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-6">
        <br/>
            {!! Form::open(['route'=>['user.store'],'method'=>'POST','files'=>true]) !!}

            <div class="jumbotron">
                <p>Registro de usuario</p>
                <hr>
                <div class="form-group">
                    <label for="name">INGRESE Nombre</label>
                    {!! Form::text('name',null ,['class'=>'form-control','maxlength'=>'50', 'required']) !!}
                </div>
                <div class="form-group">
                    <label for="email">INGRESE Correo</label>
                    
                    {!! Form::email('email',null ,['class'=>'form-control','maxlength'=>'50', 'required']) !!}
                </div>

                <div class="form-group">
                    <label for="password">INGRESE Contreseña</label>
                    {!! Form::password('password', ['class'=>'form-control','maxlength'=>'16','minlength'=>'6', 'required']) !!}
                </div>
                <div class="form-group">
                    <label for="password">CONFIRMAR Contreseña</label>
                    {!! Form::password('password_confirmation', ['class'=>'form-control','maxlength'=>'16','minlength'=>'6', 'required']) !!}
                </div>
            </div>
            
            <button type="submit" class='btn btn-success'>GUARDAR</button>
            <a href="{{route('user.index')}}" class="btn btn-danger">Cancelar</a>
            {!! Form::close() !!}
        </div>
    </div>
</div>
<script>
    CKEDITOR.replace( 'descripcion' );
</script>
@endsection