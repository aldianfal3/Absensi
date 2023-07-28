import 'package:absensi/ui/Keluar.dart';
import 'package:absensi/ui/Masuk.dart';
import 'package:absensi/ui/sidebar.dart';
import 'package:flutter/material.dart';

class absen extends StatelessWidget {
  const absen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: sidebar(),
        appBar: AppBar(
          title: Text('ABSEN HARIAN PRILUDE'),
          centerTitle: true,
          actions: [
            GestureDetector(
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => masuk()));
                    },
                    icon: Icon(Icons.login_outlined),
                    label: Text(
                      "Masuk",
                      style: TextStyle(fontSize: 20),
                    ))),
            SizedBox(
              width: 30,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Keluar()));
                },
                icon: Icon(Icons.logout),
                label: Text(
                  "Keluar",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              width: 300, // Lebar container
              height: 120, // Tinggi container
              // Warna latar belakang container
              padding: EdgeInsets.all(16), // Ruang padding di dalam container
              margin: EdgeInsets.all(16), // Ruang margin di luar container
              alignment:
                  Alignment.center, // Posisi tampilan teks di dalam container
              child: Column(
                children: [
                  Text(
                    'Nama : M.aldi ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Jam Masuk : 09:00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Status : Sakit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              width: 300, // Lebar container
              height: 120, // Tinggi container
              // Warna latar belakang container
              padding: EdgeInsets.all(16), // Ruang padding di dalam container
              margin: EdgeInsets.all(16), // Ruang margin di luar container
              alignment:
                  Alignment.center, // Posisi tampilan teks di dalam container
              child: Column(
                children: [
                  const Text(
                    'Nama : M.Galih ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Jam Masuk: 09:05',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Status : Hadir',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
