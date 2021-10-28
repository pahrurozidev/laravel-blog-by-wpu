@extends('layouts.main')

@section('container')

    <div class="row justify-content-center">
        <div class="col-lg-5">

            @if (session()->has('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('success') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif

            @if (session()->has('loginError'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ session('loginError') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            @endif

            <main class="form-signin">
                <h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>
                <form action="/login" method="POST">
                    @csrf

                    <div class="form-floating">
                        <input type="email" class="form-control @error('email')
                            is-invalid
                        @enderror" name="email" id="email" placeholder="name@example.com" required autofocus value="{{ old('email') }}">
                        <label for="email">Email address</label>
                        @error('email')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>

                    <div class="form-floating">
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                        <label for="password">Password</label>
                    </div>

                    <button class="w-100 btn btn-lg btn-danger mt-2" type="submit">Login</button>
                </form>
                <small class="d-block text-center mt-4">Not resgistered ?
                    <a href="/register">Register Now !</a>
                </small>
            </main>
        </div>
    </div>


@endsection