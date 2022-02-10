<?php

namespace App\Http\Controllers;

use App\Models\sanpham;
use Illuminate\Http\Request;

class SanPhamController extends Controller
{
    function sanpham()
    {
        $danhSach =
            sanpham::select('*')
            ->join('chitietsanpham', 'sanpham.id', '=', 'chitietsanpham.sanpham_id')
            ->get();
        if (empty($danhSach)) {
            return json_encode([
                'success' => false,
                'message' => 'Lỗi load dữ liệu'
            ]);
        }
        return json_encode([
            'success' => true,
            'data' => $danhSach
        ]);
    }
}
