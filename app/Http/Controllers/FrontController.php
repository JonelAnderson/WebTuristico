<?php

namespace App\Http\Controllers;

use App\Models\Carrusel;
use App\Models\Categoria;
use App\Models\Empresa;
use App\Models\Post;
use App\Models\Producto;
use Illuminate\Http\Request;
use Mail;

//use Redirect:

class FrontController extends Controller
{
    public function index()
    {
        $carrusel = Carrusel::orderBy('orden', 'asc')->get();
        $producto = Producto::orderBy('visitas', 'desc')
            ->take(3)
            ->get();
        $posts = Post::orderBy('created_at', 'desc')
            ->take(3)
            ->get();
        return view('welcome', compact('carrusel', 'producto', 'posts'));
    }

    public function empresa()
    {
        $empresa = Empresa::find(1);
        return view('front.empresa', compact('empresa'));
    }

    public function artesanias()
    {
        $categorias = Categoria::all();
        return view('front.categorias', compact('categorias'));
    }

    public function categoria($categoria)
    {
        $categoria = Categoria::whereSlug($categoria)->first();
        return view('front.categoria', compact('categoria'));
    }
    public function producto($categoria, $producto)
    {
        $producto = Producto::whereSlug($producto)->first();
        return view('front.producto', compact('producto'));
    }

    public function blog()
    {
        $posts = Post::all();
        return view('front.posts', compact('posts'));
    }

    public function post($post)
    {
        $post = Post::whereSlug($post)->first();
        $post->increment('visitas');
        return view('front.post', compact('post'));
    }

    public function contacto()
    {
        return view('front.contacto');
    }

    public function contactoenvio(Request $r)
    {
        if (!empty($r)) {
            $nombre = $_POST['nombre'];
            $email = $_POST['email'];
            $subject = $_POST['subject'];
            $mensaje = $_POST['mensaje'];
            if (Mail($email, 'ASUNTO', $mensaje)) {
                $resultado = 'Gracias!!!. se envió tu mensaje';
            } else {
                $resultado = 'No se pudo enviar tu mensaje';
            }
            return redirect()
                ->back()
                ->with('success', $resultado);
        } else {
            return redirect()
                ->back()
                ->with('success', 'NO SE PUDO ENVIA EL MENSAJE');
        }
    }
}