import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      theme: ThemeData(
        primaryColor: Colors.blueAccent, // Sesuaikan dengan branding Peduli Lindungi
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peduli Lindungi'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.blue, // Warna latar biru untuk header
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Entering a Public Space?',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // Warna teks putih
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Stay Alert to Stay Safe',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white, // Warna teks putih
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/tangan_scan.png', // Ganti dengan asset foto scan aplikasi
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.keyboard_arrow_down),
                            Text(
                              'Check-In Preference',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Tambahkan fungsi untuk menangani tombol check-in di sini
                          },
                          icon: Icon(
                            Icons.qr_code_scanner,
                            color: Colors.blue, // Ubah warna ikon menjadi biru
                          ),
                          label: Text(
                            'Check-In',
                            style: TextStyle(
                              color: Colors.blue, // Warna teks putih
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black, // Tambahkan bayangan pada tombol
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    _buildMenuRow([
                      _buildMenuItem(
                        'Sertifikat Vaksin',
                        'assets/sertif.jpg',
                        'Sertifikat Vaksin',
                      ),
                      _buildMenuItem(
                        'Hasil Tes COVID-19',
                        'assets/hasil.jpg',
                        'Hasil Tes COVID-19',
                      ),
                      _buildMenuItem(
                        'EHAC',
                        'assets/ehac.jpg',
                        'EHAC',
                      ),
                    ]),
                    const SizedBox(height: 20),
                    _buildMenuRow([
                      _buildMenuItem(
                        'Riwayat Check-In',
                        'assets/riwayat.jpg',
                        'Riwayat Check-In',
                      ),
                      _buildMenuItem(
                        'Aturan Perjalanan',
                        'assets/perjalanan.jpg',
                        'Aturan Perjalanan',
                      ),
                      _buildMenuItem(
                        'Lihat Semuanya',
                        'assets/lihat.jpg',
                        'Lihat Semuanya',
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String featureName) {
    return SizedBox(
      width: 100,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 10),
            Text(
              featureName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
