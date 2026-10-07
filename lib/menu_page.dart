import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      appBar: AppBar(
        title: const Text(
          'Menu Utama',
        ),
        backgroundColor: const Color(0xFF0878D1),
        foregroundColor: Colors.white,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                'Layanan Perpustakaan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                'Pilih menu yang ingin kamu gunakan',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 20),

              // ==================================================
              // BARIS 1
              // MENU YANG SUDAH ADA DARI PRAKTIKUM SEBELUMNYA
              // ==================================================
              Row(
                children: [

                  // DAFTAR BUKU
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DaftarBukuPage(),
                          ),
                        );
                      },

                      child: Container(
                        height: 150,
                        padding: const EdgeInsets.all(14),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(16),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withValues(alpha: 0.06),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),

                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Container(
                              padding:
                                  const EdgeInsets.all(9),

                              decoration: BoxDecoration(
                                color: Colors.blue
                                    .withValues(alpha: 0.12),

                                borderRadius:
                                    BorderRadius.circular(10),
                              ),

                              child: const Icon(
                                Icons.menu_book,
                                color: Colors.blue,
                                size: 27,
                              ),
                            ),

                            const Spacer(),

                            const Text(
                              'Daftar Buku',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              'Lihat koleksi buku',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // TAMBAH BUKU
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const TambahBukuPage(),
                          ),
                        );
                      },

                      child: Container(
                        height: 150,
                        padding: const EdgeInsets.all(14),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(16),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withValues(alpha: 0.06),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),

                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Container(
                              padding:
                                  const EdgeInsets.all(9),

                              decoration: BoxDecoration(
                                color: Colors.green
                                    .withValues(alpha: 0.12),

                                borderRadius:
                                    BorderRadius.circular(10),
                              ),

                              child: const Icon(
                                Icons.add_circle,
                                color: Colors.green,
                                size: 27,
                              ),
                            ),

                            const Spacer(),

                            const Text(
                              'Tambah Buku',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              'Tambahkan buku baru',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // ==================================================
              // BARIS 2
              // DITAMBAHKAN UNTUK TUGAS
              // ==================================================
              Row(
                children: [

                  // RIWAYAT PEMINJAMAN
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const RiwayatPeminjamanPage(),
                          ),
                        );
                      },

                      child: Container(
                        height: 150,
                        padding: const EdgeInsets.all(14),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(16),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withValues(alpha: 0.06),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),

                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Container(
                              padding:
                                  const EdgeInsets.all(9),

                              decoration: BoxDecoration(
                                color: Colors.orange
                                    .withValues(alpha: 0.12),

                                borderRadius:
                                    BorderRadius.circular(10),
                              ),

                              child: const Icon(
                                Icons.history,
                                color: Colors.orange,
                                size: 27,
                              ),
                            ),

                            const Spacer(),

                            const Text(
                              'Riwayat Peminjaman',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              'Lihat riwayat peminjaman',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // KATEGORI BUKU
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const KategoriBukuPage(),
                          ),
                        );
                      },

                      child: Container(
                        height: 150,
                        padding: const EdgeInsets.all(14),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(16),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withValues(alpha: 0.06),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),

                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Container(
                              padding:
                                  const EdgeInsets.all(9),

                              decoration: BoxDecoration(
                                color: Colors.purple
                                    .withValues(alpha: 0.12),

                                borderRadius:
                                    BorderRadius.circular(10),
                              ),

                              child: const Icon(
                                Icons.category,
                                color: Colors.purple,
                                size: 27,
                              ),
                            ),

                            const Spacer(),

                            const Text(
                              'Kategori Buku',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              'Jelajahi kategori',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // ==================================================
              // BARIS 3
              // DITAMBAHKAN UNTUK TUGAS
              // ==================================================
              Row(
                children: [

                  // BUKU FAVORIT
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BukuFavoritPage(),
                          ),
                        );
                      },

                      child: Container(
                        height: 150,
                        padding: const EdgeInsets.all(14),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(16),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withValues(alpha: 0.06),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),

                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Container(
                              padding:
                                  const EdgeInsets.all(9),

                              decoration: BoxDecoration(
                                color: Colors.red
                                    .withValues(alpha: 0.12),

                                borderRadius:
                                    BorderRadius.circular(10),
                              ),

                              child: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 27,
                              ),
                            ),

                            const Spacer(),

                            const Text(
                              'Buku Favorit',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              'Buku yang disukai',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // PROFIL SAYA
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ProfilSayaPage(),
                          ),
                        );
                      },

                      child: Container(
                        height: 150,
                        padding: const EdgeInsets.all(14),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(16),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withValues(alpha: 0.06),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),

                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Container(
                              padding:
                                  const EdgeInsets.all(9),

                              decoration: BoxDecoration(
                                color: Colors.lightBlue
                                    .withValues(alpha: 0.12),

                                borderRadius:
                                    BorderRadius.circular(10),
                              ),

                              child: const Icon(
                                Icons.person,
                                color: Colors.lightBlue,
                                size: 27,
                              ),
                            ),

                            const Spacer(),

                            const Text(
                              'Profil Saya',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              'Lihat profil akun',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// ================================================================
// HALAMAN DAFTAR BUKU
// ================================================================

class DaftarBukuPage extends StatelessWidget {
  const DaftarBukuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Buku'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: const Center(
        child: Text(
          'Halaman Daftar Buku',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


// ================================================================
// HALAMAN TAMBAH BUKU
// ================================================================

class TambahBukuPage extends StatelessWidget {
  const TambahBukuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Buku'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: const Center(
        child: Text(
          'Halaman Tambah Buku',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


// ================================================================
// HALAMAN RIWAYAT PEMINJAMAN
// ================================================================

class RiwayatPeminjamanPage extends StatelessWidget {
  const RiwayatPeminjamanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Peminjaman'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),

      body: const Center(
        child: Text(
          'Halaman Riwayat Peminjaman',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


// ================================================================
// HALAMAN KATEGORI BUKU
// ================================================================

class KategoriBukuPage extends StatelessWidget {
  const KategoriBukuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori Buku'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),

      body: const Center(
        child: Text(
          'Halaman Kategori Buku',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


// ================================================================
// HALAMAN BUKU FAVORIT
// ================================================================

class BukuFavoritPage extends StatelessWidget {
  const BukuFavoritPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buku Favorit'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),

      body: const Center(
        child: Text(
          'Halaman Buku Favorit',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


// ================================================================
// HALAMAN PROFIL SAYA
// ================================================================

class ProfilSayaPage extends StatelessWidget {
  const ProfilSayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),

      body: const Center(
        child: Text(
          'Halaman Profil Saya',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}