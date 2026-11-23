# Opsi Hosting dan Estimasi Biaya — Pustaka Nusa

**Disusun oleh:** Zahro Athirah (F1E124006), Network (+QA)

Pustaka Nusa adalah layanan SaaS, yaitu satu aplikasi dipakai banyak perpustakaan sekolah lewat browser, dan server dikelola oleh tim kami (bukan di sekolah). Dokumen ini membandingkan dua opsi tempat menjalankan server dan juga biayanya, lalu merekomendasikan satu untuk MVP.

## Kebutuhan yang menjadi dasar pemilihan

| Kebutuhan | Sumber |
|---|---|
| Linux dengan PHP, Laravel, MySQL, Apache | Stack aplikasi; versi menyusul di ADR P14 |
| Spesifikasi awal: **2 vCPU, 4 GB RAM, ± 60–80 GB SSD** | Asumsi MVP. *Perlu divalidasi dengan Programmer/DBA* |
| **Database terpisah per sekolah** pada server yang sama | Keputusan pemisahan data ( lihat di `topologi-to-be.md`) |
| Beban acuan: 20 pengguna bersamaan per sekolah | Target tim (belum divalidasi mitra) |
| HTTPS dan firewall | NFR keamanan, DoD tim |
| Backup harian per database dan uji restore | F10, uji restore di P15 |
| Dua perpustakaan simulasi berjalan bersamaan | DoD rilis MVP no. 6 |
| Data siswa (anak) harus aman dan jelas lokasinya | UU PDP *(perlu kajian lebih lanjut, bukan sebagai kesimpulan hukum)* |

## Perbandingan dua opsi

Kurs yang dipakai: **Rp18.186,45 per US$** (kurs BI, dicatat 23 November 2026).

| Aspek | **Opsi A — Biznet Gio NEO Lite (Indonesia)** | **Opsi B — DigitalOcean Droplet (global, region Singapura)** |
|---|---|---|
| Paket yang dibandingkan | NEO Lite **MS 4.2**: 2 vCPU, 4 GB RAM, 60 GB | Basic Droplet: 2 vCPU, 4 GiB RAM, 80 GiB SSD |
| Harga paket | **Rp139.000 / bulan** | **US$24 / bulan ≈ Rp436.475** |
| Backup | Skrip `mysqldump` per database + cron ke penyimpanan terpisah, Biznet juga punya layanan GIO Backup | Backup bawaan: 20% (mingguan) atau 30% (harian) dari harga Droplet → harian **US$7,20 / bulan** |
| Total/bulan (VPS + backup harian) | **± Rp139.000** | **US$31,20 ≈ Rp567.417** |
| Total 12 bulan | **± Rp1.668.000** | **± Rp6.809.007** |
| Mata uang / pembayaran | Rupiah | Dolar AS  (risiko perbedaan kurs tiap waktunya) |
| Lokasi data | Indonesia | Singapura |
| Kecocokan UU PDP (data siswa) | Lebih mudah dijelaskan karena data di dalam negeri | Perlu kajian transfer data lintas negara |
| Kemudahan otomasi (deploy, API) | Ada API portal NEO Lite | Sangat baik (API, dokumentasi, ekosistem luas) |
| Skalabilitas ke banyak sekolah | Naik ke paket lebih besar atau tambah VPS | Sama; ada layanan terkelola (managed MySQL) |
| Risiko | Kurang dikenal tim dan dokumentasi lebih sedikit | Biaya jauh lebih tinggi untuk spesifikasi setara dan biaya dalam dolar |

## Pilihan

Untuk saat ini kami memilih Opsi A (Biznet Gio NEO Lite MS 4.2) untuk MVP dan tahap awal. Alasannya:

1. **Biaya ± 4 kali lebih rendah** per tahun untuk spesifikasi setara, dan dalam rupiah sehingga TCO pasti dan tidak terpengaruh kurs.
2. **Data siswa tetap di Indonesia**, yang lebih mudah dipertanggungjawabkan ke sekolah mitra.
3. Cukup untuk MVP (2 vCPU / 4 GB) dan bisa dinaikkan ke paket lebih besar tanpa mengubah arsitektur.

**Kapan beralih ke Opsi B:** ketika jumlah sekolah tambah banyak dan tim membutuhkan otomasi atau layanan terkelola, atau ada mitra di luar Indonesia.

## Sumber (diakses 23 November 2026)

- Biznet Gio — Daftar Harga: <https://biznetgio.com/en/pricelist>
- IDCloudHost — VPS: <https://idcloudhost.com/en/server-vps/>
- Bank Indonesia — kurs referensi: <https://www.bi.go.id/id/fungsi-utama/moneter/informasi-kurs>