@extends('auth.contenido')

@section('login')
<div class="container">
    <section class="sign-in">
        <div class="main-page">
            <div class="name">
            <h1>Bienvenido</h1>
            Artesanias Perú Bicentenario.
            </div>
            <div class="form-btns">
                <button class="s-btn">Iniciar sesión</button>
                <!--<button class="f-btn">Sign In with Facebook</button>-->
                <a class="new-btn" href="#">Crear cuenta ?</a>
            </div>
            <div class="cancel">
            <a href="#"><i class="fas fa-times" title="cerrar"></i></a>
            </div>
        </div>

        <div class="sign-in-page">
            <form method="POST" action="{{ route('login')}}" autocomplete="off">
            {{ csrf_field() }}
                <div {{$errors->has('email' ? 'is-invalid' : '')}}>
                    <input placeholder="Email" value="{{old('email')}}" name="email" id="email" type="email" autocomplete="off"/>
                    {!!$errors->first('email','<span class="invalid-feedback">:message</span>')!!}
                </div>
                <div {{$errors->has('password' ? 'is-invalid' : '')}}>
                    <input placeholder="Password" type="password" value="{{old('password')}}" name="password" id="password" />
                    {!!$errors->first('password','<span class="invalid-feedback">:message</span>')!!}
                </div>
                <button type="submit">Ingresar</button>
                <div>
                @if (Route::has('password.request'))
                    <div class="text-center mt-5">
                        <a class="btn btn-link" href="{{ route('password.request') }}">
                            {{ __('¿Olvidaste tu contraseña?') }}
                        </a>
                    </div>
                @endif
                </div>
            </form>
        </div>

        <div class="sign-up-page">
            @if (session('status'))
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
            @endif
            <form method="POST" action="{{ route('register') }}" autocomplete="off">
            {{ csrf_field() }}
                <div class="form-control @error('name') is-invalid @enderror">
                    <input id="name" type="text"  name="name" value="{{ old('name') }}" placeholder="Nombre" autocomplete="off" required />
                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="form-control @error('email') is-invalid @enderror">
                    <input id="email" type="email" name="email" value="{{ old('email') }}"  placeholder="Email" autocomplete="off" required />
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="form-control @error('password') is-invalid @enderror">
                    <input id="password" type="password" name="password" placeholder="Contraseña" required />
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div>
                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Confirmar contraseña" required/>
                </div>
                    <button type="submit">Registrarse</button>
            </form>
        </div>
    </section>
</div>
@endsection
