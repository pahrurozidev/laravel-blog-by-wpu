@extends('layouts.main')

@section('container')
    <h3>Halaman Post</h3>
    <div class="row justify-content-center">
        <div class="col">
            <div class="card mb-3">
            
            {{-- image --}}
            @if ($post->image)
                <div style="max-height: 350px; overflow: hidden;">
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="mt-3">
                </div>
            @else
                <img src="https://source.unsplash.com/user/erondu/1200x400/?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
            @endif

            {{-- body --}}
            <div class="card-body">
                <h5 class="card-title">{{ $post->title }}</h5>
                <p class="card-text">
                    <small class="text-muted">
                        Author by  
                        <a href="/blog/?author={{ $post->author->username }}">{{ $post->author->name }}</a> in
                        <a href="/blog?category={{ $post->category->slug }}">{{ $post->category->name }}</a>
                        {{ $post->created_at->diffForHumans() }}
                    </small>
                </p>
                <p class="card-text">{!! $post->excerpt !!}</p>
                <p class="card-text">{!! $post->body !!}</p>
                <a href="/blog" class="btn btn-primary">Back To Post</a>
            </div>
        </div>
        </div>
    </div>
@endsection