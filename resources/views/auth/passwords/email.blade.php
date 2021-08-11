@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-auto">
            <div class="card mdl-shadow--8dp" style="width: 21rem; margin-top:5%; border-radius:20px;">
                <div class="card-body">
                    <figure class="card-title text-center text-green">
                        <img src="../img/passreset.png" width="100" height="100" alt="">
                    </figure>
                    <h5 class="card-title text-center">Restablecer Contraseña</h5>
                    <br/>
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <form method="POST" action="{{ route('password.email') }}" autocomplete="off">
                            @csrf
                        <div class="form-group">
                            <div class="input-group">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Dirección de correo" autofocus>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Restablecer contraseña</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
