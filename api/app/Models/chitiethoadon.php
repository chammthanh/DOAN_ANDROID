<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class chitiethoadon extends Model
{
    use HasFactory;
    protected $fillable =[
        'hoadon_id',
        'sanpham_id',
        'soluong',
        'thanhtien',
        'ghichu',

    ];
    protected $primarykey='id';
    protected $table ='chitiethoadon';
}
