<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index(){
        $users = User::all();
        return view("admin.usuario.index",compact('users'));
        //return ['users'=>$users];
    }
    public function create(){
        return view('admin.usuario.create');
    }
    public function store(Request $request){

        $user = new User($request->all());
        $user->name=$request->name;
        $user->email=$request->email;
        $user->password = bcrypt($request->password);
        $user->save();
        return redirect('/admin/user');

    }
    public function update(Request $request,$id){

        $user = User::findOrFail($id);
        $user->fill($request->all());
        $user->name=$request->name;
        $user->email=$request->email;
        $user->password = bcrypt($request->password);
        $user->save();
        return redirect('/admin/user');
    }

    public function edit($id){
        $user = User::findOrFail($id);
        return view('admin.usuario.edit',compact('user'));
    }

    /*public function show($id){
        Session::put('user_id',$id);
        return redirect('/admin/producto');
    }*/
}
