<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\KategoriBarang;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            JenisKelaminSeeder::class,
            ProfesiSeeder::class,
            KategoriBarangSeeder::class,
            SatuanBarangSeeder::class,
        ]);
    }
}
