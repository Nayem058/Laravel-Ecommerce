<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpParser\Node\Stmt\Return_;
use Session;

class BrandController extends Controller
{
    public function addBrand(){
        return view('admin.brand_add');
    }

    public function saveBrand(Request $request){

        $request->validate([
            'brand_name'=> 'required | unique:brands,brand_name|max:50'
        ]);
        
        $brand = new Brand();
        $brand ->brand_name = $request->brand_name;
        $brand ->brand_slug = $this->slug_generator($request->brand_name);
        $brand ->save();

        Session::flash('success', 'Brand save success!');
        return back();
        // return back()->with('massege','Brand save success!');
        // return ('brand/add-brand');
        // return redirect()->back();

        // Brand::create($request->all());

        // DB::table('brands')->insert([            
        //     'brand_name'=>$request->brand_name
        // ]);

        
    }

    public function manageBrand(){
        $brand= Brand::OrderBy('id','DESC')->get();
        return view('admin.brand_manage',compact('brand'));
    }
    
    public function brandStatus($id,$status){
        $brand = Brand::find($id);
        $brand-> status= $status;
        $brand->save();
        return response()->json(['message' => 'Success']);
    }

    public function delete($id){
        $brand = Brand::find($id);
        $brand->delete();

        Session::flash('success','Brand delete Success');
        return back();
    }

    public function edit($id){
        $row = Brand::find($id);
        return view('admin.brand_edit',compact('row'));
    }

    public function updateBrand(Request $request){
        $brand = Brand::find($request->id);
        $brand ->brand_name = $request->brand_name;
        $brand ->brand_slug = $this->slug_generator($request->brand_name);
        $brand ->save();

        Session::flash('success','Brand Update Success');
        return back();
    }

    public function slug_generator($string){
        $string= str_replace(' ','-',$string);
        $string = preg_replace('/[^A-Za-z0-9\-]/',' ',$string);

        return strtolower(preg_replace('/-+/','-',$string));

    }
}
