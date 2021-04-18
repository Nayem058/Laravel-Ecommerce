<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\SubCategory;

class Category extends Model
{
    protected $fillable = [
        'category',
        'category_slug'      
    ];
    
    public function subCategories(){
        
        return $this->hasMany(SubCategory::class);
    }

    use SoftDeletes;
    use HasFactory;
}
