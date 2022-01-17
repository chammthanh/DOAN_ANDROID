<?php

namespace App\Http\Controllers;

use App\Models\danhsachdiachi;
use App\Models\taikhoan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DanhSachDiaChiController extends Controller
{
    function layDanhSach()
    {
        $danhSach = danhsachdiachi::all();
        return json_encode([
            'success' => true,
            'data' => $danhSach
        ]);
    }
    function xemChiTiet($id)
    {
        $diaChi = danhsachdiachi::find($id);
        if (empty($diaChi)) {
            return json_encode([
                'success' => false,
                'message' => 'Không có địa chỉ',
            ]);
        }
        return json_encode([
            'success' => true,
            'data' => $diaChi
        ]);
    }
    function themDiaChi(Request $request)
    {
        $diaChi = new danhsachdiachi();
        $diaChi->taikhoan_id = $request->taikhoan_id;
        $diaChi->tenkh = $request->tenkh;
        $diaChi->diachi = $request->diachi;
        $diaChi->sdt = $request->sdt;
        if (empty($diaChi)) {
            return json_encode([
                'status' => false,
                'message' => 'Thêm không thành công'
            ]);
        }
        $diaChi->save();
        return json_encode([
            'status' => true,
            'message' => 'Thêm địa chỉ thành công'
        ]);
    }

    function xoaDiaChi($id)
    {
        $diaChi = danhsachdiachi::find($id);
        $diaChi->delete();
        return json_encode([
            'success' => true,
            'message' => 'Xóa thành công'
        ]);
    }
}
