@extends('layouts.config')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-10">
            <main class="main">
                <section>
                    <!--<ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="main">Escritorio</a></li>
                    </ol>-->
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <video autoplay="autoplay" loop="loop" class="video_background" preload="auto" muted>
                        <source src="/img/Modeling.mp4" type="video/mp4" />
                    </video>
                    <div class="textos">
                        <div>
                            <img src="/img/configuracion/.png">
                        </div>
                        <h2>
                            EMPRESA DE ARTESANIAS PERÚ S.A.
                        </h2>
                        <h3 data-aos="fade-up">Artesanias para momentos especiales</h3>
                    </div>
                </section>
            </main>
        </div>
    </div>
</div>
@endsection
