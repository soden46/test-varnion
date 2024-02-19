@extends('template.app')

@section('content')
<div class="container">
    <h2>Tambah Satuan Barang</h2>
    <form action="{{ route('satuan-barang/store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="kode">Kode</label>
            <input type="text" class="form-control" id="kode" name="kode" required>
        </div>
        <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama" required>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>
@endsection