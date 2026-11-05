
USE db_keuangan;

-- 1. PENGGUNA
INSERT INTO PENGGUNA
(id_pengguna, nama, tanggal_lahir, email, status_aktif, alamat, nomor_telepon, role, jumlah_transaksi_dibuat) VALUES
(1, 'Siti Rahmawati', '1990-04-12', 'siti.rahmawati@umkmmaju.id', TRUE,  'Jl. Margonda Raya No. 21, Pancoran Mas, Depok, Jawa Barat, 16431', '081234567801,0217771001', 'Pemilik,Admin', 5),
(2, 'Budi Santoso',   '1995-08-23', 'budi.santoso@umkmmaju.id',   TRUE,  'Jl. Kemang Raya No. 8, Bojongsari, Depok, Jawa Barat, 16516',     '081234567802',            'Kasir',        4),
(3, 'Dewi Lestari',   '1998-01-30', 'dewi.lestari@umkmmaju.id',   TRUE,  'Jl. Cinere Raya No. 45, Cinere, Depok, Jawa Barat, 16514',        '081234567803,0217771003', 'Kasir,Admin',  1),
(4, 'Andi Prasetyo',  '1992-11-05', 'andi.prasetyo@umkmmaju.id',  FALSE, 'Jl. Sawangan No. 17, Sawangan, Depok, Jawa Barat, 16511',         '081234567804',            'Akuntan',      0);

-- 2. PELANGGAN
INSERT INTO PELANGGAN (id_pelanggan, nama_pelanggan, kontak) VALUES
(1, 'Warung Bu Ani',         '081298760001'),
(2, 'Toko Oleh-Oleh Nusantara', '081298760002'),
(3, 'Kafe Senja',            '081298760003'),
(4, 'Rina Marlina',          '081298760004'),
(5, 'Koperasi Sejahtera',    '021-5550005');

-- 3. PEMASOK
INSERT INTO PEMASOK (id_pemasok, nama_pemasok, kontak, email) VALUES
(1, 'CV Tani Makmur',      '081377710001', 'order@tanimakmur.co.id'),
(2, 'UD Sumber Rasa',      '081377710002', 'sumberrasa@gmail.com'),
(3, 'PT Kemasan Prima',    '021-7770003',  'sales@kemasanprima.co.id');

-- 4. PRODUK
INSERT INTO PRODUK (id_produk, nama_produk, harga_satuan_baku) VALUES
(1, 'Keripik Singkong 250g', 15000.00),
(2, 'Kopi Bubuk Arabika 200g', 45000.00),
(3, 'Madu Hutan 250ml',       60000.00),
(4, 'Sambal Roa 150g',         25000.00),
(5, 'Teh Herbal Celup (isi 20)', 20000.00),
(6, 'Gula Aren Cair 500ml',    30000.00);

-- 5. KAS_REKENING
INSERT INTO KAS_REKENING (id_kas, nama_kas, jenis_kas, saldo_terkini) VALUES
(1, 'Kas Tunai Toko', 'Tunai',    1870000.00),
(2, 'Rekening BCA',   'Bank',     4140000.00),
(3, 'DANA Usaha',     'E-Wallet',  320000.00);

-- 6. TRANSAKSI
-- T1-T3 penjualan | T4-T5 pembelian | T6-T8 pembayaran | T9-T10 kas pemilik
INSERT INTO TRANSAKSI
(id_transaksi, tanggal_transaksi, waktu_transaksi, keterangan, status_validasi, id_pengguna, total_nilai, jenis_transaksi) VALUES