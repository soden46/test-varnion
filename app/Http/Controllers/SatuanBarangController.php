<?php

namespace App\Http\Controllers;

use App\Models\SatuanBarang;
use Illuminate\Http\Request;

class SatuanBarangController extends Controller
{
    public function index()
    {
        $satuanBarangs = SatuanBarang::all();
        return view('satuan_barang.index', compact('satuanBarangs'));
    }

    public function create()
    {
        return view('satuan_barang.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'kode' => 'required|string|max:10|unique:satuan_barang',
            'nama' => 'required|string|max:50',
        ]);

        SatuanBarang::create([
            'kode' => $request->kode,
            'nama' => $request->nama,
        ]);

        return redirect()->route('satuan')->with('success', 'Satuan Barang berhasil ditambahkan.');
    }

    public function edit(Request $request,  $kode)
    {
        $satuanBarang = SatuanBarang::findOrFail($kode);
        return view('satuan_barang.edit', compact('satuanBarang'));
    }

    public function update(Request $request, $kode)
    {
        $satuanBarang = SatuanBarang::findOrFail($kode);
        $request->validate([
            'kode' => 'required|string|max:10|unique:satuan_barang,kode,' . $kode,
            'nama' => 'required|string|max:50',
        ]);

        $satuanBarang->update([
            'kode' => $request->kode,
            'nama' => $request->nama,
        ]);

        return redirect()->route('satuan')->with('success', 'Satuan Barang berhasil diperbarui.');
    }

    public function destroy($kode)
    {
        $satuanBarang = SatuanBarang::where('kode', $kode);
        $satuanBarang->delete();

        return redirect()->route('satuan')->with('success', 'Satuan Barang berhasil dihapus.');
    }
}
