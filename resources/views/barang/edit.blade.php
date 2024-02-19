@extends('template.app')

@section('content')
<div class="container">
    <h2>Edit Data Barang</h2>
    <form action="{{ route('barang/update', $barang->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="kode">Kode Barang</label>
            <input type="text" class="form-control" id="kode" name="kode" value="{{ $barang->kode }}">
        </div>
        <div class="form-group">
            <label for="nama_barang">Nama Barang</label>
            <input type="text" class="form-control" id="nama_barang" name="nama_barang" value="{{ $barang->nama_barang }}">
        </div>
        <div class="form-group">
            <label for="id_user_insert">ID User</label>
            <input type="text" class="form-control" id="id_user_insert" name="id_user_insert" value="{{ $barang->id_user_insert }}">
        </div>

        <div class="form-group">
            <label for="floatingInput">Kode Kategori Barang</label>
            <select class="form-control" name="kd_kategori" id="kd_kategori">
                @foreach($kategori as $kat)
                <option value="{{ $kat->kode }}" {{ $barang->kd_kategori == $kat->kode  ? 'selected' : '' }}>{{ $kat->nama }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <label for="floatingInput">Satuan Barang</label>
            <select class="form-control" name="kd_satuan" id="kd_satuan">
                @foreach($satuan as $sat)
                <option value="{{ $sat->kode }}" {{ $barang->kd_satuan == $sat->kode  ? 'selected' : '' }}>{{ $sat->nama }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="jumlah">Jumlah</label>
            <input type="number" class="form-control" id="jumlah" name="jumlah" value="{{ $barang->jumlah }}">
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>
@endsection