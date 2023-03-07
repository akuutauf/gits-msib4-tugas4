<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class IndexPage extends Controller
{
    public function index()
    {
        $payload['user'] = User::orderBy('name', 'asc')->get();
        return view('table', $payload);
    }
}
