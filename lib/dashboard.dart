import 'package:flutter/material.dart';
import 'barang.dart'; // Import halaman barang
import 'supplier.dart'; // Import halaman supplier
import 'pembelian.dart'; // Import halaman pembelian

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0, // Hilangkan bayangan AppBar untuk estetika
      ),
      body: Stack(
        children: [
          // Latar belakang biru dengan tulisan di tengah atas
          Container(
            width: double.infinity,
            height: 70, // Tinggi lebih kecil
            color: Colors.blue[200],
            alignment: Alignment.center,
            child: const Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 20, // Ukuran teks sedang
                fontWeight: FontWeight.w500, // Berat teks sedang
                color: Colors.white,
              ),
            ),
          ),
          // Isi halaman (tombol-tombol)
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0), // Disesuaikan dengan tinggi header
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Tombol Supplier dengan ukuran lebih besar
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SupplierScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.people, color: Colors.white),
                    label: const Text('Supplier'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent, // Warna background tombol
                      foregroundColor: Colors.white, // Warna teks dan ikon
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40, // Lebih besar padding horizontal
                        vertical: 20, // Lebih besar padding vertical
                      ),
                      minimumSize: const Size(250, 60), // Ukuran tombol lebih besar
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Tombol Barang dengan ukuran lebih besar
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BarangScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.shopping_bag, color: Colors.white),
                    label: const Text('Barang'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Warna background tombol
                      foregroundColor: Colors.white, // Warna teks dan ikon
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40, // Lebih besar padding horizontal
                        vertical: 20, // Lebih besar padding vertical
                      ),
                      minimumSize: const Size(250, 60), // Ukuran tombol lebih besar
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Tombol Pembelian dengan ukuran lebih besar
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PembelianScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.shopping_cart, color: Colors.white),
                    label: const Text('Pembelian'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Warna background tombol
                      foregroundColor: Colors.white, // Warna teks dan ikon
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40, // Lebih besar padding horizontal
                        vertical: 20, // Lebih besar padding vertical
                      ),
                      minimumSize: const Size(250, 60), // Ukuran tombol lebih besar
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Ikon telepon di pojok kanan bawah
          Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton(
              onPressed: () {
                // Tindakan ketika ikon telepon diklik (misalnya membuka aplikasi telepon)
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.phone, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}