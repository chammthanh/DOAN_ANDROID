<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class yeuthich extends Model
{
    use HasFactory;
    protected $fillable = [
        'taikhoan_id',
        'sanpham_id',
        
    ];
    protected $primarykey = 'id';
    protected $table = 'yeuthich';
}
