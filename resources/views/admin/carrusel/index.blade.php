@extends('layouts.config')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-10">
            <br>
            <p>Carrusuel</p>
            <a href="{{route('carrusel.create')}}" class="btn btn-primary float-right">NUEVO</a>
            <table class="table table-striped">
                <thead>
                    <th>Orden</th>
                    <th>Imagen</th>
                    <th>Acción</th>
                </thead>
                <tbody>
                    @forelse ($carrusels as $item)
                    <tr>
                        <td>{{$item->orden}}</td>
                        <td><img src="/img/carrusel/{{$item->urlfoto}}" width="300"></td>
                        <td>
                            <a href="{{ route('carrusel.edit',$item->id)}}" class="btn btn-warning">EDITAR</a>
                            {!! Form::open(['method'=>'DELETE','route'=>['carrusel.destroy',$item->id],'style'=>'display:inline']) !!}
                            {!! Form::submit('ELIMINAR',['class'=>'btn btn-danger','onclick'=>'return confirm("ESTA SEGURO DE ELIMINAR")']) !!}
                            {!! Form::close() !!}
                        </td>
                    </tr>
                    @empty

                    @endforelse
                </tbody>

            </table>
        </div>
    </div>
</div>
@endsection
