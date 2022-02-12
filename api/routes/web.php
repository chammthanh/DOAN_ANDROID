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

$router->get('san-pham', 'SanPhamController@sanPham');
$router->get('san-pham/{id}', 'SanPhamController@chiTietSanPham');

$router->get('tim-kiem/{tensanpham}', 'SanPhamController@timKiemSanPham');

$router->group(['prefix' => 'api'], function () use ($router) {
    $router->post('/login', 'AuthController@login');
    $router->post('/register', 'AuthController@register');
    $router->post('/logout', 'AuthController@logout');
    $router->group(['middleware' => 'auth'], function () use ($router) {
        $router->group(['prefix' => 'dia-chi'], function () use ($router) {
            $router->get('/danh-sach', 'DanhSachDiaChiController@layDanhSach');
            $router->post('/them-dia-chi', 'DanhSachDiaChiController@themDiaChi');
            $router->get('/{id}', 'DanhSachDiaChiController@xemChiTiet');
            $router->post('/edit/{id}', 'DanhSachDiaChiController@suaDiaChi');
            $router->delete('/xoa-dia-chi/{id}', 'DanhSachDiaChiController@xoaDiaChi');
        });
        $router->group(['prefix' => 'tai-khoan'], function () use ($router) {
            $router->get('/{id}', 'TaiKhoanController@chiTietTaiKhoan');
            $router->post('/edit/{id}', 'TaiKhoanController@suaThongTin');
            $router->post('/edit/doi-mat-khau/{id}', 'TaiKhoanController@doiMatKhau');
        });
        $router->group(['prefix' => 'gio-hang'], function () use ($router) {
            $router->get('/', 'GioHangController@index');
            $router->post('/add', 'GioHangController@store');
            $router->put('edit/{id}', 'GioHangController@update');
            $router->delete('/delete/{id}', 'GioHangController@destroy');
        });
    });
});
