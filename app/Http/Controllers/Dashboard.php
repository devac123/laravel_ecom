<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Dashboard extends Controller
{
    public function index()
    {
        $userId = 1; 
        $data = [
            "username" => "admin",
            "userToken" => "usertoken"
        ];
        return view('dashboard',$data);
    }
    public function addproduct(){
        
    }
}
