# Laporan Praktikum Pemrograman Perangkat Bergerak

Repositori ini disusun untuk memenuhi tugas praktikum mata kuliah Aplikasi Perangkat Bergerak pada pertemuan kelima yang berfokus pada interaksi pengguna dalam ekosistem Flutter.

---

## Identitas Mahasiswa

* **Nama Lengkap**: Kadek Gandhi Wahyu Jaya Suastika
* **NIM**: 1202230017
* **Kelas**: IT 06-01
* **Program Studi**: S1 Teknologi Informasi - Kampus Surabaya
* **Mata Kuliah**: Aplikasi Perangkat Bergerak

---

## Informasi Modul

* **Nomor Modul**: 05
* **Topik Utama**: User Interaction (Create dan Read)

---

## Materi yang Dipelajari

Dalam praktikum ini, terdapat beberapa konsep teknis yang telah dipelajari dan diimplementasikan:

* **State Management Dasar**: Penggunaan fungsi setState untuk memperbarui tampilan antarmuka secara dinamis saat terjadi perubahan data pada list.
* **ListView Builder**: Implementasi widget ListView.builder untuk menyajikan data dalam bentuk daftar yang efisien dan dapat bertambah secara dinamis.
* **Dialog Components**: Penggunaan AlertDialog untuk menampilkan detail informasi dari item yang dipilih serta SimpleDialog untuk menyediakan formulir input data baru.
* **User Feedback**: Implementasi SnackBar sebagai media konfirmasi sebelum pengguna diarahkan menuju aksi penambahan data.
* **Form Handling**: Penggunaan TextEditingController untuk menangkap input teks dan DropdownButtonFormField untuk pemilihan kategori warna.

---

## Modifikasi yang Dilakukan

Sesuai dengan instruksi praktikum, beberapa modifikasi telah diterapkan pada kode sumber untuk memastikan validitas dan fungsionalitas:

1. **Integrasi Identitas Pribadi**: Melakukan pembaruan pada widget AppBar dengan mencantumkan NIM sebagai identitas
2. **Modernisasi Konstruktor (super.key)**: Memperbarui sintaks konstruktor pada widget MyHomePage dengan menggunakan fitur super.key. Modifikasi ini dilakukan untuk menyelaraskan kode dengan standar Dart terbaru (Flutter 3.x ke atas) guna meningkatkan efisiensi dan kerapian deklarasi widget.
3. **Perbaikan Parameter Padding**: Mengganti parameter padding pada SimpleDialog menjadi contentPadding untuk mengatasi galat diagnostik "undefined_named_parameter" yang muncul pada versi Flutter terbaru.
4. **Data Initialization**: Mengatur inisialisasi data awal pada fungsi initState sesuai dengan skenario teknologi pengembangan aplikasi (Native dan Hybrid) agar aplikasi memiliki konten saat pertama kali dijalankan.

---

## Dokumentasi Hasil Eksekusi

Berikut adalah bukti visual dari aplikasi yang telah berhasil dijalankan:
**Tampilan Pengerjaan**
<img width="1822" height="1118" alt="image" src="https://github.com/user-attachments/assets/ab1ba942-3888-476a-8c1d-2056ce948ba0" />

**Tampilan Utama dan Input Data**
<img width="1822" height="1118" alt="image" src="https://github.com/user-attachments/assets/90fd5785-4c42-4460-a2b7-17ae8298060b" />
<img width="612" height="1118" alt="image" src="https://github.com/user-attachments/assets/e7d3cc27-f792-4a22-be2d-5eda914ded06" />
