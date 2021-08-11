@extends('layouts.appfront')

@section('content')
<div class="container bg-warning pb-5">
    <div class="row">
        <div class="col-sm-12">
            <br>
            <h1 class="text-danger mt-5">CONTACTO</h1>
        </div>

        <div class="col-sm-8 bg-white p-5">
            <h2>DATOS DE CONTACTO</h2>
            <ul>
                <li>Razón Social: {{$config->razonsocial}}</li>
                <li>Dirección: {{$config->direccion}}</li>
                <li>Celular: {{$config->celular}}</li>
                <li>email: {{$config->email}}</li>
            </ul>


            <h2 class="mt-5">FORMULARIO</h2>
            @if (\Session::has('success'))
            <div class="alert alert-success">
                <ul>
                    <li>{{\Session::get('success')}}</li>
                </ul>
            </div>
            @endif


            <form action="/contacto" method="post">
                @csrf
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre"
                        value="{{old('nombre')}}" required>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com"
                        value="{{old('email')}}" required>
                </div>

                <div class="form-group">
                    <label for="subject">Asunto</label>
                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Asunto"
                        value="{{old('subject')}}" required>
                </div>

                <div class="form-group">
                    <label for="mensaje">Mensaje</label>
                    <textarea class="form-control" name="mensaje" id="mensaje" rows="3"></textarea>
                </div>
                <input type="submit" class="btn btn-danger" name="btnenviar" value="ENVIAR MENSAJE">

            </form>
        </div>
        <div class="col-sm-4 bg-light">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d11913.009962906148!2d-76.00456621983486!3d-9.297661642184442!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2spe!4v1623997288457!5m2!1ses-419!2spe"
                width="100%" class="vh-100" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                tabindex="0"></iframe>
        </div>
    </div>
</div>
@endsection