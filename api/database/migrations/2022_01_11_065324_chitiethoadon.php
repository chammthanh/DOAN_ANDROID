<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Chitiethoadon extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chitiethoadon', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('hoadon_id')->unsigned();
            $table->integer('sanpham_id')->unsigned();
            $table->integer('soluong');
            $table->integer('thanhtien');
            $table->string('ghichu');
            $table->timestamps();
            $table->foreign('hoadon_id')->references('id')->on('hoadon');
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
        Schema::dropIfExists('chitiethoadon');
    }
}
