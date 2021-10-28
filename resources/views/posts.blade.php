@extends('layouts.main')

@section('container')
    <h3 class="mb-5 text-center">{{ $title }}</h3>
    @if ($posts->count())
        <div class="row justify-content-center mb-5">
            <div class="col-md-6">
                <form action="/blog">
                    <div class="input-group mb-3">

                        @if (request('category'))
                            <input type="hidden" name="category" value="{{ request('category') }}">
                        @endif
                        
                        @if (request('author'))
                            <input type="hidden" name="author" value="{{ request('author') }}">
                        @endif

                        <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
                        <button class="btn btn-danger" type="submit">Search</button>
                    </div>
                </form>
            </div>
        </div>
        

        <div class="row text-center mb-5">
            <div class="col">
                <div class="card mb-3 p-0">
                    {{-- image --}}
                    @if ($posts[0]->image)
                        <div style="max-height: 350px; overflow: hidden;">
                            <img src="{{ asset('storage/' . $posts[0]->image) }}" alt="{{ $posts[0]->category->name }}" class="mt-3">
                        </div>
                    @else
                        <img src="https://source.unsplash.com/user/erondu/1200x400/?{{ $posts[0]->category->name }}" class="card-img-top" alt="{{ $posts[0]->category->name }}">
                    @endif

                    <div class="card-body">
                        <h5 class="card-title">{{ $posts[0]->title }}</h5>
                        <p class="card-text">
                            <small class="text-muted">
                                Author by  
                                <a href="/blog?author={{ $posts[0]->author->username }}">{{ $posts[0]->author->name }}</a> in
                                <a href="/blog?category={{ $posts[0]->category->slug }}">{{ $posts[0]->category->name }}</a>
                                {{ $posts[0]->created_at->diffForHumans() }}
                            </small>
                        </p>
                        <p class="card-text">{{ $posts[0]->excerpt }}</p>
                        <a href="/posts/{{ $posts[0]->slug }}" class="btn btn-primary">Read more</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row d-flex justify-content-center">
            @foreach ($posts->skip(1) as $post)
                <div class="card mb-5 mx-3 p-0" style="width: 18rem;">
                    {{-- image --}}
                    @if ($post->image)
                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}">
                    @else
                        <img src="https://source.unsplash.com/user/erondu/1200x400/?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                    @endif
                    <div class="card-body">
                        <h5 class="card-title">{{ $post->title }}</h5>
                        <p class="card-text">
                            <small class="text-muted">
                                Author by  
                                <a href="/blog?author={{ $post->author->username }}">{{ $post->author->name }}</a> in
                                <a href="/blog?category={{ $post->category->slug }}">{{ $post->category->name }}</a>
                                {{ $posts[0]->created_at->diffForHumans() }}
                            </small>
                        </p>
                        <p class="card-text">{{ $post->excerpt }}</p>
                        <a href="/posts/{{ $post->slug }}" class="btn btn-primary">Read more</a>
                    </div>
                </div>
            @endforeach
        </div>
    @else
        <p class="text-center">Posts Not Found!</p>
    @endif

    <div class="d-flex justify-content-end mb-5">
        {{ $posts->links() }}
    </div>

@endsection