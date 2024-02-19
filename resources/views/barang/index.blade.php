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
    @endif
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Daftar Barang</h2>
        <a href="{{ route('barang/create') }}" class="btn btn-success">Add</a>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th>Nomor</th>
                <th>Kode Barang</th>
                <th>Nama Kategori</th>
                <th>Nama Barang</th>
                <th>Jumlah</th>
                <th>Satuan</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($barangs as $barang)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $barang->kode }}</td>
                <td>{{ $barang->kategori->nama }}</td>
                <td>{{ $barang->nama_barang }}</td>
                <td>{{ $barang->jumlah }}</td>
                <td>{{ $barang->satuan_barang }}</td>
                <td>
                    <a href="{{ route('barang/edit', $barang->id) }}" class="btn btn-primary">Edit</a>
                    <form action="{{ route('barang/destroy', $barang->id) }}" method="POST" style="display: inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{ $barangs->links() }}
</div>
@endsection