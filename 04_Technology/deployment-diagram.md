# Deployment Diagram (Draf) — Pustaka Nusa

**Disusun oleh:** Zahro Athirah (F1E124006), Network (+QA)

Diagram dibawah menunjukkan penempatan komponen pada perangkat dan jalur komunikasinya untuk model layanan.

```mermaid
flowchart LR
    subgraph SEKOLAH["Sekolah mitra (setiap sekolah)"]
        PC["PC Pustakawan<br/>(browser)"]
        KP["PC/Laptop Kepala Perpustakaan<br/>(browser)"]
        HP["Perangkat siswa<br/>(browser, Wi-Fi sekolah)"]
        WIFI["Router / Wi-Fi sekolah"]
    end

    NET(("Internet<br/>HTTPS 443"))

    subgraph CLOUD["Server cloud Pustaka Nusa - 1 VPS Ubuntu Server LTS"]
        FW["Firewall UFW<br/>Buka 80 dan 443"]
        WEB["Web server Apache<br/>Sertifikat HTTPS Let's Encrypt"]
        APP["Aplikasi Laravel - PHP<br/>Login, peran, memilih database sekolah"]
        DB[("MySQL<br/>Satu database per sekolah")]
        BAK["Skrip backup harian<br/>mysqldump per database + cron"]
    end

    STO[("Penyimpanan backup terpisah<br/>Object storage")]

    PC --> WIFI
    KP --> WIFI
    HP --> WIFI
    WIFI --> NET
    NET --> FW
    FW --> WEB
    WEB --> APP
    APP --> DB
    DB -.-> BAK
    BAK -.-> STO

    classDef monochrome fill:#ffffff,stroke:#000000,color:#000000,stroke-width:1.5px
    classDef storage fill:#f2f2f2,stroke:#000000,color:#000000,stroke-width:1.5px

    class PC,KP,HP,WIFI,NET,FW,WEB,APP,DB,BAK monochrome
    class STO storage

    style SEKOLAH fill:#ffffff,stroke:#000000,stroke-width:1.5px,color:#000000
    style CLOUD fill:#ffffff,stroke:#000000,stroke-width:1.5px,color:#000000
    linkStyle default stroke:#000000,stroke-width:1.5px
```

## Keterangan komponen

| Komponen | Fungsi | Status keputusan |
|---|---|---|
| Browser (PC pustakawan, kepala perpustakaan, perangkat siswa) | Satu-satunya yang dibutuhkan sekolah, tanpa instalasi | Tetap |
| Firewall UFW | Hanya port 80/443 terbuka; SSH dibatasi | Usulan Network |
| Apache + HTTPS | Melayani halaman web dan mengenkripsi lalu lintas | Apache (mengikuti Phase D dan lingkungan pengembangan tim) |
| Laravel (PHP) | Logika aplikasi, login, peran, memilih database sekolah | Versi laravel 12.8.1 |
| MySQL | Satu database terpisah untuk tiap sekolah | Versi... |
| Skrip backup | Dump harian per database, unggah ke penyimpanan terpisah, uji restore di P15 | Usulan Network (F10) |