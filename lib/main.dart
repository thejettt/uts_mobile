import 'package:flutter/material.dart';
import 'daftar_travel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel E-Commerce',
      theme: ThemeData(
        primaryColor: Color(0xFF0E3F58),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0E3F58),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF0E3F58),
          ),
        ),
      ),
      routes: {
        '/': (context) => HomePage(),
        '/daftar': (context) => DaftarTravelPage(),
      },
      initialRoute: '/',
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel E-Commerce'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Selamat Datang di Travel E-Commerce',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 120,
              height: 120,
              child: Icon(
                Icons.directions_ferry,  // Mengganti gambar dengan icon bus
                size: 100,  // Menentukan ukuran ikon
                color: Color(0xFF0E3F58),  // Sesuaikan dengan warna tema
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/daftar');
              },
              child: Text('Ke Halaman Daftar Travel'),
            ),
          ],
        ),
      ),
    );
  }
}
