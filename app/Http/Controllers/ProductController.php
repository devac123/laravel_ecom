<?php

namespace App\Http\Controllers;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Routing\UrlGenerator;

class ProductController extends Controller
{
   
    public function addProduct(Request $request)
    {
        $uploadFolder = 'images';
        $params = $request->all();
        $name = $params['name'];
        $desc = $params["description"];
        $price = $params['price'];
        $image = $request->file('image');
        die();
        $image_uploaded_path =  $image->store($uploadFolder, 'public');
        $product = new Product;
        $product->name = $name;
        $product->description= $desc;
        $product->price = $price;
        $product->image =  url('') .'/storage'.$image_uploaded_path;
        $product->save();
        return $product;
    }

    public function getProduct(){
        return Product::all()->toArray();
    }

    public function singleProduct($id){
        $product = Product::select('name')->where('id',$id)->get();
        $url = new Request;
        return $product->toArray();
    }
}
