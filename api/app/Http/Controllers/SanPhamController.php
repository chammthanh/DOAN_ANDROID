<?php

namespace App\Http\Controllers;

use App\Models\sanpham;
use Illuminate\Http\Request;

class SanPhamController extends Controller
{
    function sanPham()
    {
        $danhSach =
            sanpham::select('*')
            ->get();
        // if (!empty($danhSach)) {
        //     return json_encode([
        //         'success' => false,
        //         'message' => 'Lỗi load dữ liệu'
        //     ]);
        // }
        return json_encode([
            'success' => true,
            'data' => $danhSach
        ]);
    }
    function chiTietSanPham($id)
    {
        $sanpham =
            sanpham::select('*')
            ->join('chitietsanpham', 'sanpham.id', '=', 'chitietsanpham.sanpham_id')
            ->join('loaisanpham', 'sanpham.loaisanpham_id', '=', 'loaisanpham.id')
            ->where('sanpham.id', '=', $id)
            ->get();
        if (!empty($sanpham)) {
            return json_encode([
                'success' => false,
                'message' => 'Không tồn tại sản phẩm'
            ]);
        }
        return json_encode([
            'success' => true,
            'data' => $sanpham
        ]);
    }
    function timKiemSanPham($tensanpham)
    {
        $timkiem = sanpham::find($tensanpham);
        if (!empty($timkiem)) {
            return json_encode([
                'success' => false,
                'message' => 'Không tìm thấy sản phẩm'
            ]);
        }
        return json_encode([
            'status' => true,
            'data' => $timkiem
        ]);
    }
}
