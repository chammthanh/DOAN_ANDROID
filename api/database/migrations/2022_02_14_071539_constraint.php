<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Constraint extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('sanpham', function (Blueprint $table) {
            $table->foreign('loaisanpham_id')->references('id')->on('loaisanpham');
        });
        Schema::table('chitietsanpham', function (Blueprint $table) {
            $table->foreign('sanpham_id')->references('id')->on('sanpham');
        });
        Schema::table('danhsachdiachi', function (Blueprint $table) {
            $table->foreign('taikhoan_id')->references('id')->on('taikhoan');
        });
        Schema::table('yeuthich', function (Blueprint $table) {
            $table->foreign('taikhoan_id')->references('id')->on('taikhoan');
        });
        Schema::table('yeuthich', function (Blueprint $table) {
            $table->foreign('sanpham_id')->references('id')->on('sanpham');
        });
        Schema::table('hoadon', function (Blueprint $table) {
            $table->foreign('taikhoan_id')->references('id')->on('taikhoan');
        });
        Schema::table('hoadon', function (Blueprint $table) {
            $table->foreign('dsdiachi_id')->references('id')->on('danhsachdiachi');
        });
        Schema::table('chitiethoadon', function (Blueprint $table) {
            $table->foreign('hoadon_id')->references('id')->on('hoadon');
        });
        Schema::table('chitiethoadon', function (Blueprint $table) {
            $table->foreign('sanpham_id')->references('id')->on('sanpham');
        });
        Schema::table('danhgia', function (Blueprint $table) {
            $table->foreign('taikhoan_id')->references('id')->on('taikhoan');
        });
        Schema::table('danhgia', function (Blueprint $table) {
            $table->foreign('sanpham_id')->references('id')->on('sanpham');
        });
        Schema::table('giohang', function (Blueprint $table) {
            $table->foreign('taikhoan_id')->references('id')->on('taikhoan');
        });
        Schema::table('giohang', function (Blueprint $table) {
            $table->foreign('sanpham_id')->references('id')->on('sanpham');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('sanpham', function (Blueprint $table) {
            $table->dropForeign(['loaisanpham_id']);
        });
        Schema::table('chitietsanpham', function (Blueprint $table) {
            $table->dropForeign(['sanpham_id']);
        });
        Schema::table('danhsachdiachi', function (Blueprint $table) {
            $table->dropForeign(['taikhoan_id']);
        });
        Schema::table('yeuthich', function (Blueprint $table) {
            $table->dropForeign(['taikhoan_id']);
        });
        Schema::table('yeuthich', function (Blueprint $table) {
            $table->dropForeign(['sanpham_id']);
        });
        Schema::table('hoadon', function (Blueprint $table) {
            $table->dropForeign(['taikhoan_id']);
        });
        Schema::table('hoadon', function (Blueprint $table) {
            $table->dropForeign(['dsdiachi_id']);
        });
        Schema::table('chitiethoadon', function (Blueprint $table) {
            $table->dropForeign(['hoadon_id']);
        });
        Schema::table('chitiethoadon', function (Blueprint $table) {
            $table->dropForeign(['sanpham_id']);
        });
        Schema::table('danhgia', function (Blueprint $table) {
            $table->dropForeign(['taikhoan_id']);
        });
        Schema::table('danhgia', function (Blueprint $table) {
            $table->dropForeign(['sanpham_id']);
        });
        Schema::table('giohang', function (Blueprint $table) {
            $table->dropForeign(['taikhoan_id']);
        });
        Schema::table('giohang', function (Blueprint $table) {
            $table->dropForeign(['sanpham_id']);
        });
    }
}
