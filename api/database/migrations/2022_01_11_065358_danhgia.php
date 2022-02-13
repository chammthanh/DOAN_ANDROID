<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Danhgia extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('danhgia', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('taikhoan_id')->unsigned();
            $table->integer('sanpham_id')->unsigned();
            $table->string('mota'); //binhluan
            $table->integer('danhgia'); //so sao danh gia
            $table->dateTime('ngaytao');
            $table->timestamps();

            $table->foreign('taikhoan_id')->references('id')->on('taikhoan');
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
        Schema::dropIfExists('danhgia');
    }
}
