@extends('dashboard.layouts.main')

@section('container')
<div class="row justify-content-cente">
    <div class="col-lg-9">        
            <h3 class="mt-3 mb-4">{{ $post->title }}</h3>
            <div>
                <a href="/dashboard/posts" class="btn btn-info"><span data-feather="eye"></span> Back all my posts</a>
                <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
                {{-- delete --}}
                <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                    @method('delete')
                    @csrf
                    <button class="btn btn-danger" onclick="return confirm('Are you sure ?')"><span data-feather="x-circle"></span> Delete</button>
                </form>
            </div>
            
            {{-- image --}}
            @if ($post->image)
                <div style="max-height: 350px; overflow: hidden;">
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="mt-3">
                </div>
            @else
                <img src="https://source.unsplash.com/user/erondu/1000x400/?{{ $post->category->name }}" class="mt-3" alt="{{ $post->category->name }}">
            @endif

            <div class="-body">
                {{-- excerpt --}}
                <p>{!! $post->excerpt !!}</p>
                {{-- body --}}
                <p>{!! $post->body !!}</p>
            </div>
        </div>
    </div>
@endsection

