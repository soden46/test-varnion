<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HasilResponse extends Model
{
    use HasFactory;
    protected $table = "hasil_response";
    protected $guarded = [];

    public function profesiUser()
    {
        return $this->belongsTo(Profesi::class, 'profesi', 'kode');
    }

    public function jeniskelamin()
    {
        return $this->belongsTo(JenisKelamin::class, 'jenis_kelamin', 'kode');
    }
}
