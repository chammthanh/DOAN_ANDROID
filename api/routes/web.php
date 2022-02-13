<?php

use App\Http\Controllers\DanhSachDiaChiController;
use App\Http\Controllers\LoaiSanPhamController;
use App\Http\Controllers\TaiKhoanController;
use Illuminate\Http\Request;

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('tai-khoan/danh-sach', 'TaiKhoanController@layDanhSach');

$router->get('loai-san-pham', 'LoaiSanPhamController@layDanhSach');
$router->get('loai-san-pham/{id}', 'LoaiSanPhamController@chiTietLoaiSanPham');

$router->get('san-pham', 'SanPhamController@sanpham');
$router->get('san-pham/{id}', 'SanPhamController@chitietsanpham');



$router->group(['prefix' => 'api'], function () use ($router) {
    $router->post('/login', 'AuthController@login');
    $router->post('/register', 'AuthController@register');
    $router->post('/logout', 'AuthController@logout');
    $router->group(['middleware' => 'auth'], function () use ($router) {
        $router->get('/dia-chi/danh-sach', 'DanhSachDiaChiController@layDanhSach');
        $router->post('/dia-chi/them-dia-chi', 'DanhSachDiaChiController@themDiaChi');
        $router->get('/dia-chi/{id}', 'DanhSachDiaChiController@xemChiTiet');
        $router->delete('/dia-chi/xoa-dia-chi/{id}', 'DanhSachDiaChiController@xoaDiaChi');

        $router->get('/tai-khoan/{id}', 'TaiKhoanController@chiTietTaiKhoan');
        $router->post('/tai-khoan/edit/{id}', 'TaiKhoanController@suaThongTin');
        $router->post('/tai-khoan/edit/doi-mat-khau/{id}', 'TaiKhoanController@doiMatKhau');
    });
});
