<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function showLoginForm()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $this->validateLogin($request);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password, 'tipo_usuario' => 1])) {
            return redirect('/admin/main');
        }

        return back()
            ->withErrors(['email' => trans('')])
            ->withErrors(['password' => trans('')])
            ->withInput(request(['email', 'password']));

    }

    protected function validateLogin(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|string',
            'password' => 'required|string',
        ]);

    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        return redirect('/');
    }

}
