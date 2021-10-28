@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Halaman Categories</h1>
    </div>

    {{-- alert --}}
    @if (session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show col-lg-6" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    <div class="table-responsive col-lg-6">
        <a href="/dashboard/categories/create" class="btn btn-primary mb-3">Create New Categories</a>
        <table class="table table-striped table-lg">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Category Name</th>
                    <th scope="col" class="text-center">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($categories as $post)
                    <tr>
                        <td class="">{{ $loop->iteration }}</td>
                        <td>{{ $post->name }}</td>
                        <td class="text-center">
                            {{-- detail --}}
                            <a href="/dashboard/categories/{{ $post->slug }}" class="badge btn-info"><span data-feather="eye"></span></a>
                            {{-- edit --}}
                            <a href="/dashboard/categories/{{ $post->slug }}/edit" class="badge btn-warning"><span data-feather="edit"></span></a>
                            {{-- delete --}}
                            <form action="/dashboard/categories/{{ $post->slug }}" method="post" class="d-inline">
                                @method('delete')
                                @csrf
                                <button class="badge bg-danger border-0" onclick="return confirm('Are you sure ?')"><span data-feather="x-circle"></span></button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection