@extends('template.app')

@section('content')
<h1>Ringkasan Profesi</h1>
<table border="1">
    <thead>
        <tr>
            <th>Nomor</th>
            <th>Profesi</th>
            <th>Jumlah</th>
        </tr>
    </thead>
    <tbody>
        @foreach($ringkasanProfesi as $key => $profesi)
        <tr>
            <td>{{ $key + 1 }}</td>
            <td>{{ $profesi->profesiUser->nama_profesi }}</td> <!-- Menggunakan relasi untuk mendapatkan nama profesi -->
            <td>{{ $profesi->total }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection