# klinik_app

Project Flutter untuk mata kuliah Mobile Programming II - Pertemuan 2 (Membuat Halaman Data Poli & Detail Poli).

## Struktur folder

```
klinik_app/
├── android/                   # Folder project Android (dibutuhkan FlutLab & flutter run)
├── lib/
│   ├── main.dart
│   ├── model/
│   │   └── poli.dart          # Class Poli (id, namaPoli)
│   └── ui/
│       ├── poli_page.dart     # Halaman list Data Poli
│       └── poli_detail.dart   # Halaman Detail Poli
└── pubspec.yaml
```

## Cara menjalankan

1. Ambil dependency:
   ```
   flutter pub get
   ```
2. Jalankan aplikasi:
   ```
   flutter run
   ```

Kalau dijalankan lewat FlutLab, tinggal upload isi/zip folder `klinik_app` ini apa adanya (folder `android/` sudah tersedia) lalu klik Run.

Catatan: folder `ios/` dan `web/` belum disertakan (tidak dibutuhkan untuk menjalankan di Android/FlutLab). Jika suatu saat perlu build ke iOS/Web, jalankan `flutter create .` di dalam folder ini untuk melengkapinya tanpa menimpa isi `lib/`.

## Alur fitur

- `main.dart` memanggil `PoliPage` sebagai halaman utama.
- `poli_page.dart` menampilkan daftar poli (Poli Anak, Poli Kandungan, Poli Gigi, Poli THT) dalam `ListView` berisi `Card`.
- Item **Poli Anak** dibungkus `GestureDetector` dengan `onTap` yang membuat objek `Poli` lalu `Navigator.push` menuju `PoliDetail`.
- `poli_detail.dart` menampilkan nama poli yang dipilih beserta tombol **Ubah** dan **Hapus**.
