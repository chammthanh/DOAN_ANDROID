<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class LoaiSanPham extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('loaisanpham')->insert([
            'loai' => 'Bánh Kem',
        ]);
        DB::table('loaisanpham')->insert([
            'loai' => 'Bánh Quy',
        ]);
        DB::table('loaisanpham')->insert([
            'loai' => 'Bánh Mì',
        ]);
        DB::table('loaisanpham')->insert([
            'loai' => 'Bánh Donut',
        ]);
        DB::table('loaisanpham')->insert([
            'loai' => 'Tráng Miệng',
        ]);
    }
}
