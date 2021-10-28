<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\User;

class PostController extends Controller
{
    public function index()
    {

        $title = '';

        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->name;
        }

        if (request('author')) {
            $author = User::firstWhere('username', request('author'));
            $title = ' by ' . $author->name;
        }

        return view('posts', [
            'title' => 'All Post ' . $title,
            'active' => 'post',
            'posts' => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(7)->withQueryString()
        ]);
    }

    public function post(Post $post)
    {
        return view('post', [
            'title' => $post->title,
            'active' => 'post',
            'post' => $post
        ]);
    }

    public function author(User $author)
    {
        return view('posts', [
            'title' => $author->name,
            'active' => 'post',
            'posts' => $author->posts
        ]);
    }

    public function category(Category $category)
    {
        return view('posts', [
            'title' => $category->name,
            'active' => 'post',
            'posts' => $category->posts
        ]);
    }
}
