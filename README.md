# RevoShop Database

Database PostgreSQL untuk toko online RevoShop.

## Tabel

| Tabel | Isi |
|---|---|
| `users` | Data akun pengguna |
| `categories` | Kategori produk |
| `products` | Produk, terhubung ke `categories` |
| `orders` | Pesanan, dibuat oleh `users` |
| `order_items` | Tabel penghubung `orders` dan `products` (many-to-many) |

## Prasyarat

- PostgreSQL 18 (service sedang berjalan)
- pgAdmin 4
- Password untuk user `postgres` sudah diatur saat instalasi

## Cara setup database secara lokal

### Lewat pgAdmin 4

1. Buka pgAdmin 4, lalu connect ke server **PostgreSQL 18** dengan password user `postgres`.
2. Buat database: klik kanan **Databases** → **Create** → **Database...**, isi nama `revoshop_db`, lalu **Save**.
3. Klik kanan `revoshop_db` → **Query Tool**.
4. Buka `schema.sql` (ikon folder), lalu jalankan seluruh isinya dengan tombol **Execute (▶)**. File ini membuat 5 tabel.
5. Buka `seed.sql`, lalu jalankan **satu kali** untuk mengisi data contoh.
6. Cek hasilnya:
   ```sql
   SELECT * FROM products;
   ```
7. Buka `queries.sql` untuk mencoba contoh query (jalankan satu query per eksekusi).

> Catatan: `schema.sql` diawali `DROP TABLE IF EXISTS`, jadi menjalankannya ulang
> akan menghapus tabel lama beserta isinya. Jalankan `seed.sql` lagi setelahnya.


## Struktur repo

```
revoshop_db/
├── schema.sql    # definisi tabel
├── seed.sql      # data contoh
├── queries.sql   # contoh query (WHERE + ORDER BY + LIMIT)
├── docs/
│   └── erd.png   # diagram ERD
├── .gitignore
└── README.md
```

## ERD

![ERD](DOCS/ERD.png)

