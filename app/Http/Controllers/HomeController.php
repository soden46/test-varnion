<?php

namespace App\Http\Controllers;

use App\Models\HasilResponse;
use App\Models\Profesi;
use App\RandomUser\RandomUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class HomeController extends Controller
{
    public function index()
    {
        // Mengambil data dari endpoint API
        $randomUser = new RandomUser();
        $userData = $randomUser->fetchRandomUserData(25); // Mengambil 25 data

        // Proses dan simpan data ke dalam tabel hasil_response
        foreach ($userData as $user) {
            $hasilResponse = new HasilResponse();
            $hasilResponse->jenis_kelamin = $user['gender'] == 'female' ? 2 : 1;
            $hasilResponse->nama = $user['name']['first'] . ' ' . $user['name']['last'];
            $hasilResponse->nama_jalan = $user['location']['street']['name'];
            $hasilResponse->email = $user['email'];

            // Menghitung angka kurang dan angka lebih
            $md5Value = md5(json_encode($user));
            $angka_kurang = substr_count($md5Value, '0') + substr_count($md5Value, '1') +
                substr_count($md5Value, '2') + substr_count($md5Value, '3') +
                substr_count($md5Value, '4') + substr_count($md5Value, '5') +
                substr_count($md5Value, '6');
            $hasilResponse->angka_kurang = $angka_kurang;
            $hasilResponse->angka_lebih = 32 - $angka_kurang;

            // Menentukan profesi secara acak dari huruf A sampai E
            $hasilResponse->profesi = chr(rand(65, 69));

            $hasilResponse->plain_json = json_encode($user);
            $hasilResponse->save();
        }

        return redirect('/')->with('message', 'Data berhasil diproses');
    }

    public function dataUser()
    {
        $hasilResponses = HasilResponse::with('jeniskelamin', 'profesiUser')->get();

        return view('data.home', ['hasilResponses' => $hasilResponses]);
    }

    public function ringkasanProfesi()
    {
        // Mendapatkan ringkasan data profesi dari tabel hasil_response
        $ringkasanProfesi = HasilResponse::select('profesi', DB::raw('count(*) as total'))
            ->groupBy('profesi')
            ->with('profesiUser')
            ->get();

        // Mengembalikan view profesi dengan data ringkasan profesi
        return view('data.profesi', ['ringkasanProfesi' => $ringkasanProfesi]);
    }
}
