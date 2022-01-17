<?php

namespace App\Http\Controllers;

use App\Models\loaisanpham;
use Illuminate\Http\Request;

class LoaiSanPhamController extends Controller
{
    function layDanhSach()
    {
        $danhSach = loaisanpham::all();
        return json_encode([
            'success' => true,
            'data' => $danhSach
        ]);
    }
}
