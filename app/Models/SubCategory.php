<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category;


class SubCategory extends Model
{

   public function categoryName(){
       return $this->belongsTo(Category::class,'cat_id');
   }

    use HasFactory;
}
