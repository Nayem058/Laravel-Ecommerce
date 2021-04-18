<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Session;

class SubcategoryController extends Controller
{
    public function manageSubCategory(){
        $data = SubCategory::with('categoryName')->get();
        return view('admin.category.manage_sub_category',compact('data'));
    }

    public function addCategory(){
        $categories = Category::where('status',1)->orderBy('category','ASC')->get();
        return view('admin.category.add_sub_category',compact('categories'));
    }

    public function saveCategory(Request $request){

        $request->validate([
            'sub_cat'=>'required'
        ]);

       $category = new SubCategory();
       $category ->cat_id =$request->cat_id;
       $category ->sub_cat =$request->sub_cat;
       $category ->save();

      Session::flash('success','Category Save Successfully');
      return back();

    }


    public function delete($id){
        $category= SubCategory::find($id);
        $category->delete();

        Session::flash('succcess','Category Delete Successfully');
        return back();
    }
}