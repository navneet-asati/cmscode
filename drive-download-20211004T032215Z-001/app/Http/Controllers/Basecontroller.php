<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Post;

class Basecontroller extends Controller
{
    public function home()
    {
        $home = Page::where('page_title','home')->get();
        $post = Post::where('page_title','home')->get();
    	return view('home',['home'=>$home,'post'=>$post]);
    }

    public function services()
    {
    	return view('service');
    }

    public function company()
    {
    	return view('company');
    }

    public function contact_us()
    {
    	return view('contact');
    }
}
