<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('barang', function (Blueprint $table) {
            $table->id();
            $table->string('nama_barang', 20);
            $table->string('kd_kategori', 10);
            $table->foreign('kd_kategori')->references('kode')->on('kategori_barang')->onDelete('cascade')->onUpdate('cascade');
            $table->string('kd_satuan', 10);
            $table->foreign('kd_satuan')->references('kode')->on('satuan_barang')->onDelete('cascade')->onUpdate('cascade');
            $table->string('kode', 6)->unique();
            $table->integer('jumlah')->nullable()->unsigned()->default(0);
            $table->unsignedBigInteger('id_user_insert');
            $table->foreign('id_user_insert')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('barang');
    }
};
