<?php

namespace App\Http\Controllers;

use App\Models\hoadon;
use Illuminate\Http\Request;

class HoaDonController extends Controller
{
    function xacnhan($taikhoan_id)
    {
        $hoadon = hoadon::select('select * from hoadon where trangthai = ?', [1]);
        if (!empty($hoadon)) {
            return json_encode([
                'status' => false,
                'message' => 'Chưa có đơn hàng'
            ]);
        }
        return json_encode([
            'status' => true,
            'message' => $hoadon
        ]);
    }
    function donggoi($taikhoan_id)
    {
        $hoadon = hoadon::select('select * from hoadon where trangthai = ?', [2]);
        if (!empty($hoadon)) {
            return json_encode([
                'status' => false,
                'message' => 'Chưa có đơn hàng'
            ]);
        }
        return json_encode([
            'status' => true,
            'message' => $hoadon
        ]);
    }
    function vanchuyen($taikhoan_id)
    {
        $hoadon = hoadon::select('select * from hoadon where trangthai = ?', [3]);
        if (!empty($hoadon)) {
            return json_encode([
                'status' => false,
                'message' => 'Chưa có đơn hàng'
            ]);
        }
        return json_encode([
            'status' => true,
            'message' => $hoadon
        ]);
    }
    function hoanthanh($taikhoan_id)
    {
        $hoadon = hoadon::select('select * from hoadon where trangthai = ?', [4]);
        if (!empty($hoadon)) {
            return json_encode([
                'status' => false,
                'message' => 'Chưa có đơn hàng'
            ]);
        }
        return json_encode([
            'status' => true,
            'message' => $hoadon
        ]);
    }
    function dahuy($taikhoan_id)
    {
        $hoadon = hoadon::select('select * from hoadon where trangthai = ?', [5]);
        if (!empty($hoadon)) {
            return json_encode([
                'status' => false,
                'message' => 'Chưa có đơn hàng'
            ]);
        }
        return json_encode([
            'status' => true,
            'message' => $hoadon
        ]);
    }
}
