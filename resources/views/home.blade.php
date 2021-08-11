
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-auto">
            <div class="card mdl-shadow--8dp" style="width: 40rem; margin-top:2%; border-radius:10px;">
                <div class="card-body">
                    <div class="card-header row justify-content-center"><h4>{{ __('Bienvenido') }}</h4></div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        {{ __('¡Has iniciado sesión!') }}

                        <a href="/admin/main" class="btn btn-primary float-right">INGRESAR</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
