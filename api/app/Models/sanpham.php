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

    // public function getAllData()
    // {
    //     $query = 'select * from sanpham 
    //     inner join chitietsanpham on sanpham.id = chitietsanpham.sanpham_id ';
    //     return selectWithParam($query);
    // }
}
