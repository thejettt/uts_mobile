import 'package:flutter/material.dart';

class DetailTravel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Travel'),
        backgroundColor: Color(0xFF0E3F58),  // Warna biru tema
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Paket 2 Wisata Papua',  // Mengubah teks menjadi Paket 2 Wisata Papua
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFF0E3F58),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paket 2 Wisata Papua',  // Informasi Paket 2 Wisata Papua
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Rp. 1.000.000',  // Harga paket
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Dalam wisata ini, pengunjung akan diajak mengunjungi berbagai destinasi terkenal di Papua, termasuk Raja Ampat dan pegunungan Jayawijaya.',  // Deskripsi tentang paket
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
