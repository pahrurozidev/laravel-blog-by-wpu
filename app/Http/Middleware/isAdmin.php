<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class isAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {

        // check => belum login
        // if (!auth()->check() || auth()->user()->username != 'pahrurozidev') {
        //     abort(403);
        // }

        if (!auth()->check() || auth()->user()->is_admin) {
            abort(403);
        }

        return $next($request);
    }
}
