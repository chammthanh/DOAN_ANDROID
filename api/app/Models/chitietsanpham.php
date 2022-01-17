<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class chitietsanpham extends Model
{
    use HasFactory;
    protected $fillable=[
        'sanpham_id',
        'kichthuoc',
        'dongia',
        'soluong',
        'ngaysanxuat',
        'ngayhethan',
    ];
    protected $primarykey='id';
    protected $table ='chitietsanpham';
}
