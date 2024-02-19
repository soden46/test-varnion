@extends('template.app')

@section('content')
<div class="container">
    @if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>@elseif (Session::has('error'))
    <div class="alert alert-danger">
        <p>{{ Session::get('error') }}</p>
    </div>
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Daftar Satuan Barang</h2>
        <a href="{{ route('satuan-barang/create') }}" class="btn btn-success">Add</a>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th>Nomor</th>
                <th>Kode</th>
                <th>Nama</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($satuanBarangs as $satuanBarang)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $satuanBarang->kode }}</td>
                <td>{{ $satuanBarang->nama }}</td>
                <td>
                    <a href="{{ route('satuan-barang/edit', $satuanBarang->kode) }}" class="btn btn-primary">Edit</a>
                    <form action="{{ route('satuan-barang/destroy', $satuanBarang->kode) }}" method="POST" style="display: inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection