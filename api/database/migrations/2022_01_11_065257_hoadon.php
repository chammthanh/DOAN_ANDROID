<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Hoadon extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hoadon', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('taikhoan_id')->unsigned();
            $table->dateTime('ngaylap');
            $table->integer('tongtien');
            $table->integer('dsdiachi_id')->unsigned();
            $table->integer('trangthai'); //1 chờ xác nhận, 2 đóng gói, 3 vận chuyển, 4 hoan thanh, 5 huy
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hoadon');
    }
}
