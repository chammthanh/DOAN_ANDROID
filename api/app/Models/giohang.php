<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class giohang extends Model
{
    use HasFactory;
    protected $fillable = [
        'taikhoan_id',
        'sanpham_id',
        'soluong'
    ];
    protected $primarykey = 'id';
    protected $table ='giohang';
}
