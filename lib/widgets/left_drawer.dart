import 'package:flutter/material.dart';
import 'package:football_shop_mobile/screens/menu.dart';
// Impor halaman form yang akan dituju
import 'package:football_shop_mobile/screens/productlist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Text(
                  'Football Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Seluruh produk sepak bola terkini di sini!",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  // JAWABAN: Menambahkan style pada Text widget
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          // Opsi pertama: Halaman Utama
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Mengarahkan pengguna ke halaman utama
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          // Opsi kedua: Tambah Produk
          ListTile(
            leading: const Icon(Icons.add_box_outlined),
            title: const Text('Tambah Produk'),
            // Mengarahkan pengguna ke halaman form tambah produk baru
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductFormPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
