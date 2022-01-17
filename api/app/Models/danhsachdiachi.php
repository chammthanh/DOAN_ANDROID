<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class danhsachdiachi extends Model
{
    use HasFactory;
    protected $fillable = [
        'taikhoan_id',
        'tenkh',
        'diachi',
        'sdt',

    ];
    protected $primarykey = 'id';
    protected $table = 'danhsachdiachi';
}
