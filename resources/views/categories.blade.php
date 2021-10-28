@extends('layouts.main')

@section('container')
        <div class="row mt-5">
            @foreach ($categories as $category)
            <div class="col-md-4 effect">
                <div class="card bg-dark text-white box">
                    <img src="https://source.unsplash.com/user/erondu/200x100?{{ $category->name }}" class="card-img img" alt="..." width="100">
                    <div class="card-img-overlay flex-fill bd-highligh" style="display: flex; align-items: center; justify-content: center" style="background: rgba(0, 0, 0, .7)">
                        <h2 class="card-title">
                            <a href="/blog?category={{ $category->slug }}" class="text-decoration-none text-white" >{{ $category->name }}</a>
                        </h2>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
@endsection