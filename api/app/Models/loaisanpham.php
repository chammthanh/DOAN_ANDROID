<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class loaisanpham extends Model
{
    use HasFactory;
    protected $fillable = [
        'loai',
    ];
    protected $primarykey = 'id';
    protected $table ='loaisanpham';
}
