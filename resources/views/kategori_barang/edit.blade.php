@extends('template.app')

@section('content')
<div class="container">
    <h2>Edit Kategori Barang</h2>
    <form action="{{ route('kategori-barang/update', $kategoriBarang->kode) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="kode">Kode</label>
            <input type="text" class="form-control" id="kode" name="kode" value="{{ $kategoriBarang->kode }}" required>
        </div>
        <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama" value="{{ $kategoriBarang->nama }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>
@endsection