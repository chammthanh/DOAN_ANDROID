<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Danhsachdiachi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('danhsachdiachi', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('taikhoan_id')->unsigned();
            $table->string('tenkh');
            $table->string('diachi');
            $table->string('sdt', 11);
            $table->timestamps();
            $table->foreign('taikhoan_id')->references('id')->on('taikhoan');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('danhsachdiachi');
    }
}
