import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Twitter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text ('Twitter'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200, // Tinggi header
              width: double.infinity, // Lebar header mengisi layar
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/HEADER UPN - LATIHAN 8.png'), 
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 100,
                    left: 20,
                    child: Container(
                      width: 100, // Lebar foto profil
                      height: 100, // Tinggi foto profil
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3, // Ketebalan border
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/PP UPN - LATIHAN 6.png'), 
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    right: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement follow action
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black), // Warna button hitam
                      ),
                      child: Text(
                        'Follow',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'UPN Veteran Jawa Timur', // Nama
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '@upnvjt_official', // Username
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Rio Alghaniy Putra alias HUMAS UPN "VETERAN" JAWA TIMUR Kampus Bela Negara', // Bio
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Translate bio', // Translate Bio
                    style: TextStyle(
                      color: Colors.blue, // Warna teks biru
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
