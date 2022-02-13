<?php

namespace App\Http\Controllers;

use App\Models\taikhoan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
    function chiTietTaiKhoan($id)
    {
        $taikhoan = taikhoan::find($id);
        return json_encode([
            'success' => true,
            'data' => $taikhoan,
        ]);
    }
    function suaThongTin(Request $request, $id)
    {
        $taikhoan = taikhoan::find($id);
        $taikhoan->email = $request->email;
        $taikhoan->ten = $request->ten;
        $taikhoan->hinhanh = $request->hinhanh;

        $taikhoan->save();
        return json_encode([
            'status' => true,
            'message' => 'Thay đổi thành công'
        ]);
    }
    function doiMatKhau(Request $request, $id)
    {
        $taikhoan = taikhoan::find($id);
        $taikhoan->password = $request->password;
        $confirm =  $request->confirm;
        $this->validate(
            $request,
            [
                'password' => ['required', 'min:6'],
                'confirm' => ['required', 'min:6'],
            ],
            [
                'password.required' => 'Không được bỏ trống',
                'confirm.required' => 'password không được để trống',
                'password.min' => 'password ít nhất phải 6 ký tự',
                'confirm.required' => 'password ít nhất phải 6 ký tự',

            ]
        );
        if ($confirm != $request->password) {
            return json_encode([
                'status' => false,
                'message' => 'Xác nhận mật khẩu không thành công'
            ]);
        } else {
            $taikhoan->save();
            return json_encode([
                'status' => true,
                'message' => 'Thay đổi mật khẩu thành công'
            ]);
        }
    }
}
