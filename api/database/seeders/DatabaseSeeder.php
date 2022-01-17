<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('taikhoan')->insert([
            'username' => 'thanhcham',
            'email' => 'cham@gmail.com',
            'password' => Hash::make('123123'),
            'ten'=>'Nguyễn Thị Thanh Trâm',
            'hinhanh'=>'user1.png',
            'trangthai'=>'2'
        ]);
    }
}
