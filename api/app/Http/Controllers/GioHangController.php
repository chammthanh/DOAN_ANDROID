<?php

namespace App\Http\Controllers;

use App\Models\giohang;
use Illuminate\Http\Request;

class GioHangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $giohang = giohang::all();
        if (!empty($giohang)) {
            return json_encode([
                'status' => true,
                'message' => 'Chưa có sản phẩm trong giỏ hàng'
            ]);
        }
        return json_encode([
            'status' => true,
            'data' => $giohang
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $giohang = new giohang();
        $giohang->taikhoan_id = $request->taikhoan_id;
        $giohang->sanpham_id = $request->sanpham_id;
        $giohang->soluong = $request->soluong;
        $giohang->save();
        return json_encode([
            'status' => true,
            'message' => 'Thêm thành công vào giỏ hàng'
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $giohang = giohang::find($id);
        $giohang->soluong = $request->soluong;
        $giohang->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $giohang = giohang::find($id);
        $giohang->delete();
        return json_encode([
            'success' => true,
            'message' => 'Xóa thành công'
        ]);
    }
}
