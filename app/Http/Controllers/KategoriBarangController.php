<?php

namespace App\Http\Controllers;

use App\Models\KategoriBarang;
use Illuminate\Http\Request;

class KategoriBarangController extends Controller
{
    public function index()
    {
        $kategoriBarangs = KategoriBarang::all();
        return view('kategori_barang.index', compact('kategoriBarangs'));
    }

    public function create()
    {
        return view('kategori_barang.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'kode' => 'required|string|max:10|unique:kategori_barang',
            'nama' => 'required|string|max:50',
        ]);

        KategoriBarang::create([
            'kode' => $request->kode,
            'nama' => $request->nama,
        ]);

        return redirect()->route('kategori')->with('success', 'Kategori Barang berhasil ditambahkan.');
    }
    public function edit($kode)
    {
        $kategoriBarang = KategoriBarang::findOrFail($kode);
        return view('kategori_barang.edit', compact('kategoriBarang'));
    }

    public function update(Request $request, $kode)
    {
        $kategoriBarang = KategoriBarang::findOrFail($kode);
        $request->validate([
            'kode' => 'required|string|max:10|unique:kategori_barang,kode,' . $kode,
            'nama' => 'required|string|max:50',
        ]);

        $kategoriBarang->update([
            'kode' => $request->kode,
            'nama' => $request->nama,
        ]);

        return redirect()->route('kategori')->with('success', 'Kategori Barang berhasil diperbarui.');
    }

    public function destroy($kode)
    {
        $kategoriBarang = KategoriBarang::where('kode', $kode);
        $kategoriBarang->delete();

        return redirect()->route('kategori')->with('success', 'Kategori Barang berhasil dihapus.');
    }
}
