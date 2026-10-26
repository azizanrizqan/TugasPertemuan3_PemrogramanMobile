import 'package:flutter/material.dart';
import 'halaman_menu.dart';
import 'halaman_maps.dart';

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [

          // =============================================
          // LIST TILE: TAMBAH AKUN
          // =============================================
          ListTile(
            leading: const Icon(
              Icons.add_circle,
              color: Colors.blue,
              size: 40,
            ),
            title: const Text("Tambah akun"),
            subtitle: const Text("Tambahkan akun"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),

          // =============================================
          // LIST TILE: TAMBAH BUKU
          // =============================================
          ListTile(
            leading: const Icon(
              Icons.book,
              color: Colors.blue,
              size: 40,
            ),
            title: const Text("Tambah buku"),
            subtitle: const Text("Tambahkan buku"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),

          // =============================================
          // LIST TILE: GOOGLE MAPS
          // =============================================
          ListTile(
            leading: const Icon(
              Icons.map,
              color: Colors.blue,
              size: 40,
            ),
            title: const Text("Google Maps"),
            subtitle: const Text("Lihat peta lokasi Institut Teknologi Nasional Bandung"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HalamanMaps(),
                ),
              );
            },
          ),

          const Spacer(),

          // =============================================
          // TOMBOL BAWAH: PINDAH HALAMAN & BUKA MAPS
          // =============================================
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // TOMBOL: PINDAH HALAMAN
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HalamanMenu(),
                      ),
                    );
                  },
                  child: const Text("pindah halaman"),
                ),

                const SizedBox(width: 16),

                // TOMBOL: BUKA MAPS
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HalamanMaps(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Buka Maps"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
