<?php

namespace Database\Seeders;

use App\Models\SatuanBarang;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SatuanBarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        SatuanBarang::create([
            'kode' => 'kg',
            'nama' => 'Kilogram',
        ]);
        SatuanBarang::create([
            'kode' => 'm',
            'nama' => 'Meter',
        ]);
        SatuanBarang::create([
            'kode' => 'lt',
            'nama' => 'Liter',
        ]);
    }
}
