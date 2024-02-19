<?php

namespace Database\Seeders;

use App\Models\KategoriBarang;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class KategoriBarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        KategoriBarang::create([
            'kode' => 'kts',
            'nama' => 'Kitchen Set',
        ]);
        KategoriBarang::create([
            'kode' => 'bds',
            'nama' => 'Bedroom Set',
        ]);
        KategoriBarang::create([
            'kode' => 'fms',
            'nama' => 'Family Room set',
        ]);
    }
}
