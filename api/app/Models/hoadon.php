<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class hoadon extends Model
{
    use HasFactory;
    protected $fillable = [
        'taikhoan_id',
        'ngaylap',
        'tongtien',
        'dsdiachi_id',
        'trangthai',
    ];
    protected $primarykey ='id';
    protected $table = 'hoadon';
}
