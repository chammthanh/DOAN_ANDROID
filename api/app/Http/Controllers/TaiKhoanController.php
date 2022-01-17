<?php

namespace App\Http\Controllers;

use App\Models\taikhoan;
use Illuminate\Http\Request;

class TaiKhoanController extends Controller
{
    function layDanhSach()
    {
        $danhSach = taikhoan::all();
        return json_encode([
            'success' => true,
            'data' => $danhSach,
        ]);
    }
}
