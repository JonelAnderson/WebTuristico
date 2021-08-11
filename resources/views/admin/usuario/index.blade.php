@extends('layouts.config')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.submenu')
        <div class="col-sm-10">
            <br/>
            <p>Usuarios</p>

            <a href="{{route('user.create')}}" class="btn btn-primary float-right">NUEVO</a>
            <table class="table table-striped">
                <thead>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Acciones</th>
                </thead>
                <tbody>
                    @forelse ($users as $item)
                    <tr>
                        <td>{{$item->id}}</td>
                        <td>{{$item->name}}</td>
                        <td>{{$item->email}}</td>
                        <td>
                        <a href="{{ route('user.edit',$item->id)}}" class="btn btn-warning">EDITAR</a>
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
