<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\KategoriBarang;
use App\Models\SatuanBarang;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BarangController extends Controller
{
    public function index()
    {
        $barangs = Barang::with('kategori')->paginate(5);
        return view('barang.index', compact('barangs'));
    }

    public function create()
    {
        $kategori = KategoriBarang::get();
        $satuan = SatuanBarang::get();
        return view('barang.create', compact('kategori', 'satuan'));
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nama_barang' => 'required|string|max:20|min:2',
            'id_user_input' => 'required|integer',
            'kd_kategori' => 'required|string|exists:kategori_barang,kode',
            'kd_satuan' => 'required|string|exists:satuan_barang,kode',
            'jumlah' => 'nullable|integer|min:0|max:100',
        ]);

        // Generate kode barang dengan 6 karakter
        $kodeBarang = Str::random(6);

        // Membuat data barang baru dengan kode yang dihasilkan
        Barang::create([
            'nama_barang' => $validatedData['nama_barang'],
            'kd_kategori' => $validatedData['kd_kategori'],
            'kd_satuan' => $validatedData['kd_satuan'],
            'kode' => $kodeBarang,
            'jumlah' => $validatedData['jumlah'],
            'id_user_insert' => $validatedData['id_user_input'],
        ]);

        return redirect()->route('barang')->with('success', 'Data barang berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $barang = Barang::with('kategori', 'satuan')->findOrFail($id);
        $kategori = KategoriBarang::get();
        $satuan = SatuanBarang::get();

        return view('barang.edit', compact('barang', 'kategori', 'satuan'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_barang' => 'required|string|max:20|min:2',
            'id_user_insert' => 'required|integer',
            'kd_kategori' => 'required|string|exists:kategori_barang,kode',
            'kd_satuan' => 'required|string|exists:satuan_barang,kode',
            'kode' => 'required|string',
            'jumlah' => 'nullable|integer|min:0|max:100',
        ]);

        $barang = Barang::findOrFail($id);

        $barang->update([
            'nama_barang' => $request->nama_barang,
            'kd_kategori' => $request->kd_kategori,
            'kd_satuan' => $request->kd_satuan,
            'kode' => $request->kode,
            'jumlah' => $request->jumlah,
            'id_user_insert' => $request->id_user_insert,
        ]);

        return redirect()->route('barang')->with('success', 'Data barang berhasil diperbarui.');
    }

    public function destroy($id)
    {
        $barang = Barang::findOrFail($id);

        $barang->delete();

        return redirect()->route('barang')->with('success', 'Data barang berhasil dihapus.');
    }
}
