<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;
use App\Product;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function getallservices(){
        $productID = auth()->user()->product_id;
        return $services = DB::table('products')
            ->join('services', 'products.id', '=', 'services.product_id')
            ->join('codes', 'services.id', '=', 'codes.service_id')
            ->join('vouchers', 'codes.service_id', '=', 'vouchers.id')
            ->where('services.product_id', $productID)
            ->get();
    }
}
