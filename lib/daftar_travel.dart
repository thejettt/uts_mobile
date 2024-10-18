import 'package:flutter/material.dart';
import 'detail_travel1.dart'; // Import halaman detail travel 1
import 'detail_travel2.dart'; // Import halaman detail travel 2

class DaftarTravelPage extends StatelessWidget {
  final List<Map<String, String>> travelPackages = [
    {'name': 'Paket 1 Wisata Bali', 'price': 'Rp. 1.000.000'},
    {'name': 'Paket 2 Wisata Papua', 'price': 'Rp. 1.000.000'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Travel'),
        backgroundColor: Color(0xFF0E3F58),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'List Paket Wisata Travel',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: travelPackages.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF0E3F58),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 2,
                    child: ListTile(
                      title: Text(
                        travelPackages[index]['name']!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(travelPackages[index]['price']!),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Debugging to check if onTap is triggered
                        print('Item clicked: ${travelPackages[index]['name']}');
                        
                        // Cek paket wisata yang dipilih
                        if (travelPackages[index]['name'] == 'Paket 1 Wisata Bali') {
                          // Navigasi ke halaman detail Travel 1
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailTravel1(),
                            ),
                          );
                        } else if (travelPackages[index]['name'] == 'Paket 2 Wisata Papua') {
                          // Navigasi ke halaman detail Travel 2
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailTravel2(),
                            ),
                          );
                        }
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
