@extends('template.app')

@section('content')
<h1>Data Hasil Response</h1>
<table border="1">
    <thead>
        <tr>
            <th>Nomor</th>
            <th>Nama</th>
            <th>Jenis Kelamin</th>
            <th>Jalan</th>
            <th>Email</th>
            <th>Nama Profesi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($hasilResponses as $key => $user)
        <tr>
            <td>{{ $key + 1 }}</td>
            <td>{{ $user->nama }}</td>
            <td>{{ $user->jeniskelamin ? $user->jeniskelamin->jenis_kelamin : '-' }}</td>
            <td>{{ $user->nama_jalan }}</td>
            <td>{{ $user->email }}</td>
            <td>{{ $user->profesiUser ? $user->profesiUser->nama_profesi : '-' }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection