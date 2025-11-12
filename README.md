# Tugas 6 Pertemuan 8

**Nama : Khafriza Diaz Permana**
**NIM : H1D023072**
**Shift : D**
**Shift KRS : F**

## Screenshot
Hasil :
![WhatsApp Image 2025-11-12 at 15 11 21](https://github.com/user-attachments/assets/eccde609-2306-46d6-818b-8eecbbc8c96f)
![WhatsApp Image 2025-11-12 at 15 11 21 (1)](https://github.com/user-attachments/assets/804214c5-cf2d-4769-aff9-723afc5b1876)


## Penjelasan Proses Passing Data

Proses pengiriman data (passing data) dari `ui/form_data.dart` ke `ui/tampil_data.dart` dilakukan menggunakan **Constructor Parameter** saat proses navigasi halaman.

Berikut adalah alur langkah demi langkahnya:

1.  **Pengambilan Data (di `form_data.dart`):**
    * [cite_start]Saat pengguna menekan tombol "Simpan", fungsi `onPressed` pada `ElevatedButton` akan dieksekusi [cite: 834-835].
    * Di dalam fungsi tersebut, data diambil dari setiap `TextEditingController` menggunakan properti `.text` (misal: `_namaController.text`).

2.  **Kalkulasi Data (di `form_data.dart`):**
    * [cite_start]Data "Tahun Lahir" (yang bertipe `String`) diubah menjadi `int`[cite: 835].
    * Data ini kemudian dikalkulasi (Tahun Sekarang - Tahun Lahir) untuk mendapatkan nilai "Umur".

3.  **Pengiriman Data via Navigasi (di `form_data.dart`):**
    * `Navigator.push` dipanggil untuk berpindah ke halaman baru.
    * [cite_start]Di dalam `MaterialPageRoute`, kita memanggil *constructor* dari halaman `TampilData` dan "mengoper" data (nama, nim, dan umur) sebagai argumen ke dalam parameternya [cite: 836-849].

4.  **Penerimaan Data (di `tampil_data.dart`):**
    * [cite_start]Kelas `TampilData` (sebuah `StatelessWidget`) sudah disiapkan untuk menerima data melalui *constructor*-nya [cite: 891-896].
    * [cite_start]Data yang diterima disimpan ke dalam variabel `final` di dalam kelas tersebut [cite: 888-890].
    * [cite_start]Variabel-variabel ini (nama, nim, umur) kemudian digunakan di dalam method `build` untuk ditampilkan ke layar menggunakan `Text` widget [cite: 907, 913-916].
