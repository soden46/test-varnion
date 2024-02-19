# Instruksi Penggunaan


## Langkah 1: Clone Repository

```bash
git clone https://github.com/soden46/test-varnion.git
```

## Langkah 3: Konfigurasi
Duplikat file .env.example Kemudian, konfigurasi file .env dengan informasi yang sesuai seperti pengaturan database dan URL aplikasi, perintah duplikat

```bash
cp .env.example .env
```

### Langkah 4: Instalasi Dependencies PHP
Masuk ke direktori proyek Laravel Anda dan jalankan perintah berikut untuk menginstal semua dependensi PHP:

```bash
composer install
```

### Langkah 5: Migrasi Database
Jalankan migrasi untuk membuat struktur tabel yang diperlukan:

```bash
php artisan migrate
```

### Langkah 6: Seeder
Jalankan seeder untuk mengisi data awal ke dalam database:

```bash
php artisan db:seed
```

### Langkah 6: Menjalankan Web
Jalankan server Laravel menggunakan perintah:

```bash
php artisan serve
```

### Skema Penggunaan Aplikasi
Aplikasi ini memiliki dua bagian utama, yaitu:

Soal 1: Berisi fitur yang terkait dengan pengambilan data pengguna dan ringkasan profesi.

Soal 2: Berisi fitur yang terkait dengan manajemen barang, kategori barang, dan satuan barang.

Soal 1

Ambil Data dari API

Akses Menu Soal 1 Dropdown Ambil DataDari API atau endpoint /ambil-data untuk mengambil data pengguna dari API.

Data yang diambil akan diproses dan disimpan di database.

Pengguna akan diarahkan kembali ke halaman utama setelah proses selesai.

Tampilkan Semua Data

Akses menu Soal 1 Dropdown Tmpilkan Semua Data atau endpoint /  untuk menampilkan semua data pengguna yang telah disimpan.

Data yang ditampilkan mencakup informasi pengguna, seperti nama, alamat, email, dan ringkasan profesi.

Ringkasan Profesi

Akses menu Soal 1 Dropdown Ringkasan Profesi atau endpoint /ringkasan-profesi untuk melihat ringkasan profesi berdasarkan data pengguna yang telah disimpan.

Ringkasan profesi mencakup jumlah pengguna untuk setiap profesi yang ada.

Soal 2

Manajemen Barang

Akses Menu Soal 2 Dropdown Barang atau endpoint /barang untuk melihat daftar barang yang tersedia.

Akses Tombol Add atau endpoint /barang/create untuk menambahkan barang baru.

Akses Tombol Edit atau endpoint /barang/edit/{id} untuk mengedit barang berdasarkan ID.

Akses Tombol Hapus atau endpoint /barang/hapus/{id} untuk menghapus barang berdasarkan ID.

Manajemen Kategori Barang

Akses Menu Soal 2 Dropdown Kategori Barang atau endpoint /kategori-barang untuk melihat daftar kategori barang.

Akses Tombol Add atau endpoint /kategori-barang/create untuk menambahkan kategori barang baru.

Akses Tombol Edit atau endpoint /kategori-barang/{kode} untuk mengedit kategori barang berdasarkan kode.

Akses Tombol Hapus atau endpoint /kategori-barang/{kode} untuk menghapus kategori barang berdasarkan kode.

Manajemen Satuan Barang
Akses Menu Soal 2 Dropdown Satuan Barang atau endpoint /satuan-barang untuk melihat daftar satuan barang.

Akses Tombol Add atau endpoint /satuan-barang/create untuk menambahkan satuan barang baru.

Akses Tombol Edit atau endpoint /satuan-barang/{kode} untuk mengedit satuan barang berdasarkan kode.

Akses Tombol Hapus atau endpoint /satuan-barang/{kode} untuk menghapus satuan barang berdasarkan kode.