@extends('template.app')

@section('content')
<div class="container">
    <h2>Tambah Data Barang</h2>
    <form action="{{ route('barang/store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label for="nama_barang">Nama Barang</label>
            <input type="text" class="form-control" id="nama_barang" name="nama_barang">
            @error('nama_barang')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>
        <div class="form-group">
            <label for="id_user_input">ID User</label>
            <input type="text" class="form-control" id="id_user_input" name="id_user_input">
            @error('id_user_input')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label for="floatingInput">Kode Kategori Barang</label>
            <select class="form-control" name="kd_kategori" id="kd_kategori">
                <option value="" selected>Kode Kategori Barang</option>
                @foreach($kategori as $kat)
                <option value="{{ $kat->kode }}" {{$kat->kode == $kat->kode  ? 'selected' : ''}}>{{ $kat->nama}}</option>
                @endforeach
            </select>
            @error('kd_kategori')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label for="floatingInput">Satuan Barang</label>
            <select class="form-control" name="kd_satuan" id="kd_satuan">
                <option value="" selected>Satuan Barang</option>
                @foreach($satuan as $sat)
                <option value="{{$sat->kode}}" {{ $sat->kode == $sat->kode  ? 'selected' : '' }}>{{ $sat->nama }}</option>
                @endforeach
            </select>
            @error('kd_satuan')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>
        <div class="form-group">
            <label for="jumlah">Jumlah</label>
            <input type="number" class="form-control" id="jumlah" name="jumlah">
            @error('jumlah')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>
@endsection