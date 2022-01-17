<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class danhgia extends Model
{
    use HasFactory;
    protected $fillable=[
        'taikhoan_id',
        'sanpham_id',
        'mota',
        'danhgia',
        'ngaytao',
    ];
    protected $primarykey ='id';
    protected $table ='danhgia';
}
