<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Tes Syarif Syarifuddin')</title>
    <!-- Load Bootstrap CSS dari CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Syarif Syarifuddin</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item dropdown"> <!-- Menambah class dropdown -->
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Soal 1
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{ route('ambil-data') }}">Ambil Data Dari API</a>
                        <a class="dropdown-item" href="{{ route('home') }}">Tampilkan Semua Data</a>
                        <a class="dropdown-item" href="{{ route('ringkasan-profesi') }}">Ringkasan Profesi</a>
                    </div>
                </li>
                <li class="nav-item dropdown"> <!-- Menambah class dropdown untuk Soal 2 -->
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownSoal2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Soal 2
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownSoal2">
                        <a class="dropdown-item" href="{{ route('barang') }}">Barang</a>
                        <a class="dropdown-item" href="{{ route('kategori') }}">Kategori Barang</a>
                        <a class="dropdown-item" href="{{ route('satuan') }}">Satuan Barang</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>


    <div class="container mt-4">
        @yield('content')
    </div>

    <!-- Load Bootstrap JS dari CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>