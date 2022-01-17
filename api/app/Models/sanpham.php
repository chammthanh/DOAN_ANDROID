<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sanpham extends Model
{
    use HasFactory;
    protected $fillable = [
        'tensanpham',
        'loaisanpham_id',
        'hinhanh',
        'mota',
        'trangthai',
    ];
    protected $primarykey = 'id';
    protected $table = 'sanpham';
}
