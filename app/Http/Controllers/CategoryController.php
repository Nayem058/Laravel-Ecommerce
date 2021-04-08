<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use  Session;

class CategoryController extends Controller
{
    public function manageCategory(){
        $data = Category:: orderBy('id','DESC')->get();
        return view('admin.category.manage_category',compact('data'));
    }

    public function addCategory(){

        return view('admin.category.add_category');
    }

    public function saveCategory(Request $request){

        $request->validate([
            'category'=> 'required'
        ]);
        
        $category = new Category();
        $category ->category = $request->category;
        $category ->category_slug = $this->slug_generator($request->category_slug);
        $category ->save();

        Session::flash('success', 'Category save success!');
        return back();               
    }
    public function delete($id){
        $category= Category::find($id);
        $category->delete();

        Session::flash('success', 'Category Delete Successfully');
        return back();
    }
    
    public function categoryStatus($id,$status){
        $cat= Category::find($id);
        $cat->status = $status;
        $cat->save();
        return response()->json(['message'=>'success']);
    }

   
    public function slug_generator($string){
        $string= str_replace(' ','-',$string);
        $string = preg_replace('/[^A-Za-z0-9\-]/',' ',$string);

        return strtolower(preg_replace('/-+/','-',$string));

    }
}
