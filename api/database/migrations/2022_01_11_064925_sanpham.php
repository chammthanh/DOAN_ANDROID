<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Sanpham extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sanpham', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tensanpham');
            $table->integer('loaisanpham_id')->unsigned();
            $table->string('hinhanh');
            $table->string('mota');
            $table->boolean('trangthai'); //0 da xoa, 1 hoat dong
            $table->timestamps();
            $table->foreign('loaisanpham_id')->references('id')->on('loaisanpham');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sanpham');
    }
}
