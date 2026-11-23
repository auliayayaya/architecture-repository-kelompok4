# Kebutuhan Non-Fungsional (NFR) — Pustaka Nusa

**Disusun oleh:** Zahro Athirah (F1E124006), Network (+QA)

Disini menetapkan kebutuhan non-fungsional yang terukur untuk MVP Pustaka Nusa, diturunkan dari KPI Visi v1.0, Definition of Done (DoD) tim, dan hasil diskusi tim, sehingga tiap kebutuhan dapat ditelusuri ke sumbernya dan diuji. Angka target KPI mengikuti Notulensi ASP dan tidak diubah di dokumen ini.

## Daftar NFR

| ID | Kategori | Kebutuhan | Cara verifikasi | Asal |
|---|---|---|---|---|
| NFR-01 | Kinerja | Pencarian katalog selesai ≤ 10 detik | Stopwatch, minimal 5 skenario | KPI K1 |
| NFR-02 | Kinerja | Pencatatan satu peminjaman ≤ 1 menit | Stopwatch pada skenario UAT | KPI K1 |
| NFR-03 | Kapasitas | Sementara hanya melayani 20 pengguna bersamaan per sekolah, pada MVP dengan dua perpustakaan simulasi, ± 40 pengguna bersamaan | Uji beban sederhana pada server staging | Target tim (belum divalidasi mitra); angka 40 turunan |
| NFR-04 | Kemudahan pakai | Skor SUS ≥ 68 dan ≥ 90% skenario UAT lulus tanpa bantuan | UAT bersama mitra, kuesioner SUS | KPI K1 |
| NFR-05 | Akurasi | 100% status buku benar dan selisih denda 0 pada ≥ 30 transaksi uji | Bandingkan dengan hitungan manual | KPI K2 |
| NFR-06 | Keterlacakan | 100% perubahan transaksi terekam di audit log | Periksa log terhadap transaksi uji | KPI K2, DoD 3.1 no. 7 |
| NFR-07 | Isolasi data | 0 kebocoran data antar perpustakaan; setiap sekolah memiliki database sendiri | Uji akses lintas sekolah dengan dua perpustakaan simulasi | KPI K3, DoD 3.1 no. 6 |
| NFR-08 | Fleksibilitas | Perpustakaan baru dapat didaftarkan ≤ 30 menit tanpa mengubah kode | Daftarkan perpustakaan simulasi kedua, ukur waktu | KPI K3 |
| NFR-09 | Keamanan akses | Akses sesuai peran (anggota, pustakawan, kepala perpustakaan) | Uji hak akses per peran | DoD 3.1 no. 5 |
| NFR-10 | Keamanan jaringan | Seluruh akses lewat HTTPS; hanya port 80/443 terbuka untuk publik; SSH dibatasi untuk admin | Pindai port dan uji akses HTTP | Usulan Network |
| NFR-11 | Kompatibilitas | Berjalan di laptop dan ponsel pada browser modern (Chrome, Firefox, Edge) tanpa instalasi aplikasi | Uji pada perangkat dan browser berbeda | DoD 3.1 no. 4 |
| NFR-12 | Pemulihan | Backup harian untuk tiap database sekolah, restore terbukti berhasil | Uji restore (P15) | F10; skenario P15 |
| NFR-13 | Ketersediaan | Layanan tersedia pada jam layanan sekolah. Angka ketersediaan belum ditetapkan, usulan diputuskan di P14 setelah TCO | Pemantauan sederhana (uptime) | Usulan Network |
| NFR-14 | Sisi sekolah | Minimal 1 PC/laptop dengan browser dan internet di ruang perpustakaan. Batas kecepatan minimum belum ditetapkan (menunggu speed test; SMAN 9 memiliki paket 30 Mbps) | Daftar periksa onboarding | Usulan Network |
| NFR-15 | Data pribadi | Data siswa (anak) dijaga sesuai UU PDP yang perlu kajian lebih lanjut, jadi bukan kesimpulan hukum | Kajian dan checklist keamanan (P14) | Usulan Network |

## Keterkaitan dengan KPI

| KPI | NFR terkait |
|---|---|
| K1 Kemudahan dan kecepatan layanan | NFR-01, NFR-02, NFR-04 |
| K2 Akurasi dan keterlacakan sirkulasi | NFR-05, NFR-06 |
| K3 Fleksibilitas multi-perpustakaan | NFR-07, NFR-08 |

## Dampak NFR pada rancangan teknologi

| NFR | Dampak |
|---|---|
| NFR-03 | Menentukan spesifikasi server awal (asumsi 2 vCPU / 4 GB), dihitung ulang di TCO P14 |
| NFR-07, NFR-08 | Database terpisah per sekolah dan prosedur penambahan sekolah (lihat `topologi-to-be.md`) |
| NFR-10 | Firewall UFW, HTTPS Let's Encrypt, SSH terbatas (lihat `deployment-diagram.md`) |
| NFR-12 | Skrip backup per database dan jadwal uji restore |