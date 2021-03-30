<?php

namespace App\Http\Controllers;
use App\Service;
use App\Product;
use DB;

use Illuminate\Http\Request;

class ServicesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    
    public function index(){

        $services = Service::all();

        return view('services.index',compact('services'));

    }

    public function create(){
         
         //only products are shown which are not already in services
         $products = DB::select('SELECT * FROM products WHERE  NOT EXISTS (SELECT 1 FROM services WHERE  services.product_id = products.id)');


        return view('services.create',compact('products')); 
    }

    public function store(Request $request){
       
        foreach($request->name as $key=>$name ){
        
            $data = array();
            $data['product_id']=$request->product_id;
            $data['name']=$request->name[$key];
            $data['link1']=$request->link1;
            $data['link2']=$request->link2;
    
            DB::table('services')->insert($data);

        }
        
        return Redirect(route('service.index'))->with('toast_success', 'Service Created Successfully!');

    }

    public function edit($id){
        $service = Service::find($id);

        $products = Product::all();

        return view('services.edit',compact('products','service'));

    }

    public function update(Request $request,$id){

        $data = array();
        $data['product_id']=$request->product_id;
        $data['name']=$request->name;
        $data['link1']=$request->link1;
        $data['link2']=$request->link2;

        DB::table('services')->where('id',$id)->update($data);

        return Redirect(route('service.index'))->with('toast_success', 'Service Updated Successfully!');

    }

    public function delete($id){
        DB::table('services')->where('id',$id)->delete();
        
        return Redirect(route('service.index'))->with('toast_info', 'Service Deleted !');
    }

}
