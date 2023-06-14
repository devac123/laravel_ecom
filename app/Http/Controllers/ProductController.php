<?php

namespace App\Http\Controllers;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Routing\UrlGenerator;

class ProductController extends Controller
{
    protected $req;
    public function __construct(Request $reqest)
    {
        $this->req = $reqest;
    }

    public function addProduct(Request $request)
    {
        $uploadFolder = 'images';
        $params = $request->all();
        $name = $params['name'];
        $desc = $params["description"];
        $price = $params['price'];
        $image = $request->file('image');
        $image_uploaded_path =  $image->store($uploadFolder, 'public');
        $product = new Product;
        $product->name = $name;
        $product->description= $desc;
        $product->price = $price;
        $product->image =  url('') .'/storage'.$image_uploaded_path;
        $product->save();
        return $product;
    }

    public function getProducts(){
        $products = Product::all();
            $ret = view('dashboard',['products' => $products]);
            if($this->isApi($this->req->getRequestUri())){
                $ret = $products->toArray();
            }
            return $ret;
    }

    public function singleProduct($id){
        $product = Product::select('*')->where('id',$id)->get();
        $ret = view('product',[$product]);
        if($this->isApi($this->req->getRequestUri())){
            $ret = $product->toArray();
        }
        return $ret;
    }
    private function isApi($path){
       return str_contains($path, '/api') && strpos($path,'/api') == 0;
    }
}
