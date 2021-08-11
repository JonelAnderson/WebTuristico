@extends('layouts.config')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-10">
        <br>
        <p>Lista de productos</p>
            <a href="{{route('producto.create')}}" class="btn btn-primary">NUEVO</a>&nbsp;&nbsp;
            <a href="{{route('categoria.index')}}" class="btn btn-primary float-right">Ir a categoria</a>
            
            <table class="table table-striped">
                <thead>
                    <th>Orden</th>
                    <th>Nombre</th>                
                    <th>Acción</th>
                </thead>
                <tbody>
                    @forelse ($productos as $item)
                    <tr>
                        <td>{{$item->orden}}</td>
                        <td>{{$item->nombre}}</td>
                        <td>
                            <a href="{{ route('producto.edit',$item->id)}}" class="btn btn-warning">EDITAR</a>
                            {!! Form::open(['method'=>'DELETE','route'=>['producto.destroy',$item->id],'style'=>'display:inline']) !!}
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
